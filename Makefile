# could add to CFLAGS to turn on warnings if you are using gcc
WARNS=-Wall

# change path if not running test from installed directory location
INCS=-Isrc
# maybe want -O<something> and/or -g
CFLAGS= -fPIC -m32 -D_GNU_SOURCE $(INCS)
LFLAGS= -G -shared -export-dynamic -melf_i386
FILEPATH=src/
OBJPATH=sim_modules/
FILES=$(FILEPATH)/svdpi_handler.c

# change to your compiler
CC=gcc
CVC=cvc

all: run

svdpi.o: $(FILEPATH)svdpi_handler.c
	$(CC) $(CFLAGS) -c $(FILEPATH)svdpi_handler.c -o $(FILEPATH)svdpi.o

svdpi: svdpi.o
	$(LD) $(LFLAGS) $(FILEPATH)svdpi.o -o $(OBJPATH)svdpi.so

run: svdpi
	$(CVC) +interp $(OBJPATH)tb_ice40.sv $(FILEPATH)example.v -sv_lib $(OBJPATH)svdpi.so

compile: 
	$(CVC) $(OBJPATH)tb_ice40.sv $(FILEPATH)example.v -sv_lib $(OBJPATH)svdpi.so -o fpga

clean:
	rm -rf *.o *.so
