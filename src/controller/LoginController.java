package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import entity.Admin;
import entity.Student;
import entity.Teacher;
import service.AdminService;
import service.StudentService;
import service.TeacherService;

@Controller

public class LoginController {

    @Autowired
   private StudentService stu;
    @Autowired
    private TeacherService tea;
    @Autowired
    private AdminService admin;
    
    @RequestMapping(value = "/login")
    public String login(Model model){
        model.addAttribute("title","登录");
        return "views/lr/login.jsp";
    }
    @RequestMapping(value = "/admin")
    public String admin(Model model){
        model.addAttribute("title","管理员登录");
        return "views/admin/admin_login.jsp";
    }
    
    @RequestMapping(value = "/adminlogin")
    public  String adminlogin(@RequestParam("admin_id") Integer id,
                              @RequestParam("admin_password") String password, Model model){
        
            model.addAttribute("title","管理员首页");
          Admin ad =  admin.queryById(id);
          if(ad==null) {
              
              model.addAttribute("error","用户不存在，请注册");
              return "views/lr/login_error.jsp";
              }
          
            if(password.equals(ad.getaPassword())){
                return "views/admin/admin_index.jsp";
            }
            else{
                model.addAttribute("error","账号密码错误，请重新登录");
                return "views/lr/login_error.jsp";
            }
        
    }


    @RequestMapping(value = "/studentlogin")
    public String studentlogin(@RequestParam("student_id")Integer id,@RequestParam("student_password")String password,
                               Model model){

        
            model.addAttribute("title","学生首页");
            Student student = stu.queryById(id);
            
            if(student==null) {
                model.addAttribute("error","用户不存在，请注册");
                return "views/lr/login_error.jsp";
            }
            
            if(password.equals(student.getsPassword())){
                return "views/student/real_live.jsp";
            }
            else{
                model.addAttribute("error","账号密码错误，请重新登录");
                return "views/lr/login_error.jsp";
            }
        
      
    }

    @RequestMapping(value = "/teacherlogin")
    public String teacherlogin(@RequestParam("teacher_id")Integer id, @RequestParam("teacher_password") String password
            , Model model){
        
            model.addAttribute("title","教师首页");
            Teacher teacher = tea.queryById(id);
            if(teacher==null) {
                model.addAttribute("error", "账号不存在，请联系管理员添加");
                return "views/lr/login_error.jsp";
             }
            
            if (teacher.gettPassword().equals(password)) {
                return "views/teacher/teacher_index.jsp";
            } else {
                model.addAttribute("error", "账号密码错误，请重新登录");
                return "views/lr/login_error.jsp";
            }
       
    }

}
