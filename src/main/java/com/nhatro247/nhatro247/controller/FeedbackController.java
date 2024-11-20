package com.nhatro247.nhatro247.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import com.nhatro247.nhatro247.entity.FeedBack;
import com.nhatro247.nhatro247.service.FeedBackService;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;

@Controller
public class FeedbackController {
    private final FeedBackService feedBackService;

    public FeedbackController(FeedBackService feedBackService) {
        this.feedBackService = feedBackService;
    }

    @PostMapping("/lock")
    public String addFeedBack(@ModelAttribute("f") FeedBack feedback) {
        feedBackService.addFeedback(feedback);
        return "redirect:";
    }

    @PostMapping("/check-text")
    public String check(@ModelAttribute("f") FeedBack feedback) {
        return "redirect:";
    }

}
