var shiftKey = false
var down = false
var ctrldown = false;

var STATUS_READY = "#eaeaea"
var SIM_RUNNING  = "#e0f0e0"
var CODE_ERROR   = "#f0e0e0"
var SERVER_DOWN  = "#eecccc"
var DEMO_RUNNING = "#dafada"
var AUTOSAVE_TIME = 120000

var lightModeTheme = {"STATUS_READY" : "#eaeaea",
                            "SIM_RUNNING" : "#e0f0e0",
                            "CODE_ERROR" : "#f0e0e0",
                            "SERVER_DOWN" : "#eecccc",
                            "DEMO_RUNNING" : "#dafada"}

var darkModeTheme  = {"STATUS_READY" : "#444",
                            "SIM_RUNNING" : "#464",
                            "CODE_ERROR" : "#644",
                            "SERVER_DOWN" : "#533",
                            "DEMO_RUNNING" : "#353"}

var pending = null;

CURRENT_STATUS = ["STATUS_READY", "Status: Ready"]

var darkModeSetting = localStorage.ice40DarkMode == "false" ? true : false;
if (localStorage.simulateOnSave == "true")
{
  simulateOnSave = false
  toggleInstantSim()
}
else
{
  simulateOnSave = true
  toggleInstantSim()
}
button = document.getElementsByClassName ("btn-info")[0]
button.isMouseOver = false

function change_password () {
  $.post(
            window.location.href + "cgi-bin/passwd.cgi",
            {password: document.getElementById("passwd").valueOf().value},
            function (response)
            {
              if (response == "SUCCESS\n")
                alert ("Password successfully changed!")
              else if (response == "INVALID\n")
                alert ("Your username does not belong to the student list. Tell Niraj to add you.")
              else if (response == "UNIXERROR\n")
                alert ("Fatal CGI script failure. Please contact course staff.")
            }
        )
}

function button_text_enter (event) {
  button = document.getElementsByClassName ("btn-info")[0]
  button.isMouseOver = true
	if (event.ctrlKey && button.innerHTML == "Reload Code")
        button.innerHTML = "Load Template"
}
function button_text_leave (event) {
  button = document.getElementsByClassName ("btn-info")[0]
  button.isMouseOver = false
    if (localStorage.lastSavedCode)
  		button.innerHTML = "Reload Code"
  	else
  		button.innerHTML = "Load Template"
}

document.getElementsByClassName ("btn-info")[0].onmouseover =  function () { button_text_enter(event) }
document.getElementsByClassName ("btn-info")[0].onmouseenter = function () { button_text_enter(event) }
document.getElementsByClassName ("btn-info")[0].onmouseleave = function () { button_text_leave(event) }

document.onkeydown =
function (e) {
  ctrldown = e.ctrlKey
  if (down)
    return false
  load_button = document.getElementById ("btn-load")
  if (!(document.activeElement.className == "ace_text-input") && !(document.getElementById("overlay").style.display == "block") && !(document.getElementById("overlay_2").style.display == "block"))
  {
    button = document.getElementsByClassName ("btn-info")[0]
    if (e.ctrlKey && e.altKey && e.which == 45)
    {
      ctrl_alt_del();
      setTimeout (500, ctrl_alt_del);
      down = true;
      return
    }
    if (!(e.ctrlKey) && e.which >= 48 && e.which <= 57)
    {
      toggle_button (e, e.which - 48)
      down = true
    }
    else if (!(e.ctrlKey) && (e.which >= 65 && e.which <= 70) || (e.which >= 87 && e.which <= 90))
    {
      toggle_button (e, e.code)
      down = true
    }
    else if (button.isMouseOver == true && e.ctrlKey)
      load_button.innerHTML = "Load Template"
  }
  else if (document.activeElement.id == "autosave_interval" && e.which == 13)
    autosave_interval()
  else if (document.activeElement.id == "passwd" && e.which == 13)
    change_password()
  else
  {
    if (e.ctrlKey && e.which == 83)
    {
      e.preventDefault()
      autosave_call (true)
      if (simulateOnSave)
        ice40hx8k_handler()
      down = true
    }
  }
  if (e.which == 27 && document.getElementById("overlay").style.display == "block")
    closeOverlay()
  else if (e.which == 27 && document.getElementById("overlay_2").style.display == "block")
  {
    closeSettings()
    if (localStorage.ice40DarkMode == "false")
    {
      while (document.getElementsByClassName ("ace-line-error-dark").length != 0)
      document.getElementsByClassName ("ace-line-error-dark")[0].classList.replace ("ace-line-error-dark", "ace-line-error-light")
    }
    else
    {
      while (document.getElementsByClassName ("ace-line-error-light").length != 0)
      document.getElementsByClassName ("ace-line-error-light")[0].classList.replace ("ace-line-error-light", "ace-line-error-dark")
    }
  }
  else if (e.ctrlKey && e.which == 79 && document.getElementById("overlay_2").style.display != "block")
  {
    e.preventDefault()
    openVerilog()
  }
  else if (e.which == 46)
  {
    e.preventDefault()
    clearItem()
  }
}

document.onkeyup =
function (e) {
  if (e.ctrlKey && e.altKey && e.which == 45)
    {
      ctrl_alt_del();
      setTimeout (500, ctrl_alt_del);
      return
    }
  else if (e.ctrlKey || e.metaKey)
    return false
  if (localStorage.lastSavedCode)
  {
    load_button.innerHTML = "Reload Code"
  }
  down = false
  ctrldown = e.ctrlKey
  if (!(document.activeElement.className == "ace_text-input"))
  {
    if (e.which >= 48 && e.which <= 57)
    toggle_button (e, e.which - 48)
    else if ((e.which >= 65 && e.which <= 70) || (e.which >= 87 && e.which <= 90))
    toggle_button (e, e.code)
  }
  else if (!(e.shiftKey) && !(e.ctrlKey) && !(e.altKey) && e.which == 27)
  document.activeElement.blur()
  else if (!(e.shiftKey) && !(e.ctrlKey) && !(e.altKey) && e.which == 67)
  editor.focus()
};

function ctrl_alt_del (event, key)
{
  var cad = [[document.getElementById ("key0"),
    document.getElementById ("text0")], [document.getElementById ("key3"),
    document.getElementById ("text3")], [document.getElementById ("KeyW"),
    document.getElementById ("textW")]];
  
  for (var i = 0; i < 3; i++)
  {
    key_element = cad [i][0];
    text_element = cad [i][1];
    x_loc = parseInt (key_element.getAttribute ("x"))
    y_loc = parseInt (key_element.getAttribute ("y"))
    cur_width =  parseInt (key_element.getAttribute ("width"))
    cur_height = parseInt (key_element.getAttribute ("height"))
  
    if (key_element.getAttribute ("pressed") == "true")
    {
      key_element.setAttribute ("x", x_loc - 10)
      key_element.setAttribute ("y", y_loc - 10)
      key_element.setAttribute ("width", cur_width + 20)
      key_element.setAttribute ("height", cur_height + 20)
      key_element.setAttribute ("pressed", false)
      text_element.setAttribute ("font-size", 28)
      send_inputs()
    }
    else if (key_element.getAttribute ("pressed") == "false")
    {
      key_element.setAttribute ("x", x_loc + 10)
      key_element.setAttribute ("y", y_loc + 10)
      key_element.setAttribute ("width", cur_width - 20)
      key_element.setAttribute ("height", cur_height - 20)
      key_element.setAttribute ("pressed", true)
      text_element.setAttribute ("font-size", 24)
      send_inputs()
    }
  }

}

function toggle_button (event, key)
{
  if (event.ctrlKey && event.shiftKey)
  return false;

  if (event.keyCode >= 48 && event.keyCode <= 57)
  {
    key_element = document.getElementById ("key" + key)
    text_element = document.getElementById ("text" + key)
  }
  else if (event.keyCode >= 65 && event.keyCode <= 90)
  {
    key_element = document.getElementById (key)
    text_element = document.getElementById ("text" + key [key.length - 1])
  }
  else if (event.type.includes ("mouse"))
  {
    if (key < 10)
    {
      key_element = document.getElementById ("key" + key)
      text_element = document.getElementById ("text" + key)
    }
    else
    {
      keymap = {10: "A", 11: "B", 12: "C", 13: "D", 14: "E", 15: "F", 16: "W", 17: "X", 18: "Y", 19: "Z"}
      key_element = document.getElementById ("Key" + keymap [key])
      text_element = document.getElementById ("text" + keymap [key])
    }
  }

  x_loc = parseInt (key_element.getAttribute ("x"))
  y_loc = parseInt (key_element.getAttribute ("y"))
  cur_width =  parseInt (key_element.getAttribute ("width"))
  cur_height = parseInt (key_element.getAttribute ("height"))
  // shiftKey = event.shiftKey

  if ((key_element.getAttribute ("pressed") == "true" && (!shiftKey || event.type == "mousedown" || event.type == "keydown")))
  {
    key_element.setAttribute ("x", x_loc - 10)
    key_element.setAttribute ("y", y_loc - 10)
    key_element.setAttribute ("width", cur_width + 20)
    key_element.setAttribute ("height", cur_height + 20)
    key_element.setAttribute ("pressed", false)
    text_element.setAttribute ("font-size", 28)
    shiftKey = false
    send_inputs()
  }
  else if (key_element.getAttribute ("pressed") == "false" && (event.type == "mousedown" || event.type == "keydown"))
  {
    key_element.setAttribute ("x", x_loc + 10)
    key_element.setAttribute ("y", y_loc + 10)
    key_element.setAttribute ("width", cur_width - 20)
    key_element.setAttribute ("height", cur_height - 20)
    key_element.setAttribute ("pressed", true)
    text_element.setAttribute ("font-size", 24)
    shiftKey = event.shiftKey
    send_inputs()
  }
}

function send_inputs()
{
  buttonmap = "0123456789ABCDEFWXYZ"
  inputs = document.getElementsByClassName ("inputbutton")

  for (var idx in inputs)
  {
    button = document.getElementById (inputs [idx].id)
    if (button == null)
    break
    replacement = button.getAttribute ("pressed") == "false" ? "f" : "t"
    buttonmap = buttonmap.replace (button.id [button.id.length - 1], replacement)
  }
  if (typeof ws == "undefined" || ws.readyState == ws.CLOSED)
  return false
  ws.send (buttonmap)
}

var lftred = "";
var rgtred = "";
var rgbled = "";

function set_outputs (json_out)
{
  /*  {LFTRED: x, RGTRED: x, RGBLED: x, SS7: x, SS6: x, SS5: x ... SS0: x}  */
  lftred = document.getElementsByClassName ("lftred")
  rgtred = document.getElementsByClassName ("rgtred")
  rgbled = document.getElementById ("rgbled")

  for (var i = 7; i >= 0; i = i - 1)
  {
    ss = document.getElementsByClassName ("ss" + i.toString() + "_line")
    for (var j = 7; j >= 0; j = j - 1)
    {
      if ((parseInt (json_out ["SS" + i]) & Math.pow (2, (7 - j))) > 0)
      ss [j].setAttribute ("stroke", "#f00")
      else
      ss [j].setAttribute ("stroke", "#222")
    }

    if ((parseInt (json_out ["LFTRED"]) & Math.pow (2, i)) > 0)
    lftred [i].setAttribute ("fill", "#f00")
    else
    lftred [i].setAttribute ("fill", "#300")

    if ((parseInt (json_out ["RGTRED"]) & Math.pow (2, i)) > 0)
    rgtred [i].setAttribute ("fill", "#f00")
    else
    rgtred [i].setAttribute ("fill", "#300")
  }

  color = "#"

  /****************************************************************************************/
  //  DO NOT REMOVE
  //     PWM code
  //     red = (Math.round (parseFloat (json_out ["REDLED"]) * 256)).toString (16)
  //     if (red ["length"] == 1)
  //         red = "0" + red
  //     else if (red == "100")
  //         red = "ff"
  //     color += red

  //     green = (Math.round (parseFloat (json_out ["GRNLED"]) * 256)).toString (16)
  //     if (green ["length"] == 1)
  //         green = "0" + green
  //     else if (green == "100")
  //         green = "ff"
  //     color += green

  //     blue = (Math.round (parseFloat (json_out ["BLULED"]) * 256)).toString (16)
  //     if (blue ["length"] == 1)
  //         blue = "0" + blue
  //     else if (blue == "100")
  //         blue = "ff"
  //     color += blue
  /****************************************************************************************/

  // Regular dataflow code

  color += json_out ["REDLED"] > 0 ? "ff" : "00";
  color += json_out ["GRNLED"] > 0 ? "ff" : "00";
  color += json_out ["BLULED"] > 0 ? "ff" : "00";

  if (color == "#000")
  color = "#111"
  //     console.log (color)
  rgbled.setAttribute ("fill", color)
}

// Testing function
// function ice40hx8k_handler ()
// {
//     ws = new WebSocket ("ws://" + window.location.hostname + "/270sim/wss")
//     ws.onmessage = function (event)
//     {
//         console.log (event.data)
//         ws.send (parseInt (event.data) + 1)
//     }
//     return false
// }

var ws;
var errors = [];
var error_id = [];
var time;
function ice40hx8k_handler ()
{
  //************** REMOVE WHEN DONE! *******************//
  // window.alert ("I'm so sorry, I'm not ready yet!")
  // return false
  //****************************************************//

  time = new Date().getTime() / 1000
  update_status ("STATUS_READY", "Status: Ready")

  $.get({url: "270sim_source.v", cache: false}, function(data) {
    codebox = editor.getValue()
    if (codebox.includes ("module") && codebox != data)
    localStorage.setItem ("lastSavedCode", codebox)
  });

  if (typeof ws != "undefined" && ws.readyState == ws.OPEN) {
    ws.onmessage = function () {}
    ws.onclose = function () {}
    ws.close()
    set_outputs (JSON.parse ('{"LFTRED": 0, "RGTRED": 0, "RGBLED": 0, "SS7": 0, "SS6": 0, \
    "SS5": 0, "SS4": 0, "SS3": 0, "SS2": 0, "SS1": 0, "SS0": 0}'))
  }
  ws = new WebSocket("ws://" + window.location.hostname + "/270sim/wss")
  var messages = ""
  ws.onmessage = function (event)
  {
    // editor.getSession().clearAnnotations ()
    if (event.data.includes ("Processing Verilog code..."))
      messages = event.data + "\n"

    else if (event.data.includes ("Simulation successfully started!") || (event.data.includes ("warning") && !event.data.includes ("Error")))
    {
      editor.getSession().clearAnnotations()
      for (var id in error_id)
      {
        editor.session.removeMarker (error_id [id])
      }
      update_status ("SIM_RUNNING", "Status: Simulation is running")
      messages += event.data.replace (/\2/g, "\n")
      // window.alert (messages)
      messages = ""
      errors = null
      error_id = []
    }
    else if (event.data.includes ("Error") || event.data.includes ("failed"))
    {
      for (var id in error_id)
      editor.session.removeMarker (error_id [id])
      messages = event.data.split ('\2')
      errors = []
      for (var elm in messages)
      {
        if (messages [elm].startsWith ("Line"))
        {
          var data = messages [elm].replace ("Line ", "").replace (":", "").split (" ")
          var num = data [0]
          var msg = data.slice (1, data.length).join (" ")
          errors.push ({
            row: (num - 1).toString(),
            column: 0,
            text: msg,
            type: "error"
          });
          error_id.push (editor.session.addMarker(new Range(num - 1, 0, num - 1, 1), localStorage.ice40DarkMode == "true" ? "ace-line-error-dark" : "ace-line-error-light", "fullLine"));
        }
      }
      editor.getSession().setAnnotations (errors)
      update_status ("CODE_ERROR", "Status: Error in code")
      messages = ""
      compile_failed = true
      return false
    }

    else
    {
      // console.log ((1 / ((new Date().getTime() / 1000) - time)).toString() + " Hz")
      // time = new Date().getTime() / 1000
      try
      {
        set_outputs (JSON.parse (event.data))
      }
      catch
      {
        console.log (event.data)
      }
    }
  }
  ws.onopen = function ()
  {
    ws.send (editor.getValue().replace (/\n/g, "\2"))
    send_inputs()
  }
  ws.onclose = function (evt)
  {
    if (!errors)
    {
      if (evt.code == 1006)
      {
        update_status ("SERVER_DOWN", "Status: Server is down")
      }
      this.pending = setTimeout (function () { update_status ("STATUS_READY", "Status: Ready") }, 1000);
    }
  }
  return false
}

var sample;
function load_template(e) {
  if (e.ctrlKey)
  {
    $.get({url: "270sim_source.v", cache: false}, function(data) {
      editor.setValue (data, -1);
    });
  }
  if (window.localStorage.lastSavedCode)
  {
    editor.setValue (window.localStorage.lastSavedCode, -1);
  }
  else
  {
    $.get({url: "270sim_source.v", cache: false}, function(data) {
      editor.setValue (data, -1);
    });
  }
}

function toggle_information (pos)
{
  var descbar = document.getElementById ("description-navbar")
  if (pos == '15vh')
  {
    var id = setInterval (reduce_padding, 10)
    function reduce_padding ()
    {
      if (descbar.style ['paddingBottom'] == '0vh')
      clearInterval (id);
      else
      descbar.style ['paddingBottom'] = (parseInt (descbar.style ['paddingBottom'].replace ('vh', '')) - 1).toString() + 'vh'
    }
  }
  else
  {
    var id = setInterval (incr_padding, 10)
    function incr_padding ()
    {
      if (descbar.style ['paddingBottom'] == '15vh')
      clearInterval (id);
      else
      descbar.style ['paddingBottom'] = (parseInt (descbar.style ['paddingBottom'].replace ('vh', '')) + 1).toString() + 'vh'
    }
  }
}

var selected_section = -1;
var descbar = document.getElementById ("description-navbar")
descbar.style ['paddingBottom'] = '0vh'

function rickroll() { window.open ('https://youtu.be/dQw4w9WgXcQ?t=85') } // :)

function display_info (sect)
{
  var p_elm = document.getElementById ("desctext")

  if (descbar.style ['paddingBottom'] == '15vh' && sect == selected_section)
  {
    toggle_information ('15vh')
  }
  else if (descbar.style ['paddingBottom'] == '0vh')
  {
    toggle_information ('0vh')
  }

  selected_section = sect
  switch (sect)
  {
    case 0:
    p_elm.innerHTML = "This simulator for ECE 270 was created by Niraj Menon initially as a personal project \
    but has since turned into an extremely useful tool for ECE 270 students wishing to avoid \
    late nights in lab working on the physical board. "
    break;
    case 1:
    p_elm.innerHTML = "When you click Simulate or Demo, you're sending a message back to the server, where a running node.js WebSocket server receives the code (or demo request),\
    and processes it. If there are errors, it reports them back to you, and quits. If not, it sets up a <a href='http://www.tachyon-da.com/what-is-cvc/'>CVC</a> simulation\
    using the code you sent, and waits for either you to send inputs, or the outputs to start changing. Side note: The Ace code editor you're using has some pretty great shortcuts.\
    Check them out <a href='https://github.com/ajaxorg/ace/wiki/Default-Keyboard-Shortcuts'>here.</a>"
    break;
    case 2:
    p_elm.innerHTML = "Enter your code in the editor below. Ensure that you include the top module and that its name is top. \
    Include any other modules referenced in your code, and then hit Simulate. Change the inputs to see the expected behavior of the board! \
    To include more modules, simply paste them one after the other into the textbox.\
    It's okay if you don't get it. <p id='nevergonnagiveyouup' onclick='javascript:rickroll()' style='display: inline; text-decoration: none; cursor: pointer; color: #444'>Don't give up!</p>"
    document.getElementById ("nevergonnagiveyouup").style ['color'] = CURRENT_FONT_COLOR
    break;
    case 3:
    p_elm.innerHTML = "The simulator couldn't have been made possible without the guidance and support of my fellow UTAs, GTAs, my overly critical friends in ECE, numerous posts on StackOverflow, Reddit, Mozilla \
    Web Docs and, of course - Rick."
    break;
    case 4:
    p_elm.innerHTML = "Very simple - there is obviously no code collected for any purpose on this site. \
    However, you must take care to not plagiarize code from others."
    break;
    case 5:
    p_elm.innerHTML = "Since this is meant for University use, the source code for the server will not be made available. However, I do have plans for making an open-source, web-based, multi-target Verilog simulator."
    break;
    default:
    alert ("Nah don't mess with this pls")
  }
}

window.onbeforeunload = function(){
  $.get({url: "270sim_source.v", cache: false}, function(data) {
    codebox = editor.getValue()
    if (codebox.includes ("module"))
    localStorage.setItem ("lastSavedCode", codebox)
  });

  window.localStorage.ice40DarkMode = darkModeSetting
  window.localStorage.simulateOnSave = simulateOnSave
  window.localStorage.evalboardtheme = document.getElementById ("evalthemeselector").value
  clearInterval (autosaver)
  alert = function () {}
  reset_handler()
};

autosaver = setInterval (function () { autosave_call (false) }, AUTOSAVE_TIME);
var opacityChange;
function autosave_call (opt)
{
  timestamp = 'lastSavedCode_' + new Date().toLocaleString()
  document.getElementById ("savedstat").style ['opacity'] = 4
  if (editor.getValue().includes ("module"))
  localStorage [timestamp] = editor.getValue()
  timestamp = timestamp.slice (14)
  document.getElementById ("savedstat").innerHTML = "Saved to " + timestamp;
  opacityChange = setInterval (changeTextOpacity, 50)
}

function changeTextOpacity ()
{
  if (document.getElementById ("savedstat").style ['opacity'] == 0)
  {
    // console.log ('cleared')
    clearInterval (opacityChange)
  }
  else
  {
    // console.log ('changing')
    document.getElementById ("savedstat").style ['opacity'] -= 0.1
  }
}

function saveVerilog()
{
  uriContent = "data:application/octet-stream," + encodeURIComponent(editor.getValue());
  document.getElementById ("downlink").href = uriContent
  document.getElementById ('downlink').click()
}

function stop_handler ()
{
  if (typeof ws != "undefined" && ws.readyState == ws.OPEN)
  {
    ws.onclose = function () {}
    ws.close()
    update_status ("CODE_ERROR", "Status: Simulation stopped")
    function callback_1 ()
    {
      update_status ("STATUS_READY", "Status: Ready")
    }
    this.pending = setTimeout (callback_1, 1100)
    // alert ("Simulation has been stopped.")
  }
}

function reset_handler ()
{
  if (typeof ws != "undefined" && ws.readyState == ws.OPEN)
  {
    ws.onclose = function () {}
    ws.close()
    // alert ("Simulation has been reset.")
    update_status ("CODE_ERROR", "Status: Simulation reset")
    function callback_1 ()
    {
      update_status ("STATUS_READY", "Status: Ready")
    }
    this.pending = setTimeout (callback_1, 1100)
  }
  editor.getSession().clearAnnotations()
  for (var id in error_id)
  {
    editor.session.removeMarker (error_id [id])
  }
  set_outputs (JSON.parse ('{"LFTRED": 0, "RGTRED": 0, "RGBLED": 0, "SS7": 0, "SS6": 0, \
  "SS5": 0, "SS4": 0, "SS3": 0, "SS2": 0, "SS1": 0, "SS0": 0}'))
}

function demo_handler ()
{
  //     time = new Date().getTime() / 1000

  if (typeof ws != "undefined" && ws.readyState == ws.OPEN)
  {
    ws.onmessage = function () {}
    ws.onclose = function () {}
    ws.close()
    set_outputs (JSON.parse ('{"LFTRED": 0, "RGTRED": 0, "RGBLED": 0, "SS7": 0, "SS6": 0, \
    "SS5": 0, "SS4": 0, "SS3": 0, "SS2": 0, "SS1": 0, "SS0": 0}'))
  }

  ws = new WebSocket("ws://" + window.location.hostname + "/270sim/wss")
  ws.onmessage = function (event)
  {
    if (event.data == "Processing Verilog code...")
    messages = event.data

    else if (event.data.includes ("Compiling VVP ...") || event.data == "Simulation successfully started!" ||
    event.data == "Error: no code found." || event.data.includes ("failed") || event.data.includes ("warning"))
    {
      messages += (event.data).replace (/\2/g, "\n")
      messages = ""
    }

    else
    {
      try
      {
        set_outputs (JSON.parse (event.data))
      }
      catch
      {
        console.log (event.data)
      }
    }
  }
  ws.onopen = function ()
  {
    editor.getSession().clearAnnotations()
    for (var id in error_id)
    {
      editor.session.removeMarker (error_id [id])
    }
    ws.send("give us a demo please")
    send_inputs()

    if (editor.getValue().includes ("module"))
    localStorage.setItem ("lastSavedCode", editor.getValue())

    $.get({url: "demostuff.txt", cache: false}, function(data) {
      editor.setValue (data, -1)
    });
  }
  ws.onclose = function (evt)
  {
    if (evt.code == 1006)
    {
      console.log (evt.code)
      update_status ("SERVER_DOWN", "Status: Server is down")
    }
    this.pending = setTimeout (function () { update_status ("STATUS_READY", "Status: Ready") }, 1000);
  }
  update_status ("DEMO_RUNNING", "Status: Running demo simulation")
  return false
}

function update_status (color, message)
{
  clearTimeout (pending)
  CURRENT_STATUS = [color, message]
  if (localStorage.ice40DarkMode == "true")
  {
    document.getElementById ("status-navbar").style ['background-color'] = darkModeTheme [color]
    document.getElementById ("status-text").innerHTML = message
  }
  else
  {
    document.getElementById ("status-navbar").style ['background-color'] = lightModeTheme [color]
    document.getElementById ("status-text").innerHTML = message
  }
}

function codescroll (event)
{
  if (document.activeElement.className == "ace_text-input" && event.ctrlKey)
  {
    event.preventDefault()
    if (event.deltaY > 0)
    {
      document.getElementById('codemirror_box').style.fontSize = (parseFloat (document.getElementById('codemirror_box').style.fontSize.replace ("px", "")) - 0.5).toString() + "px"
    }
    else
    {
      document.getElementById('codemirror_box').style.fontSize = (parseFloat (document.getElementById('codemirror_box').style.fontSize.replace ("px", "")) + 0.5).toString() + "px"
    }
  }
}

// Overlay functions

function loadVerilog()
{
  selector = document.getElementsByName ("project_list")[0]
  selectedIndex = selector.selectedIndex
  if (selectedIndex >= 0)
  editor.setValue (selector.item (selectedIndex).value, -1)
  closeOverlay()
  return false
}
function clearStorage ()
{
  selector = document.getElementsByName ("project_list")[0]
  for (var elm in localStorage)
  if (elm != "lastSavedCode")
  localStorage.removeItem (elm)
  populateSelector()
}
function clearItem ()
{
  selector = document.getElementsByName ("project_list")[0]
  selectedIndex = selector.selectedIndex
  localStorage.removeItem ("lastSavedCode_" + selector.options [selectedIndex].textContent)
  selector.remove (selectedIndex)
  selector.selectedIndex = selectedIndex + 1
  populateSelector()
  return false
}

function populateSelector()
{
  selector = document.getElementsByName ("project_list")[0]
  selector.options.length = 0
  var el = document.createElement ("option")
  el.textContent = "Last recorded session";
  el.value = localStorage ["lastSavedCode"];
  selector.appendChild (el);

  keys = []; ct = 0;
  for (var elm in localStorage)
  {
    if (elm != "lastSavedCode" && elm.includes ("lastSavedCode"))
    {
      keys [ct] = ([new Date (elm.slice (14)).toString(), localStorage [elm]])
      ct += 1;
    }
  }

  if (keys.length > 20)
  {
    for (var i = 20; i < keys.length; i++)
    {
   		localStorage.removeItem ("lastSavedCode_" + new Date (keys[i][0]).toLocaleString())
    }
  	keys.length = 20
  }

  keys.sort (function (a, b)
  {
    date1 = new Date (a[0]);
    date2 = new Date (b[0]);
    if (date1 < date2)
      return 1;
    else if (date1 > date2)
      return -1;
    else
      return 0;
  })

  for (var i = 0; i < keys.length; i++)
  {
      var el = document.createElement ("option")
      el.textContent = keys [i][0].replace ("(Eastern Daylight Time)", "");
      el.value = keys [i][1];
      selector.appendChild (el);
  }

  $( function() { $("option").bind("dblclick", loadVerilog); } );
  return false
}

// var openDlogOpacityInterval;
function openVerilog() {
  populateSelector()
  editor.renderer.setShowGutter(false);
  editor.renderer.scrollBarV.element.style ['display'] = "none"
  editor.renderer.scrollBarH.element.style ['display'] = "none"
  document.getElementById("overlay").style.opacity = 0;
  document.getElementById("overlay").style.display = "block";
  // time = new Date().getTime() / 1000.0
  openDlogOpacityInterval = setInterval (function () {
    if (document.getElementById("overlay").style.opacity == 1.0)
    {
      clearInterval (openDlogOpacityInterval)
    }
    else
    {
      opacity = parseFloat (document.getElementById("overlay").style.opacity)
      document.getElementById("overlay").style.opacity = opacity + 0.1
    }
  }, 4)
}

function closeOverlay() {
  document.getElementById("overlay").style.opacity = 1;
  time = new Date().getTime() / 1000.0
  closeDlogOpacityInterval = setInterval (function () {
    if (document.getElementById("overlay").style.opacity == 0.0)
    {
      clearInterval (closeDlogOpacityInterval)
      editor.renderer.setShowGutter(true);
      editor.renderer.scrollBarV.element.style ['display'] = ""
      editor.renderer.scrollBarH.element.style ['display'] = ""
      document.getElementById("overlay").style.display = "none";
    }
    else
    {
      opacity = parseFloat (document.getElementById("overlay").style.opacity)
      document.getElementById("overlay").style.opacity = opacity - 0.1
    }
  }, 1)
}

function openSettings() {
  populateSelector()
  editor.renderer.setShowGutter(false);
  editor.renderer.scrollBarV.element.style ['display'] = "none"
  editor.renderer.scrollBarH.element.style ['display'] = "none"
  document.getElementById("overlay_2").style.opacity = 0
  document.getElementById("overlay_2").style.display = "block";
  openSettingsOpacityInterval = setInterval (function () {
    if (document.getElementById("overlay_2").style.opacity == 1.0)
    {
      clearInterval (openSettingsOpacityInterval)
    }
    else
    {
      opacity = parseFloat (document.getElementById("overlay_2").style.opacity)
      document.getElementById("overlay_2").style.opacity = opacity + 0.1
    }
  }, 4)
}

function closeSettings() {
  editor.renderer.setShowGutter(true);
  editor.renderer.scrollBarV.element.style ['display'] = ""
  editor.renderer.scrollBarH.element.style ['display'] = ""
  document.getElementById("overlay_2").style.display = "none";
}

$('#autosave_interval').val (AUTOSAVE_TIME)

function autosave_interval (){
  clearInterval (autosaver)
  AUTOSAVE_TIME = parseInt (document.getElementById("autosave_interval").valueOf().value)
  if (AUTOSAVE_TIME < 15000)
  {
    AUTOSAVE_TIME = 15000
    $('#autosave_interval').val (15000)
  }
  else if (AUTOSAVE_TIME > 120000)
  {
    AUTOSAVE_TIME = 120000
    $('#autosave_interval').val (120000)
  }
  autosaver = setInterval (function () { autosave_call (false) }, AUTOSAVE_TIME);
}

BTN_RELOAD = [$('.btn-info').css ('background-color'), $('.btn-info').css ('border-color')]
BTN_SIM = [$('.btn-primary').css ('background-color'), $('.btn-primary').css ('border-color')]
BTN_DEMO = [$('.btn-dark').css ('background-color'), $('.btn-dark').css ('border-color')]
BTN_STOP = [$('.btn-warning').css ('background-color'), $('.btn-warning').css ('border-color')]
BTN_RESET = [$('.btn-danger').css ('background-color'), $('.btn-danger').css ('border-color')]

document.body.style ['background-color'] = "#f9f9f9"
document.getElementsByClassName ("ace_scrollbar")[0].classList.remove ("ace_scrollbar_dark")
document.getElementsByClassName ("ace_scrollbar")[0].classList.add ("ace_scrollbar_light")
document.getElementsByClassName ("ace_scrollbar")[1].classList.remove ("ace_scrollbar_dark")
document.getElementsByClassName ("ace_scrollbar")[1].classList.add ("ace_scrollbar_light")

function toggleDarkMode() {
  function lightMode () {
    STATUS_READY = "#eaeaea"
    SIM_RUNNING = "#e0f0e0"
    CODE_ERROR = "#f0e0e0"
    SERVER_DOWN = "#eecccc"
    DEMO_RUNNING = "#dafada"

    $(".ace-line-error-dark").toggleClass ("ace-line-error-dark ace-line-error-light")

    document.getElementsByClassName ("navbar-special")[0].style ['background-color'] = "#f9f9f9"
    document.getElementsByClassName ("navbar-special")[1].style ['background-color'] = "#eaeaea"
    $('.navbar-special').css ('border-bottom', "1px solid #bbb")
    $('.btn-bevel').css ('box-shadow', '0 4px 9px 0 #888')
    document.body.style ['background-color'] = "#f9f9f9"
    for (var i = 1; i < 22; i++)
    {
      obj = document.getElementsByClassName ("display-4")[i]
      obj.classname = obj.className + " text-muted"
      obj.style ['color'] = ""
    }
    document.getElementById ("codemirror_box").style ['border-top'] = "1px solid #ddd"
    document.getElementById ("codemirror_box").style ['border-left'] = "1px solid #ddd"
    document.getElementById ("codemirror_box").style ['border-right'] = "1px solid #ddd"
    document.getElementById ("codemirror_box").style ['border-bottom'] = "1px solid #ddd"
    editor.setTheme ('ace/theme/chrome')

    $('.inner_overlay').css ('background-color', '#eee')
    document.getElementById ("canvas_background_2").setAttribute ('fill', "#eee")
    document.getElementById ("canvas_background_3").setAttribute ('fill', "#eee")
    document.getElementById ("btnload").style ['color'] = ""
    document.getElementById ("btndel").style ['color'] = ""
    document.getElementById ("btntsh").style ['color'] = ""
    $('.top-icon').css ('color', '')
    document.getElementsByName ("project_list")[0].style ['background-color'] = ""
    document.getElementsByName ("project_list")[0].style ['color'] = ""
    $('.ace_scrollbar').css ('scrollbar-color', "#999 #dadada")
    $('.ace_scrollbar').css ('scrollbar-color:hover', "#666 #dadada")
    document.getElementsByClassName ("description-navbar")[0].style ['backgroundColor'] = "#eaeaea"

    $('.btn-info').css ('background-color', BTN_RELOAD [0])
    $('.btn-info').css ('border-color', BTN_RELOAD [1])
    $('.btn-info').css ('color', '#fff')
    $('.btn-primary').css ('background-color', BTN_SIM [0])
    $('.btn-primary').css ('border-color', BTN_SIM [1])
    $('.btn-primary').css ('color', '#fff')
    $('.btn-dark').css ('background-color', BTN_DEMO [0])
    $('.btn-dark').css ('border-color', BTN_DEMO [1])
    $('.btn-dark').css ('color', '#fff')
    $('.btn-warning').css ('background-color', BTN_STOP [0])
    $('.btn-warning').css ('border-color', BTN_STOP [1])
    $('.btn-warning').css ('color', '#333')
    $('.btn-danger').css ('background-color', BTN_RESET [0])
    $('.btn-danger').css ('border-color', BTN_RESET [1])
    $('.btn-danger').css ('color', '#fff')

    document.getElementById ("autosave_interval").style ['border-top'] = ""
    document.getElementById ("autosave_interval").style ['border-left'] = ""
    document.getElementById ("autosave_interval").style ['border-right'] = ""
    document.getElementById ("autosave_interval").style ['border-bottom'] = ""
    document.getElementById ("autosave_interval").style ['backgroundColor'] = ""
    document.getElementById ("autosave_interval").style ['color'] = ""

    document.getElementById ("passwd").style ['border-top'] = ""
    document.getElementById ("passwd").style ['border-left'] = ""
    document.getElementById ("passwd").style ['border-right'] = ""
    document.getElementById ("passwd").style ['border-bottom'] = ""
    document.getElementById ("passwd").style ['backgroundColor'] = ""
    document.getElementById ("passwd").style ['color'] = ""

    document.getElementById ("evalthemeselector").style ['border-top'] = ""
    document.getElementById ("evalthemeselector").style ['border-left'] = ""
    document.getElementById ("evalthemeselector").style ['border-right'] = ""
    document.getElementById ("evalthemeselector").style ['border-bottom'] = ""
    document.getElementById ("evalthemeselector").style ['backgroundColor'] = ""
    document.getElementById ("evalthemeselector").style ['color'] = ""

    document.getElementsByClassName ("ace_scrollbar")[0].classList.remove ("ace_scrollbar_dark")
    document.getElementsByClassName ("ace_scrollbar")[0].classList.add ("ace_scrollbar_light")
    document.getElementsByClassName ("ace_scrollbar")[1].classList.remove ("ace_scrollbar_dark")
    document.getElementsByClassName ("ace_scrollbar")[1].classList.add ("ace_scrollbar_light")
    localStorage.ice40DarkMode = "false"
    darkModeSetting = false

    document.getElementById ("settingsButtonOuter").setAttribute ("fill", "#fff")
    document.getElementById ("settingsButtonInner").setAttribute ("fill", "#444")

    document.getElementById ("close1").setAttribute ("fill", "#444")
    document.getElementById ("close2").setAttribute ("fill", "#444")

    CURRENT_FONT_COLOR = '#444'

    update_status (CURRENT_STATUS [0], CURRENT_STATUS [1])
  }
  document.getElementsByClassName ("ace_scrollbar-h")[0].style ['height'] = '8px'
  function darkMode () {

    STATUS_READY = "#444"
    SIM_RUNNING = "#464"
    CODE_ERROR = "#644"
    SERVER_DOWN = "#533"
    DEMO_RUNNING = "#353"

    $(".ace-line-error-light").toggleClass ("ace-line-error-light ace-line-error-dark")

    CURRENT_FONT_COLOR = '#ddd'

    document.getElementsByClassName ("navbar-special")[0].style ['background-color'] = "#222"
    document.getElementsByClassName ("description-navbar")[0].style ['backgroundColor'] = "#333"
    document.getElementsByClassName ("navbar-special")[1].style ['background-color'] = "#444"
    $('.navbar-special').css ('border-bottom', "1px solid #444")
    $('.btn-bevel').css ('box-shadow', '0 4px 9px 0 #111')
    document.body.style ['background-color'] = "#222"
    for (var i = 1; i < 22; i++)
    {
      obj = document.getElementsByClassName ("display-4")[i]
      obj.classname = obj.className.replace (" text-muted", "")
      obj.style ['color'] = "#ddd"
    }
    document.getElementById ("codemirror_box").style ['border-top'] = "1px solid #444"
    document.getElementById ("codemirror_box").style ['border-left'] = "1px solid #444"
    document.getElementById ("codemirror_box").style ['border-right'] = "1px solid #444"
    document.getElementById ("codemirror_box").style ['border-bottom'] = "1px solid #444"
    editor.setTheme ('ace/theme/chaos')

    $('.inner_overlay').css ('background-color', '#223')
    document.getElementById ("canvas_background_2").setAttribute ('fill', "#223")
    document.getElementById ("canvas_background_3").setAttribute ('fill', "#223")
    document.getElementById ("btnload").style ['color'] = "white"
    document.getElementById ("btndel").style ['color'] = "white"
    document.getElementById ("btntsh").style ['color'] = "white"
    $('.top-icon').css ('color', 'white')
    document.getElementsByName ("project_list")[0].style ['background-color'] = "#334"
    document.getElementsByName ("project_list")[0].style ['color'] = "#aaa"

    $('.btn-info').css ('background-color', '#011535')
    $('.btn-info').css ('border-color', '#011535')
    $('.btn-info').css ('color', '#eee')
    $('.btn-primary').css ('background-color', '#1a4d9e')
    $('.btn-primary').css ('border-color', '#1a4d9e')
    $('.btn-primary').css ('color', '#eee')
    $('.btn-dark').css ('background-color', '#a9a9a9')
    $('.btn-dark').css ('border-color', '#a9a9a9')
    $('.btn-dark').css ('color', '#333')
    $('.btn-danger').css ('background-color', "#b00020")
    $('.btn-danger').css ('border-color', "#b00020")
    $('.btn-danger').css ('color', '#eee')

    document.getElementById ("autosave_interval").style ['border-top'] = "1px solid #228"
    document.getElementById ("autosave_interval").style ['border-left'] = "1px solid #228"
    document.getElementById ("autosave_interval").style ['border-right'] = "1px solid #228"
    document.getElementById ("autosave_interval").style ['border-bottom'] = "1px solid #228"
    document.getElementById ("autosave_interval").style ['backgroundColor'] = "#113"
    document.getElementById ("autosave_interval").style ['color'] = "#bbb"

    document.getElementById ("passwd").style ['border-top'] = "1px solid #228"
    document.getElementById ("passwd").style ['border-left'] = "1px solid #228"
    document.getElementById ("passwd").style ['border-right'] = "1px solid #228"
    document.getElementById ("passwd").style ['border-bottom'] = "1px solid #228"
    document.getElementById ("passwd").style ['backgroundColor'] = "#113"
    document.getElementById ("passwd").style ['color'] = "#bbb"

    document.getElementById ("evalthemeselector").style ['border-top'] = "1px solid #228"
    document.getElementById ("evalthemeselector").style ['border-left'] = "1px solid #228"
    document.getElementById ("evalthemeselector").style ['border-right'] = "1px solid #228"
    document.getElementById ("evalthemeselector").style ['border-bottom'] = "1px solid #228"
    document.getElementById ("evalthemeselector").style ['backgroundColor'] = "#113"
    document.getElementById ("evalthemeselector").style ['color'] = "#bbb"

    $('.ace_scrollbar').css ('scrollbar-color', "#aaa #444")
    $('.ace_scrollbar').css ('scrollbar-color:hover', "#777 #444")

    document.getElementsByClassName ("ace_scrollbar")[0].classList.remove ("ace_scrollbar_light")
    document.getElementsByClassName ("ace_scrollbar")[0].classList.add ("ace_scrollbar_dark")
    document.getElementsByClassName ("ace_scrollbar")[1].classList.remove ("ace_scrollbar_light")
    document.getElementsByClassName ("ace_scrollbar")[1].classList.add ("ace_scrollbar_dark")
    localStorage.ice40DarkMode = "true"
    darkModeSetting = true

    document.getElementById ("settingsButtonOuter").setAttribute ("fill", "#444")
    document.getElementById ("settingsButtonInner").setAttribute ("fill", "#fff")

    document.getElementById ("close1").setAttribute ("fill", "#ccc")
    document.getElementById ("close2").setAttribute ("fill", "#ccc")

    update_status (CURRENT_STATUS [0], CURRENT_STATUS [1])
  }
  circleMove = setInterval (function() {
    innerbutton = document.getElementById ("settingsButtonInner")
    if (darkModeSetting)
    {
      if (innerbutton.cx.baseVal.value < 19)
      {
        lightMode()
        clearInterval (circleMove)
      }
      else
      innerbutton.cx.baseVal.value -= 1
    }
    else
    {
      if (innerbutton.cx.baseVal.value > 41)
      {
        darkMode()
        clearInterval (circleMove)
      }
      else
      innerbutton.cx.baseVal.value += 1
    }
  }, 3)
  for (var id in error_id)
    editor.session.removeMarker (error_id [id])
  error_id = []
  for (var elm in errors)
  {
    line = parseInt (errors [elm].row)
    error_id.push (editor.session.addMarker(new Range(line, 0, line, 1), localStorage.ice40DarkMode == "false" ? "ace-line-error-dark" : "ace-line-error-light", "fullLine"));
  }
}

function toggleInstantSim() {
  circleMove2 = setInterval (function() {
    innerbutton = document.getElementById ("settingsButtonInner2")
    if (simulateOnSave)
    {
      if (innerbutton.cx.baseVal.value < 19)
      {
        localStorage.simulateOnSave = "false"
        simulateOnSave = false
        document.getElementById ("settingsButtonOuter2").setAttribute ("fill", "#fff")
        document.getElementById ("settingsButtonInner2").setAttribute ("fill", "#444")
        clearInterval (circleMove2)
      }
      else
      innerbutton.cx.baseVal.value -= 1
    }
    else
    {
      if (innerbutton.cx.baseVal.value > 41)
      {
        localStorage.simulateOnSave = "true"
        simulateOnSave = true
        document.getElementById ("settingsButtonOuter2").setAttribute ("fill", "#444")
        document.getElementById ("settingsButtonInner2").setAttribute ("fill", "#fff")
        clearInterval (circleMove2)
      }
      else
      innerbutton.cx.baseVal.value += 1
    }
  }, 3)
}

function changeBoardTheme (theme) {
  switch (theme)
  {
    case "Original":
        cnva = "#041f05"
        ltrs = "black"
        caps = "#aaa"
        fowt = 'bold'
    break;
    case "Dark Original":
        cnva = "#041005"
        ltrs = "black"
        caps = "#aaa"
        fowt = 'bold'
    break;
    case "Modern":
        cnva = "#17183f"
        ltrs = "white"
        caps = "#333666"
        fowt = 'normal'
    break;
  }
  document.getElementById ("canvas_background").setAttribute ('fill', cnva)
  Array.from (document.getElementsByClassName ("inputbutton")).forEach (function (el) { el.setAttribute ("fill", caps); el.setAttribute ("font-weight", fowt)  })
  Array.from (document.getElementsByClassName ("svg_text")).forEach (function (el) { el.setAttribute ("fill", ltrs); el.setAttribute ("font-weight", fowt)  })
  window.localStorage.evalboardtheme = theme
}

window.onload = function ()
{
  keys = []; ct = 0;
  for (var elm in localStorage)
  {
    if (elm != "lastSavedCode" && elm.includes ("lastSavedCode"))
    {
      keys [ct] = ([new Date (elm.slice (14)).toString(), localStorage [elm]])
      ct += 1;
    }
  }

  if (keys.length > 20)
  {
    for (var i = 20; i < keys.length; i++)
    {
   		localStorage.removeItem ("lastSavedCode_" + new Date (keys[i][0]).toLocaleString())
    }
  	keys.length = 20
  }
}

window.addEventListener ("mousewheel", codescroll, {passive: false})
load_button.innerHTML = load_btn_text

toggleDarkMode()

if (!window.localStorage.evalboardtheme)
{
 document.getElementById ("evalthemeselector").value = "Modern"
 window.localStorage.evalboardtheme = "Modern"
}
else
{
 changeBoardTheme (window.localStorage.evalboardtheme)
 document.getElementById ("evalthemeselector").value = window.localStorage.evalboardtheme
}

//if (!window.localStorage.announcement18JUL3)
//{
//  alert ("For lab 11, I've implemented a shortcut to quickly press the 3-0-W reset key combination together. Press the Ctrl + Alt + Insert key combo to toggle the three buttons at once.")
//  window.localStorage.announcement18JUL3 = "Done";
//}

// console.clear()
console.log ("%c\n\n\nFellow DigiJocks and DigiJockettes, thanks for checking out the code!\n\n\nThe main JS functions lie in assets/js/simulator_backend.js.\n\n\n", "background: #eeeeee; color: black; font-size: medium")
