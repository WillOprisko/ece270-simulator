const fs = require('fs');
const child_process = require('child_process');
const crypto = require('crypto');
const path = require('path');

const WebSocket = require('ws');
const wss = new WebSocket.Server ({port: 9876})

// process.stdin.resume();

function exitHandler (options, exitCode) {
    if (options.cleanup)
    {
        console.log ("Fatal SIGINT occurred")
        Object.keys (running_simulations).forEach ( function (elm) { 
            if (elm != "size") { 
                running_simulations [elm].kill ('SIGTERM')
            }
        } )
    }
    if (options.exit) process.exit()
}

process.on ('SIGINT', exitHandler.bind (null, {exit: true}))
process.on ('uncaughtException', function (err) {
    console.log ('uncaughtException! Details: ' + err.stack)
})

String.prototype.replaceAll = function(search, replacement) {
  var target = this;
  return target.replace(new RegExp(search, 'g'), replacement);
};

/*                                Expected Operation                          */
/*******************************************************************************
  
    - Receives a new WebSocket
    - Checks compilation with CVC without +interp
    - Error message? Send errors and close the WS
    - No errors? Start CVC with +interp option
    - Connect stdin and stdout of CVC to pipes
    - Let JS communicate with CVC using agreed-on format of data exchange
    - If WebSocket closes, kill the CVC simulation.
    - If internal error occurs, send alert to JS and close the connection

*******************************************************************************/

function getTime()
{
  var today = new Date();
  var date = today.getFullYear() + '-' + (today.getMonth() + 1) + '-' + today.getDate();
  var time = today.getHours() + ":" + (today.getMinutes() < 10 ? '0' + today.getMinutes() : today.getMinutes()) + ":" + (today.getSeconds() < 10 ? '0' + today.getSeconds() : today.getSeconds());
  return (date + ' ' + time);
}

function printTime (message)
{
  dateTime = getTime()
  console.log (dateTime + ' ::: ' + message)
}

running_simulations = new Object();
running_simulations.size = function() {
    var size = 0, key;
    for (key in running_simulations) {
        size += 1;
    }
    return size - 1;
};

wss.on
    ('connection', function connection(ws) 
        {
            ws.currentState = "INIT";

            ws.on('message', function incoming(message) {
                switch (ws.currentState)
                {
                    case "INIT":
                        code = message.replaceAll (/\2/, '\n');
                        if (code.includes ("give us a demo please"))
                        {
                            ws.verilogCode = fs.readFileSync('sim_modules/fpgademo.v', 'utf8', function(err, data) {
                                if (err) throw err;
                            });
                        }
                        else if (code == "")
                        {
                            ws.send ("Error: no code found.")
                            ws.close()
                        }
                        else if (!code.match (/(module top ?[^\n]+)/))
                        {
                            ws.send ("Compilation failed with the following error:\2Line 1: Please enter some Verilog to test!")
                            ws.close()
                        }
                        else
                        {
                            // Add char parameters
                            paramdata = "\nparameter char0 = 8'b00111111;\n\
                            parameter char1 = 8'b00000110;\n\
                            parameter char2 = 8'b01011011;\n\
                            parameter char3 = 8'b01001111;\n\
                            parameter char4 = 8'b01100110;\n\
                            parameter char5 = 8'b01101101;\n\
                            parameter char6 = 8'b01111101;\n\
                            parameter char7 = 8'b00000111;\n\
                            parameter char8 = 8'b01111111;\n\
                            parameter char9 = 8'b01101111;\n\
                            parameter charA = 8'b01110111;\n\
                            parameter charB = 8'b01111100;\n\
                            parameter charC = 8'b00111001;\n\
                            parameter charD = 8'b01011110;\n\
                            parameter charE = 8'b01111001;\n\
                            parameter charF = 8'b01110001;\n\
                            parameter charG = 8'b01101111;\n\
                            parameter charH = 8'b01110110;\n\
                            parameter charI = 8'b00000100;\n\
                            parameter charJ = 8'b00001110;\n\
                            parameter charL = 8'b00111000;\n\
                            parameter charN = 8'b01010100;\n\
                            parameter charO = 8'b01011100;\n\
                            parameter charP = 8'b01110011;\n\
                            parameter charR = 8'b01010000;\n\
                            parameter charS = 8'b01101101;\n\
                            parameter charU = 8'b00111110;\n\
                            parameter charY = 8'b01101110;\n".replaceAll (/ /, "").replaceAll ("parameterchar", "parameter char")
                            ws.verilogCode = code.replace (/(module top ?[^\n]+)/, "$1" + paramdata)
                            // ws.verilogCode = code
                        }

                        var hash = crypto.createHash ('sha256')

                        hash.update (ws.verilogCode + (new Date().getTime()).toString())
                        ws.unique_client = hash.digest ('hex')

                        fs.mkdirSync (path.resolve (process.cwd(), 'tempcode', ws.unique_client), (err) => {
                            if (err) { throw err; }
                          })
                        fs.writeFileSync (path.resolve (process.cwd(), 'tempcode', ws.unique_client, 'code.v'), ws.verilogCode, 'utf8', function (err) {
                            if (err) { throw err; }
                        }
                        )

                        ws.send ("Processing Verilog code...")
                        cmd = 'cvc sim_modules/tb_ice40.sv tempcode/' + ws.unique_client + 
                              '/code.v -sv_lib sim_modules/svdpi.so -o tempcode/' + 
                              ws.unique_client + '/fpga'
                        
                        status = ''
                        error = []
                        err_reg = /error|fatal|warning/i
                        try
                        {
                            ws.comStatus = child_process.execSync (cmd).toString() 
                        }
                        catch (ex)
                        {
                            ws.comStatus = ex.stdout.toString();
                        }
                        ws.comStatus.split ('\n').forEach (function (element) { if (element.match (err_reg)) { error.push (element.match (err_reg).input) } })

                        if (error.length != '0')
                        {
                            modded_error = []
                            error.forEach (function (element) 
                                            { 
                                                modded_err_rgx = /\*\*tempcode\/[a-z0-9]+\/code\.v\(([0-9]+)\)/
                                                num = parseInt (element.match (modded_err_rgx) [1]) - 29
                                                modded_err_msg = element.replace (modded_err_rgx, 'Line ' + num.toString() + ": ")
                                                modded_err_msg = modded_err_msg.replace ("tempcode/" + ws.unique_client + '/code.v', 'your code ')
                                                modded_error.push (modded_err_msg)
                                            }
                                          )
                            fs.unlinkSync (path.resolve (process.cwd(), 'tempcode', ws.unique_client, 'code.v'));
                            fs.rmdir (path.resolve (process.cwd(), 'tempcode', ws.unique_client), (err) => {
                                if (err) { throw err; }
                            })
                            ws.send ("Compilation failed with the following error:\2" + modded_error.join ('\2'))
                            ws.close()
                        }
                        else
                        {
                            ws.currentState = "SIMULATE"
                            console.log ("Starting " + ws.unique_client)
                            var args = ('+interp sim_modules/tb_ice40.sv tempcode/' + ws.unique_client + '/code.v -sv_lib sim_modules/svdpi.so').split (" ")
                            var cp = require('child_process');
                            var env = Object.create( process.env );

                            env.SVDPI_TO_PIPE='1';
                            env.SVDPI_FROM_PIPE='0';

                            // export SVDPI_TO_PIPE=1
                            // export SVDPI_FROM_PIPE=0

                            running_simulations [ws.unique_client] = cp.spawn ('cvc', args, { env: env });

                            // console.log (running_simulations.size())
                            ws.send ("Simulation successfully started!")

                            running_simulations [ws.unique_client].stdout.on ('data', (indata) => {
                                var data = indata.toString ('utf8').trim()
                                try {
                                    msgdata = data.replace ('\0', '')
                                    JSON.parse (msgdata)
                                    ws.send (msgdata)
                                }
                                catch {
                                    // printTime (data)
                                }
                            });

                            running_simulations [ws.unique_client].on ('exit', (code, signal) => {
                                ws.send ("END SIMULATION")
                                ws.close()
                            });
                        }
                            
                        break;

                    case "SIMULATE":
                            if (message.includes ("END SIMULATION"))
                            {
                                fs.unlinkSync (path.resolve (process.cwd(), 'tempcode', ws.unique_client, 'code.v'));
                                fs.unlinkSync (path.resolve (process.cwd(), 'tempcode', ws.unique_client, 'fpga'));
                                fs.rmdirSync (path.resolve (process.cwd(), 'tempcode', ws.unique_client), (err) => {
                                    if (err) { throw err; }
                                  })
                                delete running_simulations [ws.unique_client]
                                ws.close();
                            }
                            else
                            {
                                running_simulations [ws.unique_client].stdin.write (message)
                            }
                        break;
                        
                }
              });
              ws.on ('close',
                        function close () 
                        {
                            if (running_simulations [ws.unique_client])
                            {
                                fs.unlinkSync (path.resolve (process.cwd(), 'tempcode', ws.unique_client, 'code.v'));
                                fs.unlinkSync (path.resolve (process.cwd(), 'tempcode', ws.unique_client, 'fpga'));
                                fs.rmdirSync (path.resolve (process.cwd(), 'tempcode', ws.unique_client), (err) => {
                                    if (err) { throw err; }
                                  })
                                console.log ("Stopped " + ws.unique_client)
                                running_simulations [ws.unique_client].kill ('SIGTERM')
                                delete running_simulations [ws.unique_client]
                            }
                        }
                    )
        }
    );
