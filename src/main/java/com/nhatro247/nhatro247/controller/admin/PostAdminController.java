package com.nhatro247.nhatro247.controller.admin;

import java.net.http.HttpRequest;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.nhatro247.nhatro247.entity.Account;
import com.nhatro247.nhatro247.entity.Post;
import com.nhatro247.nhatro247.service.AccountService;
import com.nhatro247.nhatro247.service.PostService;
import com.nhatro247.nhatro247.service.UploadService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class PostAdminController {
    private final AccountService accountService;
    private final PostService postService;
    private final UploadService uploadService;

    public PostAdminController(AccountService accountService, PostService postService, UploadService uploadService) {
        this.accountService = accountService;
        this.postService = postService;
        this.uploadService = uploadService;
    }

    @PostMapping("/admin/add-post")
    public String addPost(Model model, @ModelAttribute("post") Post post, @RequestParam("file") MultipartFile files,
            HttpServletRequest request) {
        HttpSession session = request.getSession(false);
        String user = (String) session.getAttribute("username");
        Account account = this.accountService.getAccountByName(user);
        if (account != null) {
            post.setAccount(account);
            LocalDateTime now = LocalDateTime.now();
            DateTimeFormatter formatter = DateTimeFormatter.ofPattern("HH:mm:ss dd/MM/yyyy");
            String formattedDate = now.format(formatter);
            post.setCreateTime(formattedDate);
            String filename = this.uploadService.handeSaveOneUploadFile(files);
            post.setImage(filename);
            this.postService.addPost(post);
            post.setIsActive(1);
            return "redirect:/admin/addPost";
        }
        return "redirect:/admin/addPost";
    }

}
