package com.kbstar.controller;

import com.kbstar.dto.Student;
import com.kbstar.service.LectureService;
import com.kbstar.service.StudentService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;


@Slf4j
@Controller
public class MainController {

    @Value("${uploadimgdir}")
    String imgpath;

    @Autowired
    LectureService lectureService;

    @Autowired
    StudentService studentService;

    @Autowired
    private BCryptPasswordEncoder encoder;

    @RequestMapping("/")
    public String main(Model model) throws Exception {

        return "index";
    }

    @RequestMapping("/apply")
    public String apply(Model model) throws Exception {
        model.addAttribute("center", "apply");
        return "index";
    }
    @RequestMapping("/courses")
    public String courses(Model model) throws Exception {
        model.addAttribute("center", "courses");
        return "index";
    }

    @RequestMapping("/meetings")
    public String meetings(Model model) throws Exception {
        model.addAttribute("center", "meetings");
        return "index";
    }

    @RequestMapping("/meeting_details")
    public String meetings_details(Model model) throws Exception {
        model.addAttribute("center", "meeting_details");
        return "index";
    }

    @RequestMapping("/att_check")
    public String att_check(Model model) throws Exception {
        model.addAttribute("center", "att_check");
        return "index";
    }

    @RequestMapping("/login")
    public String login(Model model) throws Exception {
        model.addAttribute("center", "login");
        return "index";
    }

    @RequestMapping("/facts")
    public String facts(Model model) throws Exception {
        model.addAttribute("center", "facts");
        return "index";
    }

    @RequestMapping("/upcoming")
    public String upcoming(Model model) throws Exception {
        model.addAttribute("center", "upcoming");
        return "index";
    }

    @RequestMapping("/loginimpl")
    public String loginimpl(Model model, String id, String pwd, HttpSession session) throws Exception {
        Student student = null;
        String nextPage = "loginfail";

        try {
            student = studentService.get(id);
            if(student != null && encoder.matches(pwd,student.getPwd())){
                nextPage = "center";
                session.setMaxInactiveInterval(12000000);
                session.setAttribute("loginStudent", student);
            }
        } catch (Exception e) {
            throw new Exception("시스템 장애입니다. 잠시 후 다시 로그인 하십시오!");
        }
        model.addAttribute("loginStudent", student);
        model.addAttribute("center", nextPage);
        return "index";
    }

    @RequestMapping("/register")
    public String register(Model model) throws Exception {
        model.addAttribute("center", "register");
        return "index";
    }

    @RequestMapping("/registerimpl")
    public String registerimpl(Model model, int contact1, int contact2, int contact3, Student student, HttpSession session) throws Exception {
        try {
            String contact = "0"+contact1+contact2+contact3;
            student.setPwd(encoder.encode(student.getPwd()));
            student.setContact(contact);
            studentService.register(student);
            session.setAttribute("loginStudent", student);
        } catch (Exception e) {
            throw new Exception("시스템 장애: ER0006");
        }
        model.addAttribute("loginStudent", student);
        model.addAttribute("center", "center");
        return "index";
    }

    @RequestMapping("/logout")
    public String logout(Model model, HttpSession session) throws Exception {
        if(session != null){
            session.invalidate();
        }
        return "redirect:/";
    }

}