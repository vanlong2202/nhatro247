package com.nhatro247.nhatro247.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.nhatro247.nhatro247.entity.Account;
import com.nhatro247.nhatro247.entity.FeedBack;
import com.nhatro247.nhatro247.entity.Newsletter;
import com.nhatro247.nhatro247.service.MenuService;
import com.nhatro247.nhatro247.service.NewsletterService;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;

@Controller
public class HomeController {
    private final MenuService menuService;
    private final NewsletterService newsletterService;

    public HomeController(MenuService menuService, NewsletterService newsletterService) {
        this.menuService = menuService;
        this.newsletterService = newsletterService;
    }

    @GetMapping("")
    public String getHomePage(Model model) {
        model.addAttribute("f", new FeedBack());
        model.addAttribute("menu", this.menuService.getAll());
        model.addAttribute("list", this.newsletterService.getListActive(1, 1));
        return "client/index";
    }

    @GetMapping("/login")
    public String getLoginPage() {
        return "client/login";
    }

    @GetMapping("/login1")
    public String getRegisterPage() {
        return "client/login1";
    }

    @PostMapping("/submit")
    public String postMethodName(Model model) {
        model.addAttribute("var", "Thông tin đăng nhập khum chính xác");

        return "client/login1";
    }

    @GetMapping("/admin")
    public String getAdminPage() {
        return "admin/dashboard/view";
    }

    @GetMapping("/error-page")
    public String getErrorPage() {
        return "admin/dashboard/error";
    }
}
