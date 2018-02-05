package controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AddCourseController {

    @RequestMapping(value = "/addcourse")
    public String addcourse(Model model) {
        model.addAttribute("title","¿Î³ÌÌí¼Ó");
        return "views/admin/add_course.jsp";
    }

}
