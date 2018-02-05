function mouse_on(a) {
    a.style.height = "80px";
}


function mouse_off(a) {
    if(a.style.color == "white" || a.style.color == "")
        a.style.height = "30px";
}


function video_select_click(a) {
    var id = document.getElementById("last_active_video").value;
    if (id != "") {
        document.getElementById(id).style.color = "white";
        document.getElementById(id+"_out").style.color = "white";
        document.getElementById(id+"_out").style.height = "30px";
    }

    document.getElementById(a.id + "_out").style.color = "#80ffbf";
    document.getElementById(a.id + "_out").style.height = "80px";
    a.style.color = "#80ffbf";

    document.getElementById("last_active_video").value = a.id;

    document.getElementById(a.id + "_out").blur();
}