package com.nhatro247.nhatro247.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;

import com.nhatro247.nhatro247.entity.Account;
import com.nhatro247.nhatro247.repository.AccountRepository;
import com.nhatro247.nhatro247.service.AccountService;

@Controller
public class AccountAdminController {
    private final AccountService accountService;

    public AccountAdminController(AccountService accountService) {
        this.accountService = accountService;
    }

    @GetMapping("/admin/update-info/{id}")
    public String getPageUpdate(Model model, @PathVariable("id") int id) {
        model.addAttribute("info", this.accountService.getAccountByID(id));
        return "admin/account/update";
    }

    @PostMapping("/admin/update-submit")
    public String updateAccount(@ModelAttribute("info") Account account) {
        Account acc = this.accountService.getAccountByID(account.getAccountID());
        if (acc != null) {
            acc.setFullName(account.getFullName());
            acc.setAddress(account.getAddress());
            acc.setEmail(account.getEmail());
            acc.setPhone(account.getPhone());
            acc.setFacebook(account.getFacebook());
            this.accountService.addAccount(acc);
            return "redirect:/admin/account";
        } else {
            return "redirect:/admin/update-info/" + acc.getAccountID();
        }
    }

    @GetMapping("/admin/delete-info/{id}")
    public String getPageDelete(Model model, @PathVariable("id") int id) {
        model.addAttribute("info", this.accountService.getAccountByID(id));
        return "admin/account/delete";
    }

    @PostMapping("/admin/delete-submit")
    public String deleAccount(@ModelAttribute("info") Account account) {
        this.accountService.deleAccount(account.getAccountID());
        return "redirect:/admin/account";
    }
}
