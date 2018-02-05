package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import entity.Teacher;
import service.TeacherService;

import java.util.List;

@Controller
public class Teacher_managerController {
   @Autowired
   private TeacherService tea;
    @RequestMapping(value = "/teacher_manager")
    public String teacher_manager(Model model){
        List<Teacher> teacher = tea.queryAll();
        model.addAttribute("teacher",teacher);
        return "views/admin/teacher_manager.jsp";
    }
    @RequestMapping( value = "/delete_teacher")
    public String delete_teacher(@RequestParam("id")Integer id, Model model){
        tea.delete(id);

        List<Teacher> teacher = tea.queryAll();
        model.addAttribute("teacher",teacher);
        return "views/admin/teacher_manager.jsp";
    }
    @RequestMapping( value = "/add_teacher")
    public String add_teacher(@RequestParam("id")Integer id,@RequestParam("academy")String academy,
                              @RequestParam("name")String name,@RequestParam("email")String email,
                              @RequestParam("password")String password, Model model){
        Teacher teacher =new Teacher();
        teacher.settAcademy(academy);
        teacher.settEmail(email);
        teacher.settId(id);
        teacher.settName(name);
        teacher.settPassword(password);
       tea.insert(teacher);
        List<Teacher> teachers = tea.queryAll();
        model.addAttribute("teacher",teachers);
        return "views/admin/teacher_manager.jsp";
    }

}
