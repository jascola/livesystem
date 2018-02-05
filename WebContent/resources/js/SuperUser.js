function select_btn_click(a){
	switch(a.id){
		case "course_btn": 
			a.style.backgroundColor = "blue";
			a.style.color = "white";
			document.getElementById("teacher_btn").style.backgroundColor = "lightgray";
			document.getElementById("teacher_btn").style.color = "black";
			document.getElementById("student_btn").style.backgroundColor = "lightgray";
			document.getElementById("student_btn").style.color = "black";
			break;
		case "teacher_btn":
			a.style.backgroundColor = "blue";
			a.style.color = "white";
			document.getElementById("course_btn").style.backgroundColor = "lightgray";
			document.getElementById("course_btn").style.color = "black";
			document.getElementById("student_btn").style.backgroundColor = "lightgray";
			document.getElementById("student_btn").style.color = "black";
			break;
		case "student_btn":
			a.style.backgroundColor = "blue";
			a.style.color = "white";
			document.getElementById("course_btn").style.backgroundColor = "lightgray";
			document.getElementById("course_btn").style.color = "black";
			document.getElementById("teacher_btn").style.backgroundColor = "lightgray";
			document.getElementById("teacher_btn").style.color = "black";
			break;
	}
}