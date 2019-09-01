const fs = require('fs');
const cp = require('child_process');
const crypto = require('crypto');
const path = require('path');
const url = require('url');

const http = require ('http');
const server = http.createServer(function (request, response) {

    var filePath = '.' + request.url;
    if (filePath == './')
        filePath = './index.html';

    var extname = path.extname(filePath);
    var contentType = 'text/html';
    switch (extname) {
        case '.js':
            contentType = 'text/javascript';
            break;
        case '.css':
            contentType = 'text/css';
            break;
        case '.json':
            contentType = 'application/json';
            break;
        case '.png':
            contentType = 'image/png';
            break;      
        case '.jpg':
            contentType = 'image/jpg';
            break;
        case '.wav':
            contentType = 'audio/wav';
            break;
    }

    fs.readFile(filePath, function(error, content) {
        if (error) {
            if(error.code == 'ENOENT'){
                fs.readFile('./404.html', function(error, content) {
                    response.writeHead(200, { 'Content-Type': contentType });
                    response.end(content, 'utf-8');
                });
            }
            else {
                response.writeHead(500);
                response.end('Sorry, check with the site admin for error: '+error.code+' ..\n');
                response.end(); 
            }
        }
        else {
            response.writeHead(200, { 'Content-Type': contentType });
            response.end(content, 'utf-8');
        }
    });

});

const WebSocket = require('ws');
const wss = new WebSocket.Server ({ noServer: true })

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

/*****************************************************/

/* 
    https://stackoverflow.com/questions/18052762/remove-directory-which-is-not-empty
*/

function deleteFile(dir, file) {
    return new Promise(function (resolve, reject) {
        var filePath = path.join(dir, file);
        fs.lstat(filePath, function (err, stats) {
            if (err) {
                return reject(err);
            }
            if (stats.isDirectory()) {
                resolve(deleteDirectory(filePath));
            } else {
                fs.unlink(filePath, function (err) {
                    if (err) {
                        return reject(err);
                    }
                    resolve();
                });
            }
        });
    });
};

function deleteDirectory(dir) {
    return new Promise(function (resolve, reject) {
        fs.access(dir, function (err) {
            if (err) {
                return reject(err);
            }
            fs.readdir(dir, function (err, files) {
                if (err) {
                    return reject(err);
                }
                Promise.all(files.map(function (file) {
                    return deleteFile(dir, file);
                })).then(function () {
                    fs.rmdir(dir, function (err) {
                        if (err) {
                            return reject(err);
                        }
                        resolve();
                    });
                }).catch(reject);
            });
        });
    });
};

/*****************************************************/

process.on ('SIGINT', exitHandler.bind (null, {exit: true}))
process.on ('uncaughtException', function (err) {
    console.log ('uncaughtException! Details: ' + err.stack)
})

String.prototype.replaceAll = function(search, replacement) {
  var target = this;
  return target.replace(new RegExp(search, 'g'), replacement);
};

Array.prototype.indexOfReg = function (search) {
     var arr = this
     for (var elm in arr) {
        if (arr [elm].match (search)) {
            d = new Object();
            d.message = arr [elm]
            d.lineno = arr.indexOf (arr [elm])
            return d
        }
    }
}

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
                            ws.send ("Compilation failed with the following error:\2Line 1: This does not look like Verilog!")
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
                        fs.mkdirSync (path.resolve (process.cwd(), 'logging', ws.unique_client), (err) => {
                            if (err) { throw err; }
                          })
                        fs.writeFileSync (path.resolve (process.cwd(), 'tempcode', ws.unique_client, 'code.v'), ws.verilogCode, 'utf8', function (err) {
                            if (err) { throw err; }
                        })

                        ws.send ("Processing Verilog code...")

                        cmd = 'cvc sim_modules/tb_ice40.sv tempcode/' + ws.unique_client + 
                              '/code.v -sv_lib sim_modules/svdpi.so -o tempcode/' + 
                              ws.unique_client + '/fpga'
                        
                        status = ''
                        error = []
                        err_reg = /error|fatal|warning/i
                        err_mod_rgx = /unresolved modules/i
                        try
                        {
                            ws.comStatus = cp.execSync (cmd).toString() 
                        }
                        catch (ex)
                        {
                            if (ex.stdout)
                            {
                                ws.comStatus = ex.stdout.toString();
                                error_split = ws.comStatus.split ('\n')
                                for (var i = 0; i < error_split.length; i++)
                                {
                                    if (error_split [i].match (err_reg)) { 
                                        error.push (error_split [i].match (err_reg).input) 
                                    }
                                    else if (error_split [i].match (err_mod_rgx)) {
                                        code_split = ws.verilogCode.split ("\n")
                                        module_name = error_split [i + 1]
                                        code_split.forEach (function (el) { if (el.match (module_name)) { error.push ("**tempcode/randomfilereplacement007/code.v(" + (code_split.indexOf (el)).toString() + ") [CUSTOM_ERROR] This module does not exist!") } })
                                    }   
                                }
                            }
                        }
                        // ws.comStatus.split ('\n').forEach (function (element) { if (element.match (err_reg)) { error.push (element.match (err_reg).input) } })

                        try {
                            yosys_out = cp.execSync ('yosys -p "synth_ice40 -top top -blif tempcode/' 
                                                     + ws.unique_client + '/temp.blif; delete top; read_blif tempcode/' + ws.unique_client + 
                                                     '/temp.blif; write_verilog tempcode/' + ws.unique_client + '/struct_code.v" tempcode/' 
                                                     + ws.unique_client + '/code.v -l tempcode/' + ws.unique_client + '/yosyslog')
                            fs.unlinkSync (path.resolve (process.cwd(), 'tempcode', ws.unique_client, 'yosyslog'))
                            ws.initYosys = true
                        }
                        catch (ex) {
                            yosys_out = fs.readFileSync (path.resolve (process.cwd(), 'tempcode', ws.unique_client, 'yosyslog'))
                            fs.unlinkSync (path.resolve (process.cwd(), 'tempcode', ws.unique_client, 'yosyslog'))
                            ws.initYosys = false

                            logarray = yosys_out.toString().split ("\n")
                            if (logarray.indexOfReg (/Error/i).message.match (ws.unique_client))    // Is a syntax error
                            {
                                related_error = logarray.indexOfReg (/Error/i).message
                            } else  // Is a mapping error
                            {
                                skippable_error_regex = /is not part of the design/i
                                if (!logarray.indexOfReg (/Error/i).message.match (skippable_error_regex))
                                {
                                    related_error = logarray [logarray.indexOfReg (/Error/i).lineno - 1]
                                    codeline = parseInt (related_error.match (/code\.v\:([0-9]+)/i)[1])
                                    if (logarray [logarray.indexOfReg (/Error/i).lineno].match (/Multiple edge sensitive/i))
                                    {
                                        error.push ('**tempcode/randomfilereplacement007/code.v(' + codeline + ") [SYNTHESIS_ERROR] No reset logic for attempted flip flop found.")
                                    }
                                    else
                                    {
                                        error.push ('**tempcode/randomfilereplacement007/code.v(' + codeline + ") [SYNTHESIS_ERROR] " + 
                                                        logarray [logarray.indexOfReg (/Error/i).lineno].replace ('ERROR: ', ''))
                                    }
                                }
                            }
                        }

                        if (error.length != '0')
                        {
                            modded_error = []
                            error.forEach (function (element) 
                                            { 
                                                modded_err_rgx = /\*\*tempcode\/[a-z0-9]+\/code\.v\(([0-9]+)\)/
                                                try {
                                                    num = parseInt (element.match (modded_err_rgx) [1]) - (element.includes ("module does not exist") ? 28 : 29)
                                                    modded_err_msg = element.replace (modded_err_rgx, 'Line ' + num.toString() + ": ")
                                                    modded_err_msg = modded_err_msg.replace ("tempcode/" + ws.unique_client + '/code.v', 'your code ')
                                                    modded_error.push (modded_err_msg)
                                                }
                                                catch (ex) {
                                                    console.log ("Cannot parse this error: " + element)
                                                    num = -1
                                                }
                                            }
                                          )
                            if (modded_error.length != '0')
                            {
                                deleteDirectory (path.resolve (process.cwd(), 'tempcode', ws.unique_client))
                                ws.send ("Compilation failed with the following error:\2" + modded_error.join ('\2'))
                                ws.close()
                            }
                        }
                        else
                        {
                            // Introduced Yosys-produced gate-level synthesis approach
                            ws.currentState = "SIMULATE"
                            var env = Object.create( process.env );

                            console.log ("Starting " + ws.unique_client)

                            // cp.execSync ('~/yosys-yosys-0.8/yosys -o tempcode/' + ws.unique_client + '/struct_code.v tempcode/' + ws.unique_client + '/temp.blif')

                            var args = ('+interp sim_modules/tb_struct_ice40.sv ' +
                                         'cells_sim.v ' + 'cells_map.v ' +
                                         'tempcode/' + ws.unique_client + '/struct_code.v -sv_lib sim_modules/svdpi.so').split (" ")

                            // ws.currentState = "SIMULATE"
                            // console.log ("Starting " + ws.unique_client)
                            // var args = ('+interp sim_modules/tb_ice40.sv tempcode/' + ws.unique_client + '/code.v -sv_lib sim_modules/svdpi.so').split (" ")
                            // var env = Object.create( process.env );

                            env.SVDPI_TO_PIPE='1';
                            env.SVDPI_FROM_PIPE='0';

                            // export SVDPI_TO_PIPE=1
                            // export SVDPI_FROM_PIPE=0

                            running_simulations [ws.unique_client] = cp.spawn ('cvc', args, { env: env });

                            // console.log (running_simulations.size())
                            ws.send ("Simulation successfully started!")

                            fs.writeFileSync (path.resolve (process.cwd(), 'logging', ws.unique_client, 'cvclog'), "CVC HAS STARTED ::: \n", 'utf8', function (err) {
                                if (err) { throw err; }
                            })

                            ws.error_caught = false

                            running_simulations [ws.unique_client].stdout.on ('data', (indata) => {
                                var data = indata.toString ('utf8').trim()
                                try {
                                    msgdata = data.replace ('\0', '')
                                    JSON.parse (msgdata)
                                    ws.send (msgdata)
                                }
                                catch (ex) {
                                    if (data.includes ("10 minutes exceeded"))
                                    {  
                                       ws.send ("TIME LIMIT EXCEEDED") 
                                    }
                                    else
                                    {
                                        ws.error_caught = true
                                        fs.appendFile (path.resolve (process.cwd(), 'logging', ws.unique_client, 'cvclog'), data, 'utf8', function (err) {
                                            if (err) { throw err; }
                                        })
                                    }
                                }
                            });

                            running_simulations [ws.unique_client].on ('exit', (code, signal) => {
                                ws.send ("END SIMULATION")
                                ws.close()
                            });
                        }
                            
                        break;

                    case "SIMULATE":    
                        running_simulations [ws.unique_client].stdin.write (message)
                        break;
                        
                }
              });
              ws.on ('close',
                        function close () 
                        {
                            if (running_simulations [ws.unique_client])
                            {
                                deleteDirectory (path.resolve (process.cwd(), 'tempcode', ws.unique_client))
                                deleteDirectory (path.resolve (process.cwd(), 'logging', ws.unique_client))
                                console.log ("Stopped " + ws.unique_client)
                                running_simulations [ws.unique_client].kill ('SIGTERM')
                                delete running_simulations [ws.unique_client]
                            }
                        }
                    )
        }
    );

server.on ('upgrade', function upgrade (request, socket, head) {
	const pathname = url.parse (request.url).pathname;
	if (pathname === '/270sim/wss') {
		wss.handleUpgrade (request, socket, head, function done (ws) {
			wss.emit ('connection', ws, request);
		});
	}
}); 

server.listen (80);
