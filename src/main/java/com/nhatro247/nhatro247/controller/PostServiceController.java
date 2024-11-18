package com.nhatro247.nhatro247.controller;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;

import org.springframework.http.ResponseEntity;
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
        Newsletter news = this.newsletterService.getNewsletterByID(newsletter.getNewsletterID());
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

    @PostMapping("/update-post")
    public String update(@ModelAttribute("infoNewsletterDTO") InfoNewsletterDTO infoNewsletterDTO,
            @RequestParam("file") MultipartFile[] files) {
        Account account = infoNewsletterDTO.getAccount();
        Account acc = this.accountService.getAccountByID(account.getAccountID());
        Newsletter newsletter = infoNewsletterDTO.getNewsletter();
        long newsletterID = newsletter.getNewsletterID();
        Newsletter news = this.newsletterService.getNewsletterByID(newsletter.getNewsletterID());
        if (acc != null && news != null) {
            acc.setFullName(account.getFullName());
            acc.setFacebook(account.getFacebook());
            acc.setEmail(account.getEmail());
            acc.setPhone(account.getPhone());
            this.accountService.addAccount(acc);

            LocalDateTime now = LocalDateTime.now();
            DateTimeFormatter formatter = DateTimeFormatter.ofPattern("HH:mm:ss dd/MM/yyyy");
            String formattedDate = now.format(formatter);
            news.setCreateTime(formattedDate);
            news.setTitle(newsletter.getTitle());
            news.setFormat(newsletter.getFormat());
            news.setSelfManagement(newsletter.getSelfManagement());
            news.setNewsletterType(newsletter.getNewsletterType());
            news.setVacantRoom(newsletter.getVacantRoom());
            news.setTotalRoom(newsletter.getTotalRoom());
            news.setMaximum(newsletter.getMaximum());
            news.setAcreage(newsletter.getAcreage());
            news.setPrice(newsletter.getPrice());
            news.setPrioritize(newsletter.getPrioritize());
            news.setNewsletterAddress(newsletter.getNewsletterAddress());
            news.setAddressDetail(newsletter.getAddressDetail());
            news.setDetail(newsletter.getDetail());
            news.setIsStatus(0);
            news.setIsActive(0);
            news.setDescription("");
            news.setApprover("");

            List<String> filenames = new ArrayList<>();
            for (MultipartFile file : files) {
                if (!file.isEmpty()) {
                    String filename = uploadService.handeSaveOneUploadFile(file);
                    filenames.add(filename);
                }
            }
            if (filenames.size() == 1) {
                news.setImage1(filenames.get(0));
            }

            if (filenames.size() == 2) {
                news.setImage1(filenames.get(0));
                news.setImage2(filenames.get(1));
            }

            if (filenames.size() == 3) {
                news.setImage1(filenames.get(0));
                news.setImage2(filenames.get(1));
                news.setImage3(filenames.get(2));
            }
            this.newsletterService.addNewsletter(news);
            return "redirect:/maneger-newsletter";
        } else {
            return "redirect:/delete-newsletter/" + newsletter.getNewsletterID();
        }
    }

}
