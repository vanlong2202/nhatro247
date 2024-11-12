package com.nhatro247.nhatro247.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;

import com.nhatro247.nhatro247.entity.Account;
import com.nhatro247.nhatro247.entity.Newsletter;
import com.nhatro247.nhatro247.service.NewsletterService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;

@Controller
public class NewsletterAdminController {
    private final NewsletterService newsletterService;

    public NewsletterAdminController(NewsletterService newsletterService) {
        this.newsletterService = newsletterService;
    }

    @GetMapping("/admin/service-pending/{id}")
    public String getPageUpdate(Model model, @PathVariable("id") int id) {
        model.addAttribute("newsletter", this.newsletterService.getNewsletterByID(id));
        return "admin/service/pendingDetail";
    }

    @PostMapping("/admin/approve-submit")
    public String approveNewsletter(@ModelAttribute("newsletter") Newsletter newsletter, HttpServletRequest request) {
        HttpSession session = request.getSession(false);
        String user = (String) session.getAttribute("username");
        String name = (String) session.getAttribute("fullname");
        Newsletter news = this.newsletterService.getNewsletterByID(newsletter.getNewsletterID());
        if (news != null) {
            news.setIsActive(1);
            news.setIsStatus(1);
            news.setApprover(name + "(" + user + ")");
            this.newsletterService.addNewsletter(news);
        }
        return "redirect:/admin/service-pending";
    }

    @PostMapping("/admin/refuse-submit")
    public String refuseNewsletter(@ModelAttribute("newsletter") Newsletter newsletter, HttpServletRequest request) {
        HttpSession session = request.getSession(false);
        String user = (String) session.getAttribute("username");
        String name = (String) session.getAttribute("fullname");
        Newsletter news = this.newsletterService.getNewsletterByID(newsletter.getNewsletterID());
        if (news != null) {
            news.setIsActive(0);
            news.setIsStatus(2);
            news.setDescription(newsletter.getDescription());
            news.setApprover(name + "(" + user + ")");
            this.newsletterService.addNewsletter(news);
        }
        return "redirect:/admin/service-pending";
    }

    @GetMapping("/admin/newsletter-detail/{id}")
    public String getPageDetail(Model model, @PathVariable("id") int id) {
        model.addAttribute("newsletter", this.newsletterService.getNewsletterByID(id));
        return "admin/service/detail";
    }

    @GetMapping("/admin/newsletter-delete/{id}")
    public String getPageDelete(Model model, @PathVariable("id") int id) {
        model.addAttribute("newsletter", this.newsletterService.getNewsletterByID(id));
        return "admin/service/delete";
    }

    @PostMapping("/admin/delete-newsletter")
    public String deleteNewsletter(@ModelAttribute("newsletter") Newsletter newsletter) {
        this.newsletterService.deleteNewsletter(newsletter.getNewsletterID());
        return "redirect:/admin/service-processed";
    }

    @GetMapping("/admin/update-active/{id}")
    public String updateActive(Model model, @PathVariable("id") int id) {
        Newsletter newsletter = this.newsletterService.getNewsletterByID(id);
        if (newsletter != null) {
            int checkActive = newsletter.getIsActive();
            if (checkActive == 0) {
                newsletter.setIsActive(1);
            } else {
                newsletter.setIsActive(0);
            }
            this.newsletterService.addNewsletter(newsletter);
        }
        return "redirect:/admin/service-active";
    }

    @GetMapping("/admin/newsletter-svip/{id}")
    public String updateSvip(Model model, @PathVariable("id") int id) {
        Newsletter newsletter = this.newsletterService.getNewsletterByID(id);
        if (newsletter != null) {
            int checkSvip = newsletter.getSvip();
            if (checkSvip == 0) {
                newsletter.setSvip(1);
            } else {
                newsletter.setSvip(0);
            }
            this.newsletterService.addNewsletter(newsletter);
        }
        return "redirect:/admin/service-svip";
    }
}
