package controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller

public class LiveController {
    @RequestMapping(value = "/live")

    public String live(Model model){
        model.addAttribute("title","live");
        return "views/visitor/live.jsp";
    }

}
