package com.nhatro247.nhatro247.controller;

import org.springframework.stereotype.Controller;

import com.nhatro247.nhatro247.entity.Account;
import com.nhatro247.nhatro247.entity.Newsletter;
import com.nhatro247.nhatro247.entity.NewsletterFollow;
import com.nhatro247.nhatro247.service.AccountService;
import com.nhatro247.nhatro247.service.NewsletterFollowService;
import com.nhatro247.nhatro247.service.NewsletterService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class NewsletterFollowController {
    private final NewsletterFollowService newsletterFollowService;
    private final AccountService accountService;
    private final NewsletterService newsletterService;

    public NewsletterFollowController(NewsletterFollowService newsletterFollowService,
            AccountService accountService, NewsletterService newsletterService) {
        this.newsletterFollowService = newsletterFollowService;
        this.accountService = accountService;
        this.newsletterService = newsletterService;
    }

    @GetMapping("/newsletter-follow/{id}")
    public String getMethodName(HttpServletRequest request, @PathVariable("id") long id) {
        HttpSession session = request.getSession(false);
        String user = (String) session.getAttribute("username");
        Account account = this.accountService.getAccountByName(user);
        Newsletter newsletter = this.newsletterService.getNewsletterByID(id);
        NewsletterFollow checkFollow = this.newsletterFollowService.getNewsletterFollowByAccountAndNewsletter(account,
                newsletter);
        if (checkFollow != null) {
            this.newsletterFollowService.deleteFollow(checkFollow);
        } else {
            NewsletterFollow newsletterFollow = new NewsletterFollow();
            newsletterFollow.setAccount(account);
            newsletterFollow.setNewsletter(newsletter);
            this.newsletterFollowService.addFollow(newsletterFollow);
        }
        return "redirect:/";
    }

}
