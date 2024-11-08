package com.nhatro247.nhatro247.controller;

import org.springframework.stereotype.Controller;

import com.nhatro247.nhatro247.entity.FeedBack;
import com.nhatro247.nhatro247.entity.Newsletter;
import com.nhatro247.nhatro247.entity.ReportNewsletter;
import com.nhatro247.nhatro247.service.ReportService;

import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;

@Controller
public class ReportController {
    private final ReportService reportService;

    public ReportController(ReportService reportService) {
        this.reportService = reportService;
    }

    @PostMapping("/report")
    public String postMethodName(@ModelAttribute("report") ReportNewsletter reportNewsletter) {
        Newsletter newsletter = reportNewsletter.getNewsletter();
        long id = newsletter.getNewsletterID();
        this.reportService.addReport(reportNewsletter);
        return "redirect:/newsletter-detail/" + id;
    }

}
