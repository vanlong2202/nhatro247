package com.nhatro247.nhatro247.controller;

import java.net.http.HttpClient;
import java.util.ArrayList;
import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.nhatro247.nhatro247.entity.Account;
import com.nhatro247.nhatro247.entity.BillType;
import com.nhatro247.nhatro247.entity.Newsletter;
import com.nhatro247.nhatro247.entity.Newsletter_;
import com.nhatro247.nhatro247.entity.Role;
import com.nhatro247.nhatro247.entity.dto.NewsletterCriteriaDTO;
import com.nhatro247.nhatro247.service.AccountService;
import com.nhatro247.nhatro247.service.BillService;
import com.nhatro247.nhatro247.service.MenuService;
import com.nhatro247.nhatro247.service.NewsletterFollowService;
import com.nhatro247.nhatro247.service.NewsletterService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.bind.annotation.RequestBody;

@Controller
public class AccountController {

    private final AccountService accountService;
    private final MenuService menuService;
    private final PasswordEncoder passwordEncoder;
    private final NewsletterService newsletterService;
    private final NewsletterFollowService newsletterFollowService;
    private final BillService billService;

    public AccountController(AccountService accountService,
            PasswordEncoder passwordEncoder,
            MenuService menuService,
            NewsletterService newsletterService, NewsletterFollowService newsletterFollowService,
            BillService billService) {
        this.accountService = accountService;
        this.passwordEncoder = passwordEncoder;
        this.menuService = menuService;
        this.newsletterService = newsletterService;
        this.newsletterFollowService = newsletterFollowService;
        this.billService = billService;
    }

    @GetMapping("/profile")
    public String getAccountManegerPage(Model model, HttpServletRequest request) {
        HttpSession session = request.getSession(false);
        model.addAttribute("menu", this.menuService.getAll());
        String user = (String) session.getAttribute("username");
        Account account = this.accountService.getAccountByName(user);
        model.addAttribute("info", account);
        model.addAttribute("bills", this.billService.getAllByAccount(account));
        return "client/profile";
    }

    @GetMapping("/update-profile")
    public String getPageUpdateProfile(Model model, HttpServletRequest request) {
        HttpSession session = request.getSession(false);
        model.addAttribute("menu", this.menuService.getAll());
        String user = (String) session.getAttribute("username");
        Account account = this.accountService.getAccountByName(user);
        model.addAttribute("info", account);
        return "client/updateProfile";
    }

    @PostMapping("/update-info")
    public String updateAccount(@ModelAttribute("info") Account account) {
        Account acc = this.accountService.getAccountByID(account.getAccountID());
        if (acc != null) {
            acc.setFullName(account.getFullName());
            acc.setAddress(account.getAddress());
            acc.setEmail(account.getEmail());
            acc.setPhone(account.getPhone());

            this.accountService.addAccount(acc);
            return "redirect:/profile";
        } else {
            return "client/profile";
        }

    }

    @GetMapping("/register")
    public String showRegistrationForm(Model model) {
        model.addAttribute("account", new Account());
        return "client/register";
    }

    @PostMapping("/register")
    public String registerAccount(Model model, Account account, RedirectAttributes redirectAttributes) {
        Account checkUser = this.accountService.getAccountByName(account.getUsername());
        Account checkEmail = this.accountService.getAccByEmail("vanlong.check@gmail.com");
        if (checkEmail != null) {
            System.out.println("Email đã được dùng");
        }
        if (checkUser == null) {
            Role role = new Role();
            role.setRoleID(1);
            account.setRole(role);
            String hashPass = this.passwordEncoder.encode(account.getPassword());
            account.setPassword(hashPass);
            this.accountService.addAccount(account);
            redirectAttributes.addFlashAttribute("success", "Đăng kí tài khoản thành công");
            return "redirect:/login";
        } else {
            redirectAttributes.addFlashAttribute("error", "Tên đăng nhập đã được sử dụng !");
            return "redirect:/login";
        }
    }

    @GetMapping("/maneger-newsletter")
    public String getNewsletterManegerPage(Model model, HttpServletRequest request,
            NewsletterCriteriaDTO newsletterCriteriaDTO) {
        HttpSession session = request.getSession(false);
        String user = (String) session.getAttribute("username");
        Account account = this.accountService.getAccountByName(user);

        int page = 1;
        int limit = 10;
        try {
            if (newsletterCriteriaDTO.getPage().isPresent()) {
                page = Integer.parseInt(newsletterCriteriaDTO.getPage().get());
            }
        } catch (Exception e) {
        }
        Pageable pageable = PageRequest.of(page - 1, limit,
                Sort.by(Newsletter_.CREATED_DATE, Newsletter_.SVIP).descending());
        Page<Newsletter> listPage = this.newsletterService.findByIsStatusAndAccount(pageable, 1, account);
        List<Newsletter> list = listPage.getContent().size() > 0 ? listPage.getContent() : new ArrayList<Newsletter>();
        model.addAttribute("info", account);
        model.addAttribute("menu", this.menuService.getAll());
        model.addAttribute("news", list);
        model.addAttribute("curentPage", page);
        model.addAttribute("totalPages", listPage.getTotalPages());
        model.addAttribute("refuse", this.newsletterService.findByIsStatusAndAccount(2, account));
        model.addAttribute("pending", this.newsletterService.findByIsStatusAndAccount(0, account));
        model.addAttribute("svip", this.newsletterService.findByAccountAndSvip(account, 1));
        model.addAttribute("countActive", listPage.getTotalElements());
        model.addAttribute("countRefuse", this.newsletterService.findByIsStatusAndAccount(2, account).size());
        model.addAttribute("countPending", this.newsletterService.findByIsStatusAndAccount(0, account).size());
        model.addAttribute("countSvip", this.newsletterService.findByAccountAndSvip(account, 1).size());
        return "client/manager";
    }

    @GetMapping("/newsletter-save")
    public String getSave(Model model, HttpServletRequest request) {
        HttpSession session = request.getSession(false);
        model.addAttribute("menu", this.menuService.getAll());
        String user = (String) session.getAttribute("username");
        Account account = this.accountService.getAccountByName(user);
        model.addAttribute("save", this.newsletterFollowService.getAllByAccount(account));
        return "client/follow";
    }

    @GetMapping("/deposit")
    public String getDepositPage(Model model, HttpServletRequest request) {
        HttpSession session = request.getSession(false);
        String user = (String) session.getAttribute("username");
        Account account = this.accountService.getAccountByName(user);
        BillType type = new BillType();
        type.setBillTypeID(1);
        model.addAttribute("menu", this.menuService.getAll());
        model.addAttribute("bills", this.billService.getAllByType(type, account));
        return "client/deposit";
    }
}
