package com.nhatro247.nhatro247.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.nhatro247.nhatro247.entity.Account;
import com.nhatro247.nhatro247.entity.FeedBack;
import com.nhatro247.nhatro247.entity.Newsletter;
import com.nhatro247.nhatro247.entity.NewsletterType;
import com.nhatro247.nhatro247.entity.dto.NewsletterFollowDTO;
import com.nhatro247.nhatro247.service.AccountService;
import com.nhatro247.nhatro247.service.MenuService;
import com.nhatro247.nhatro247.service.NewsletterFollowService;
import com.nhatro247.nhatro247.service.NewsletterService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;

@Controller
public class HomeController {
    private final MenuService menuService;
    private final NewsletterService newsletterService;
    private final NewsletterFollowService newsletterFollowService;
    private final AccountService accountService;

    public HomeController(MenuService menuService, NewsletterService newsletterService,
            NewsletterFollowService newsletterFollowService, AccountService accountService) {
        this.menuService = menuService;
        this.newsletterService = newsletterService;
        this.newsletterFollowService = newsletterFollowService;
        this.accountService = accountService;
    }

    @GetMapping("")
    public String getHomePage(Model model) {
        model.addAttribute("f", new FeedBack());
        model.addAttribute("menu", this.menuService.getAll());
        NewsletterType newsletterType = new NewsletterType();
        newsletterType.setNewsletterTypeID(2);
        model.addAttribute("type2", this.newsletterService.getOneNewsletter(newsletterType, 1, 1, 1));
        model.addAttribute("list", this.newsletterService.getListActive(1, 1));
        return "client/index";
    }

    @GetMapping("/login")
    public String getLoginPage() {
        return "client/login";
    }

    @GetMapping("/blog")
    public String getBlogPage(Model model) {
        model.addAttribute("menu", this.menuService.getAll());
        return "client/blog";
    }

    @GetMapping("/deposit")
    public String getDepositPage(Model model) {
        model.addAttribute("menu", this.menuService.getAll());
        return "client/deposit";
    }

    @GetMapping("/admin")
    public String getAdminPage() {
        return "admin/dashboard/view";
    }

    @GetMapping("/error-page")
    public String getErrorPage() {
        return "admin/dashboard/error";
    }

    @GetMapping("/check")
    public String getCheck(Model model, HttpServletRequest request) {
        HttpSession session = request.getSession(false);
        String user = (String) session.getAttribute("username");
        Account account = this.accountService.getAccountByName(user);
        model.addAttribute("f", new FeedBack());
        model.addAttribute("menu", this.menuService.getAll());
        NewsletterType newsletterType = new NewsletterType();
        newsletterType.setNewsletterTypeID(2);
        model.addAttribute("type2", this.newsletterService.getOneNewsletter(newsletterType, 1, 1, 1));
        model.addAttribute("list", this.newsletterService.getListActive(1, 1));
        return "client/index";
    }
}
