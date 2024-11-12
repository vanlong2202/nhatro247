package com.nhatro247.nhatro247.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.nhatro247.nhatro247.entity.Role;
import com.nhatro247.nhatro247.repository.FeedBackRepository;
import com.nhatro247.nhatro247.service.AccountService;
import com.nhatro247.nhatro247.service.FeedBackService;
import com.nhatro247.nhatro247.service.NewsletterService;
import com.nhatro247.nhatro247.service.ReportService;

@Controller
public class AdminController {
    private final AccountService accountService;
    private final NewsletterService newsletterService;
    private final ReportService reportService;
    private final FeedBackService feedBackService;

    public AdminController(AccountService accountService, NewsletterService newsletterService,
            ReportService reportService, FeedBackService feedBackService) {
        this.accountService = accountService;
        this.newsletterService = newsletterService;
        this.reportService = reportService;
        this.feedBackService = feedBackService;
    }

    @GetMapping("/admin/account")
    public String getAdminAccountPage(Model model) {
        Role role = new Role();
        role.setRoleID(1);
        model.addAttribute("listAccount", this.accountService.getAllAccountUser(role));
        return "admin/account/view";
    }

    @GetMapping("/admin/service-pending")
    public String getServicePending(Model model) {
        model.addAttribute("news", this.newsletterService.getAllByStatus(0));
        return "admin/service/pending";
    }

    @GetMapping("/admin/service-processed")
    public String getProcessed(Model model) {
        model.addAttribute("news", this.newsletterService.getAllByStatusNot(0));
        return "admin/service/processed";
    }

    @GetMapping("/admin/service-refuse")
    public String getServiceRefuse(Model model) {
        return "admin/service/refuse";
    }

    @GetMapping("/admin/service-active")
    public String getServiceActive(Model model) {
        model.addAttribute("news", this.newsletterService.getAllByStatus(1));
        return "admin/service/active";
    }

    @GetMapping("/admin/service-svip")
    public String getPageSvip(Model model) {
        model.addAttribute("news", this.newsletterService.getAllBySvip(1));
        return "admin/service/svip";
    }

    @GetMapping("/admin/report-comfirm")
    public String getPageReport(Model model) {
        model.addAttribute("report", this.reportService.getAllByStatus(0));
        return "admin/report/comfirm";
    }

    @GetMapping("/admin/report-list")
    public String getPageListReport(Model model) {
        model.addAttribute("report", this.reportService.getAllByStatus(1));
        return "admin/report/view";
    }

    @GetMapping("/admin/contact-submit")
    public String getPageContact(Model model) {
        model.addAttribute("feedback", this.feedBackService.getAll());
        return "admin/contact/submit";
    }

    @GetMapping("/admin/contact-view")
    public String getPageContactView(Model model) {
        model.addAttribute("feedback", this.feedBackService.getAll());
        return "admin/contact/view";
    }

}
