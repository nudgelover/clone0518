package com.kbstar.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {


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


}