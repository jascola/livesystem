function activeBtn(a) {
    switch (a.id) {
        case "btn_select_1": {
            document.getElementById("btn_select_1").style.backgroundColor = "#0040ff";
            document.getElementById("btn_select_2").style.backgroundColor = "black";
            document.getElementById("btn_select_3").style.backgroundColor = "black";

            document.getElementById("ask_div").style.visibility = "hidden";
            document.getElementById("ask_div").style.height = "0";
            document.getElementById("file_down").style.visibility = "hidden";
            document.getElementById("file_down").style.height = "0";
            document.getElementById("broadcast_list").style.visibility = "visible";
            document.getElementById("broadcast_list").style.height = "auto";
            break;
        }
        case "btn_select_2": {
            document.getElementById("btn_select_1").style.backgroundColor = "black";
            document.getElementById("btn_select_2").style.backgroundColor = "#0040ff";
            document.getElementById("btn_select_3").style.backgroundColor = "black";

            document.getElementById("ask_div").style.visibility = "hidden";
            document.getElementById("ask_div").style.height = "0";
            document.getElementById("file_down").style.visibility = "visible";
            document.getElementById("file_down").style.height = "370px";
            document.getElementById("broadcast_list").style.visibility = "hidden";
            document.getElementById("broadcast_list").style.height = "0";
            break;
        }
        case "btn_select_3": {
            document.getElementById("btn_select_1").style.backgroundColor = "black";
            document.getElementById("btn_select_2").style.backgroundColor = "black";
            document.getElementById("btn_select_3").style.backgroundColor = "#0040ff";

            document.getElementById("ask_div").style.visibility = "visible";
            document.getElementById("ask_div").style.height = "370px";
            document.getElementById("file_down").style.visibility = "hidden";
            document.getElementById("file_down").style.height = "0";
            document.getElementById("broadcast_list").style.visibility = "hidden";
            document.getElementById("broadcast_list").style.height = "0";
            break;
        }
    }
}