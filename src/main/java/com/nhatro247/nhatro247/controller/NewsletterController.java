package com.nhatro247.nhatro247.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import com.nhatro247.nhatro247.entity.Newsletter;
import com.nhatro247.nhatro247.entity.ReportNewsletter;
import com.nhatro247.nhatro247.service.MenuService;
import com.nhatro247.nhatro247.service.NewsletterService;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;

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

    @GetMapping("/service")
    public String getServicePage(Model model, @RequestParam("page") Optional<String> pageGet) {
        int page = 1;
        try {
            if (pageGet.isPresent()) {
                page = Integer.parseInt(pageGet.get());
            }
        } catch (Exception e) {
            // TODO: handle exception
        }
        Pageable pageable = PageRequest.of(page - 1, 6);
        Page<Newsletter> getPage = this.newsletterService.getAll(pageable);
        model.addAttribute("menu", this.menuService.getAll());
        List<Newsletter> list = getPage.getContent();
        // model.addAttribute("list", this.newsletterService.getListActive(1, 1));
        model.addAttribute("list", list);
        model.addAttribute("curentPage", page);
        model.addAttribute("totalPages", getPage.getTotalPages());
        return "client/service";
    }

}
