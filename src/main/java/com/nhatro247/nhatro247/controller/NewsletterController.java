package com.nhatro247.nhatro247.controller;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Optional;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import com.nhatro247.nhatro247.entity.Account;
import com.nhatro247.nhatro247.entity.Newsletter;
import com.nhatro247.nhatro247.entity.NewsletterFollow;
import com.nhatro247.nhatro247.entity.Newsletter_;
import com.nhatro247.nhatro247.entity.ReportNewsletter;
import com.nhatro247.nhatro247.entity.dto.InfoNewsletterDTO;
import com.nhatro247.nhatro247.entity.dto.NewsletterCriteriaDTO;
import com.nhatro247.nhatro247.service.AccountService;
import com.nhatro247.nhatro247.service.MenuService;
import com.nhatro247.nhatro247.service.NewsletterService;
import com.nhatro247.nhatro247.service.NewsletterTypeService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class NewsletterController {
    private final NewsletterService newsletterService;
    private final MenuService menuService;
    private final AccountService accountService;
    private final NewsletterTypeService newsletterTypeService;

    public NewsletterController(NewsletterService newsletterService, MenuService menuService,
            AccountService accountService, NewsletterTypeService newsletterTypeService) {
        this.newsletterService = newsletterService;
        this.menuService = menuService;
        this.accountService = accountService;
        this.newsletterTypeService = newsletterTypeService;
    }

    @GetMapping("/newsletter-detail/{id}")
    public String getNewsletterDetailPage(Model model, @PathVariable("id") int id) {
        model.addAttribute("menu", this.menuService.getAll());
        model.addAttribute("newsletters", this.newsletterService.getNewsletterByID(id));
        model.addAttribute("report", new ReportNewsletter());
        return "client/newsletterDetail";
    }

    @GetMapping("/manager-edit-newsletter/{id}")
    public String editNewsletter(Model model, @PathVariable("id") long id, HttpServletRequest request) {
        HttpSession session = request.getSession(false);
        String user = (String) session.getAttribute("username");
        Account account = this.accountService.getAccountByName(user);
        Newsletter newsletter = this.newsletterService.getNewsletterByID(id);
        InfoNewsletterDTO infoNewsletterDTO = new InfoNewsletterDTO();
        infoNewsletterDTO.setAccount(account);
        infoNewsletterDTO.setNewsletter(newsletter);
        model.addAttribute("menu", this.menuService.getAll());
        model.addAttribute("infoNewsletterDTO", infoNewsletterDTO);
        model.addAttribute("newsletterType", this.newsletterTypeService.getAllType());
        return "client/updateNewsletter";
    }

    @GetMapping("/service")
    public String getServicePage(Model model, NewsletterCriteriaDTO newsletterCriteriaDTO, HttpServletRequest request) {
        int page = 1;
        try {
            if (newsletterCriteriaDTO.getPage().isPresent()) {
                page = Integer.parseInt(newsletterCriteriaDTO.getPage().get());
            }
        } catch (Exception e) {
        }
        Pageable pageable = PageRequest.of(page - 1, 6);

        if (newsletterCriteriaDTO.getSort() != null && newsletterCriteriaDTO.getSort().isPresent()) {
            String sort = newsletterCriteriaDTO.getSort().get();
            if (sort.equals("moi-nhat")) {
                pageable = PageRequest.of(page - 1, 6, Sort.by(Newsletter_.CREATE_TIME).descending());

            } else if (sort.equals("gia-giam-dan")) {
                pageable = PageRequest.of(page - 1, 6, Sort.by(Newsletter_.PRICE).descending());

            } else if (sort.equals("gia-tang-dan")) {
                pageable = PageRequest.of(page - 1, 6, Sort.by(Newsletter_.PRICE).ascending());

            } else {
                pageable = PageRequest.of(page - 1, 6);
            }
        } else {
            pageable = PageRequest.of(page - 1, 6, Sort.by(Newsletter_.CREATE_TIME).descending());
        }

        Page<Newsletter> getPage = this.newsletterService.getAllSpecs(pageable, newsletterCriteriaDTO);
        List<Newsletter> list = getPage.getContent().size() > 0 ? getPage.getContent() : new ArrayList<Newsletter>();

        String qs = request.getQueryString();
        if (qs != null && !qs.isBlank()) {
            qs = qs.replace("page=" + page, "");
        }
        model.addAttribute("menu", this.menuService.getAll());
        model.addAttribute("list", list);
        model.addAttribute("request", getPage.getTotalElements());
        model.addAttribute("curentPage", page);
        model.addAttribute("totalPages", getPage.getTotalPages());
        model.addAttribute("queryString", qs);
        return "client/service";
    }

    @GetMapping("/delete-newsletter/{id}")
    public String deleteNewsletterClient(@PathVariable("id") long id) {
        Newsletter newsletter = this.newsletterService.getNewsletterByID(id);
        if (newsletter != null) {
            this.newsletterService.deleteNewsletter(id);
            return "redirect:/maneger-newsletter";
        }
        return "/client/manager";
    }

    @GetMapping("/update-active-newsletter/{id}")
    public String updateAtive(@PathVariable("id") long id) {
        Newsletter newsletter = this.newsletterService.getNewsletterByID(id);
        if (newsletter != null) {
            if (newsletter.getIsActive() == 0) {
                newsletter.setIsActive(1);
            } else {
                newsletter.setIsActive(0);
            }
            this.newsletterService.addNewsletter(newsletter);
            return "redirect:/maneger-newsletter";
        }
        return "client/manager";
    }

    @GetMapping("/update-svip-newsletter/{id}")
    public String updateSvip(@PathVariable("id") long id) {
        Newsletter newsletter = this.newsletterService.getNewsletterByID(id);
        if (newsletter != null) {
            newsletter.setSvip(1);
            this.newsletterService.addNewsletter(newsletter);
            return "redirect:/maneger-newsletter";
        }
        return "client/manager";
    }

}
