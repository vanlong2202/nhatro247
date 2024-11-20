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
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.nhatro247.nhatro247.entity.Account;
import com.nhatro247.nhatro247.entity.FeedBack;
import com.nhatro247.nhatro247.entity.Newsletter;
import com.nhatro247.nhatro247.entity.Post;
import com.nhatro247.nhatro247.entity.PostType;
import com.nhatro247.nhatro247.entity.dto.InfoNewsletterDTO;
import com.nhatro247.nhatro247.service.AccountService;
import com.nhatro247.nhatro247.service.MenuService;
import com.nhatro247.nhatro247.service.NewsletterService;
import com.nhatro247.nhatro247.service.NewsletterTypeService;
import com.nhatro247.nhatro247.service.PostService;
import com.nhatro247.nhatro247.service.PostTypeService;
import com.nhatro247.nhatro247.service.UploadService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;

@Controller
public class PostController {
    private final MenuService menuService;
    private final AccountService accountService;
    private final NewsletterTypeService newsletterTypeService;
    private final NewsletterService newsletterService;
    private final UploadService uploadService;
    private final PostService postService;
    private final PostTypeService postTypeService;

    public PostController(MenuService menuService,
            AccountService accountService,
            NewsletterTypeService newsletterTypeService,
            NewsletterService newsletterService,
            UploadService uploadService, PostService postService, PostTypeService postTypeService) {
        this.menuService = menuService;
        this.accountService = accountService;
        this.newsletterTypeService = newsletterTypeService;
        this.newsletterService = newsletterService;
        this.uploadService = uploadService;
        this.postService = postService;
        this.postTypeService = postTypeService;
    }

    @GetMapping("/blog-detail/{id}")
    public String getBlogDetail(Model model, @PathVariable("id") long id) {
        Post post = this.postService.getPostByID(id);
        PostType type = post.getPostType();
        model.addAttribute("menu", this.menuService.getAll());
        model.addAttribute("post", this.postService.getPostByID(id));
        model.addAttribute("postRelate", this.postService.getPostByIDNot(type, 1, id));
        return "client/blogDetail";
    }

    @GetMapping("/blog-type/{id}")
    public String getMethodName(Model model, @PathVariable("id") int id) {
        PostType postType = this.postTypeService.getTypeByID(id);
        model.addAttribute("menu", this.menuService.getAll());
        model.addAttribute("listPost", this.postService.getPostByIsActiveAndTypeID(postType, 1));
        model.addAttribute("type", postType);
        return "client/blogType";
    }

}
