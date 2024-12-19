package com.nhatro247.nhatro247.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.nhatro247.nhatro247.entity.Account;
import com.nhatro247.nhatro247.entity.BillType;
import com.nhatro247.nhatro247.entity.FeedBack;
import com.nhatro247.nhatro247.entity.NewsletterType;
import com.nhatro247.nhatro247.entity.Post;
import com.nhatro247.nhatro247.entity.PostType;
import com.nhatro247.nhatro247.service.AccountService;
import com.nhatro247.nhatro247.service.BillService;
import com.nhatro247.nhatro247.service.MenuService;
import com.nhatro247.nhatro247.service.NewsletterFollowService;
import com.nhatro247.nhatro247.service.NewsletterService;
import com.nhatro247.nhatro247.service.PostService;
import com.nhatro247.nhatro247.service.PostTypeService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class HomeController {
    private final MenuService menuService;
    private final NewsletterService newsletterService;
    private final NewsletterFollowService newsletterFollowService;
    private final AccountService accountService;
    private final PostService postService;
    private final PostTypeService postTypeService;
    private final BillService billService;

    public HomeController(MenuService menuService, NewsletterService newsletterService,
            NewsletterFollowService newsletterFollowService, AccountService accountService, PostService postService,
            PostTypeService postTypeService, BillService billService) {
        this.menuService = menuService;
        this.newsletterService = newsletterService;
        this.newsletterFollowService = newsletterFollowService;
        this.accountService = accountService;
        this.postService = postService;
        this.postTypeService = postTypeService;
        this.billService = billService;
    }

    @GetMapping("")
    public String getHomePage(Model model, HttpServletRequest request) {
        HttpSession session = request.getSession(false);
        String user = (String) session.getAttribute("username");
        Account account = this.accountService.getAccountByName(user);
        model.addAttribute("f", new FeedBack());
        model.addAttribute("menu", this.menuService.getAll());
        NewsletterType newsletterType = new NewsletterType();
        newsletterType.setNewsletterTypeID(2);
        NewsletterType newsletterType3 = new NewsletterType();
        newsletterType3.setNewsletterTypeID(3);
        model.addAttribute("follow", this.newsletterFollowService.getAllByAccount(account));
        model.addAttribute("type2", this.newsletterService.getOneNewsletter(newsletterType, 1, 1, 1));
        model.addAttribute("type3", this.newsletterService.getOneNewsletter(newsletterType3, 1, 1, 1));
        model.addAttribute("list", this.newsletterService.getAllNewslettersSvip());
        model.addAttribute("posts", this.postService.getTop4Post());
        model.addAttribute("itemsLink", this.newsletterService.gItemsNewsletterAddressDTOs());
        return "client/index";
    }

    @GetMapping("/login")
    public String getLoginPage(Model model) {
        model.addAttribute("account", new Account());
        return "client/auth/login";
    }

    @GetMapping("/blog")
    public String getBlogPage(Model model) {
        Map<Integer, List<Post>> postByTypeID = new HashMap<>();
        model.addAttribute("menu", this.menuService.getAll());
        model.addAttribute("postTop10", this.postService.getTop10Post());
        List<PostType> postType = this.postTypeService.getAll();
        for (PostType type : postType) {
            int typeID = type.getPostTypeID();
            List<Post> posts = this.postService.getTop4PostByTypeID(typeID);
            postByTypeID.put(typeID, posts);
        }
        model.addAttribute("postType", this.postTypeService.getAll());
        model.addAttribute("postByTypeID", postByTypeID);
        return "client/blog/blog";
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
        return "client/test";
    }

    @GetMapping("/instruct")
    public String getInstruct(Model model) {
        model.addAttribute("menu", this.menuService.getAll());
        return "client/instruct";
    }

}
