var shiftKey = false
var down = false

// document.onmouseover =
//     function (e) {
//       if (load_button_hover)
//       {
//         if (load_button.innerHTML == "Load Template" && e.ctrlKey && localStorage.lastSavedCode)
//           load_button.innerHTML = "Reload Code"
//         else if (load_button.innerHTML == "Reload Code" && e.ctrlKey)
//           load_button.innerHTML = "Load Template"
//       }
//       else
//       {
//         load_button.innerHTML = load_btn_text
//       }
//     }

document.onkeydown =
    function (e) {
        if (down)
            return false
        if (!(document.activeElement.className == "ace_text-input"))
        {
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
        }
        else
        {
          if (e.ctrlKey && e.which == 83)
          {
            e.preventDefault()
            ice40hx8k_handler()
          }
        }
    }

document.onkeyup =
    function (e) {
         if (e.ctrlKey || e.metaKey)
             return false
         down = false
         if (!(document.activeElement.className == "ace_text-input"))
         {
             if (e.which >= 48 && e.which <= 57)
             {
                 toggle_button (e, e.which - 48)
             }
             else if ((e.which >= 65 && e.which <= 70) || (e.which >= 87 && e.which <= 90))
             {
                 toggle_button (e, e.code)
             }
         }
         else if (!(e.shiftKey) && !(e.ctrlKey) && !(e.altKey) && e.which == 27)
         {
             document.activeElement.blur()
         }
         else if (!(e.shiftKey) && !(e.ctrlKey) && !(e.altKey) && e.which == 67)
         {
             editor.focus()
         }
    };

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
        // console.log ()
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
//     console.log ((1 / ((new Date().getTime() / 1000) - time)).toString() + " Hz")
//     time = new Date().getTime() / 1000

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
//     ws = new WebSocket ("wss://" + window.location.hostname + "/270sim/wss")
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
function ice40hx8k_handler ()
{
    //************** REMOVE WHEN DONE! *******************//
    // window.alert ("I'm so sorry, I'm not ready yet!")
    // return false
    //****************************************************//
    if (editor.getValue().includes ("module"))
      localStorage.setItem ("lastSavedCode", editor.getValue())

    if (typeof ws != "undefined" && ws.readyState == ws.OPEN) {
        ws.onmessage = function () {}
        ws.onclose = function () {}
        ws.close()
        set_outputs (JSON.parse ('{"LFTRED": 0, "RGTRED": 0, "RGBLED": 0, "SS7": 0, "SS6": 0, \
                                   "SS5": 0, "SS4": 0, "SS3": 0, "SS2": 0, "SS1": 0, "SS0": 0}'))
    }
    ws = new WebSocket("wss://" + window.location.hostname + "/270sim/wss")
    var messages = ""
    ws.onmessage = function (event)
    {
        // editor.getSession().clearAnnotations ()
        if (event.data.includes ("Processing Verilog code..."))
            messages = event.data + "\n"

          else if (event.data.includes ("Simulation successfully started!") || event.data.includes ("warning"))
          {
              editor.getSession().clearAnnotations()
              for (var id in error_id)
              {
                console.log (id)
                editor.session.removeMarker (error_id [id])
              }
              update_status ("#e0f0e0", "Status: Simulation is running")
              messages += event.data.replace (/\2/g, "\n")
              // window.alert (messages)
              messages = ""
              errors = null
              error_id = []
          }
          else if (event.data.includes ("Error: no code found.") || event.data.includes ("failed"))
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
                  console.log (data)
                  var num = data [0]
                  var msg = data.slice (1, data.length).join (" ")
                  errors.push ({
                    row: (num - 1).toString(),
                    column: 0,
                    text: msg,
                    type: "error"
                  });
                  error_id.push (editor.session.addMarker(new Range(num - 1, 0, num - 1, 1), "line-error", "fullLine"));
                }
              }
              editor.getSession().setAnnotations (errors)
              update_status ("#f0e0e0", "Status: Error in code")
              messages = ""
              compile_failed = true
              return false
          }

        else
        {
          set_outputs (JSON.parse (event.data))
        }
    }
    ws.onopen = function ()
    {
        ws.send (editor.getValue().replace (/\n/g, "\2"))
        send_inputs()
    }
    return false
}

var sample;
function load_template(e) {
    if (e.ctrlKey)
    {
      $.get("270sim_source.v", function(data) {
        editor.setValue (data, -1);
      });
    }
    if (window.localStorage.lastSavedCode)
    {
      editor.setValue (window.localStorage.lastSavedCode, -1);
    }
    else
    {
      $.get("270sim_source.v", function(data) {
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
      p_elm.innerHTML = "The simulator works by initiating a WebSocket back to the server, through which code and inputs are sent. \
                         A Python script on the server sets up the simulation, and communicates with the page when there is new I/O \
                         to be processed. Sometimes, there may be errors in your code that the compiler can't explain. In such cases,\
                         remember to check Rick's notes and follow coding standards, or notify course staff if you can't fix it."
      break;
    case 2:
    p_elm.innerHTML = "Enter your code in the editor below. Ensure that you include the top module and that its name is ice40hx8k_top. \
                       Include any other modules referenced in your code, and then hit Simulate. Change the inputs to see the expected behavior of the board! \
                       To include more modules, simply paste them one after the other into the textbox.\
                       This simulator is NOT a replacement for the FPGA you will be working on. Always ensure that your code compiles and maps correctly to the physical board in lab at least once for full credit.  "
      break;
    case 3:
      p_elm.innerHTML = "The simulator couldn't have been made possible without Rick's guidance and support."
      break;
    case 4:
      p_elm.innerHTML = "Very simple - there is obviously no code collected for any purpose on this site. \
                         However, you must take care to not plagiarize code from others."
      break;
    case 5:
      p_elm.innerHTML = "Since this is meant for University use, the source code for the server will not be made available. However, the author has plans for making an open-source, web-based, multi-target Verilog simulator."
      break;
    default:
      alert ("Nah don't mess with this pls")
  }
}

window.onbeforeunload = function(){
    if (editor.getValue().includes ("module"))
      localStorage.setItem ("lastSavedCode", editor.getValue())

    alert = function () {}
    reset_handler()
};

function stop_handler ()
{
    if (typeof ws != "undefined" && ws.readyState == ws.OPEN)
    {
        ws.onclose = function () {}
        ws.close()
        update_status ("#f0e0e0", "Status: Simulation stopped")
        function callback_1 ()
        {
          update_status ("#eaeaea", "Status: Ready")
        }
        setTimeout (callback_1, 1100)
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
        update_status ("#f0e0e0", "Status: Simulation reset")
        function callback_1 ()
        {
          update_status ("#eaeaea", "Status: Ready")
        }
        setTimeout (callback_1, 1100)
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

    ws = new WebSocket("wss://" + window.location.hostname + "/270sim/wss")
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
          set_outputs (JSON.parse (event.data))
        }
    }
    ws.onopen = function ()
    {
        editor.getSession().clearAnnotations()
        for (var id in error_id)
        {
          console.log (id)
          editor.session.removeMarker (error_id [id])
        }
        ws.send("give us a demo please")
        send_inputs()

        if (editor.getValue().includes ("module"))
          localStorage.setItem ("lastSavedCode", editor.getValue())

        $.get("demostuff.txt", function(data) {
          editor.setValue (data, -1)
        });
    }
    ws.onclose = function (evt)
    {
      if (evt.code == 1006)
      {
        console.log (evt.code)
        update_status ("#eecccc", "Status: Server is down")
      }
      update_status ("#eaeaea", "Status: Ready")
    }
    update_status ("#dafada", "Status: Running demo simulation")
    return false
}

function update_status (color, message)
{
  document.getElementById ("status-navbar").style ['background-color'] = color
  document.getElementById ("status-text").innerHTML = message
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

window.addEventListener ("mousewheel", codescroll, {passive: false})
load_button.innerHTML = load_btn_text

function callback_1 () { return demo_handler() }
setTimeout (callback_1, 1000)
function callback_2 () { return ws.send ("ftffffffffffffffffff"); }
function callback_3 () { return ws.send ("ffffffffffffffffffff"); }
setTimeout (callback_2, 2000)
setTimeout (callback_3, 2500)
