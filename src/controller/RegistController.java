package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import entity.Student;
import service.StudentService;
import service.TeacherService;


@Controller
public class RegistController {
   
    @Autowired
    private StudentService stu;
    
    
    @RequestMapping(value = "/regist")
    public String regist(Model model) {
        model.addAttribute("title","ÓÃ»§×¢²á");
        return "views/lr/regist.jsp";
    }
@RequestMapping(value = "/registaction")

    public String registaction(Model model, @RequestParam("academy") String academy,@RequestParam("id") Integer id,
@RequestParam("email") String email,@RequestParam("name") String name
,@RequestParam("password") String password){

            Student student = new Student();
            student.setsAcademy(academy);
            student.setsEmail(email);
            student.setsId(id);
            student.setsPassword(password);
            student.setsName(name);
            stu.insert(student);
            return "views/index.jsp";

}
}
