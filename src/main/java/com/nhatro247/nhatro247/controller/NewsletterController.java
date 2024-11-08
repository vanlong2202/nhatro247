package com.nhatro247.nhatro247.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import com.nhatro247.nhatro247.entity.ReportNewsletter;
import com.nhatro247.nhatro247.service.MenuService;
import com.nhatro247.nhatro247.service.NewsletterService;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

@Controller
public class NewsletterController {
    private final NewsletterService newsletterService;
    private final MenuService menuService;

    public NewsletterController(NewsletterService newsletterService, MenuService menuService) {
        this.newsletterService = newsletterService;
        this.menuService = menuService;
    }

    @GetMapping("/newsletter-detail/{id}")
    public String getNewsletterDetailPage(Model model, @PathVariable("id") int id) {
        model.addAttribute("menu", this.menuService.getAll());
        model.addAttribute("newsletters", this.newsletterService.getNewsletterByID(id));
        model.addAttribute("report", new ReportNewsletter());
        return "client/newsletterDetail";
    }

}
