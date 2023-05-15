package com.kbstar.controller;

import com.github.pagehelper.PageInfo;
import com.kbstar.dto.Study;
import com.kbstar.service.StudyService;
import com.kbstar.utill.FileUploadUtil;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpSession;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Date;
import java.util.List;

@Slf4j
@Controller
@RequestMapping("/study")

public class StudyController {
    @Value("${uploadimgdir}")
    String imgpath;

    @Value("${upload.path}")
    String uploadPath;

    @Autowired
    StudyService studyService;


    String dir = "study/";

    @RequestMapping("/allpage")
    public String allpage(@RequestParam(required = false, defaultValue = "1") int pageNo, Model model) throws Exception {
        PageInfo<Study> p;
        try {
            p = new PageInfo<>(studyService.getPage(pageNo), 5);
        } catch (Exception e) {
            e.printStackTrace();
            throw new Exception();
        }
        model.addAttribute("cpage", p);
        model.addAttribute("target", "study");
        model.addAttribute("center", dir + "allpage");
        return "index";
    }

    @RequestMapping("/writeimpl")
    public String writeimpl(Model model, Study study) throws Exception {
        //input datetimelocal로 받은 String date값 변환해서 study에 set
        String startTime_org = study.getStartTime();
        String endTime_org = study.getEndTime();
        log.info(study.getStartTime()+"-------------------------------------------------------------------");
        LocalDateTime parseStartTime = LocalDateTime.parse(startTime_org);
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy.MM.dd HH:mm:ss");
        String startTime = parseStartTime.format(formatter);
        study.setStartTime(startTime);

        LocalDateTime parseEndTime = LocalDateTime.parse(endTime_org);
        String endTime = parseEndTime.format(formatter);
        study.setEndTime(endTime);

        MultipartFile file = study.getFile();
        String fileName_org = file.getOriginalFilename();
        String filename = FileUploadUtil.uploadFile(file, uploadPath);
        study.setFileName(filename);
        study.setFileName_org(fileName_org);
        studyService.register(study);
        return "redirect:/"+dir+"allpage";
    }

    @RequestMapping("/write")
    public String write(Model model) throws Exception {
        model.addAttribute("center",dir+"write");
        return "index";
    }

}
