package com.nhatro247.nhatro247.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.nhatro247.nhatro247.service.UploadService;

@Controller
public class UploadCOntroller {
    private final UploadService uploadService;

    public UploadCOntroller(UploadService uploadService) {
        this.uploadService = uploadService;
    }

    @GetMapping("/up")
    public String getPage() {
        return "client/test";
    }

    @PostMapping("/upload")
    public String postMethodName(@RequestParam("file") MultipartFile[] files) {
        List<String> filename = this.uploadService.handeSaveUploadFile(files);
        System.out.println(filename);
        return "redirect:/up";
    }

}
