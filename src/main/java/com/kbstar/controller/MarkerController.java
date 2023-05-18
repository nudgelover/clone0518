package com.kbstar.controller;

import com.kbstar.dto.Lecture;
import com.kbstar.dto.Marker;
import com.kbstar.service.MarkerService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;
@Slf4j
@Controller
@RequestMapping("/marker")

public class MarkerController {
    @Value("${uploadimgdir}")
    String imgpath;

    String dir = "marker/";

    @Autowired
    MarkerService markerService;

    @RequestMapping("/all")
    public String map03(Model model) throws Exception{
        List<Marker> list = markerService.getRecent();
        model.addAttribute("marker",list);
        model.addAttribute("center",dir+"all");
        return "index";
    }

    @RequestMapping("/detail")
    public String detail(Model model,Integer id) throws Exception {
        Marker marker = null;
        marker = markerService.get(id);

        model.addAttribute("marker", marker);
        model.addAttribute("center", dir+"detail");
        return "index";
    }

}
