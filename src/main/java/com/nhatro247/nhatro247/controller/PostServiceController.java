package com.nhatro247.nhatro247.controller;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.nhatro247.nhatro247.entity.Account;
import com.nhatro247.nhatro247.entity.FeedBack;
import com.nhatro247.nhatro247.entity.Newsletter;
import com.nhatro247.nhatro247.entity.dto.InfoNewsletterDTO;
import com.nhatro247.nhatro247.service.AccountService;
import com.nhatro247.nhatro247.service.MenuService;
import com.nhatro247.nhatro247.service.NewsletterService;
import com.nhatro247.nhatro247.service.NewsletterTypeService;
import com.nhatro247.nhatro247.service.UploadService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;

@Controller
public class PostServiceController {
    private final MenuService menuService;
    private final AccountService accountService;
    private final NewsletterTypeService newsletterTypeService;
    private final NewsletterService newsletterService;
    private final UploadService uploadService;

    public PostServiceController(MenuService menuService,
            AccountService accountService,
            NewsletterTypeService newsletterTypeService,
            NewsletterService newsletterService,
            UploadService uploadService) {
        this.menuService = menuService;
        this.accountService = accountService;
        this.newsletterTypeService = newsletterTypeService;
        this.newsletterService = newsletterService;
        this.uploadService = uploadService;
    }

    @GetMapping("/post")
    public String getPostPage(Model model, HttpServletRequest request) {
        HttpSession session = request.getSession(false);
        model.addAttribute("menu", this.menuService.getAll());
        String user = (String) session.getAttribute("username");
        Account account = this.accountService.getAccountByName(user);
        InfoNewsletterDTO dto = new InfoNewsletterDTO();
        dto.setAccount(account);
        dto.setNewsletter(new Newsletter());
        model.addAttribute("infoNewsletterDTO", dto);
        model.addAttribute("newsletterType", this.newsletterTypeService.getAllType());
        return "client/post";
    }

    @PostMapping("/new/port")
    public String add(@ModelAttribute("infoNewsletterDTO") InfoNewsletterDTO infoNewsletterDTO,
            @RequestParam("file") MultipartFile[] files) {
        Account account = infoNewsletterDTO.getAccount();
        Account acc = this.accountService.getAccountByID(account.getAccountID());
        if (acc != null) {
            acc.setFullName(account.getFullName());
            acc.setFacebook(account.getFacebook());
            acc.setEmail(account.getEmail());
            acc.setPhone(account.getPhone());
            this.accountService.addAccount(acc);
        }
        Newsletter newsletter = infoNewsletterDTO.getNewsletter();
        LocalDateTime now = LocalDateTime.now();
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("HH:mm:ss dd/MM/yyyy");
        String formattedDate = now.format(formatter);
        newsletter.setCreateTime(formattedDate);
        newsletter.setAccount(account);
        List<String> filename = this.uploadService.handeSaveUploadFile(files);
        String image1 = filename.get(0);
        String image2 = filename.get(1);
        String image3 = filename.get(2);
        newsletter.setImage1(image1);
        newsletter.setImage2(image2);
        newsletter.setImage3(image3);
        this.newsletterService.addNewsletter(newsletter);
        return "redirect:/post";
    }

}
