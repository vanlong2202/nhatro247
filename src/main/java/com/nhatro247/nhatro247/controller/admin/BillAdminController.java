package com.nhatro247.nhatro247.controller.admin;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.nhatro247.nhatro247.entity.Account;
import com.nhatro247.nhatro247.entity.Bill;
import com.nhatro247.nhatro247.service.AccountService;
import com.nhatro247.nhatro247.service.BillService;

@Controller
public class BillAdminController {
    private final BillService billService;
    private final AccountService accountService;

    public BillAdminController(BillService billService, AccountService accountService) {
        this.billService = billService;
        this.accountService = accountService;
    }

    @GetMapping("/admin/bill-pending/{id}")
    public String getBillDetailAdmin(Model model, @PathVariable("id") long id) {
        model.addAttribute("bill", this.billService.getBillByID(id));
        return "admin/bill/detail";
    }

    @GetMapping("/admin/bill-submit/{id}")
    public String addAmout(@PathVariable("id") long id, RedirectAttributes redirectAttributes) {
        Bill bill = this.billService.getBillByID(id);
        Account account = this.accountService.getAccountByName(bill.getAccount().getUsername());
        if (bill != null && account != null) {
            LocalDateTime now = LocalDateTime.now();
            DateTimeFormatter formatter = DateTimeFormatter.ofPattern("HH:mm:ss dd/MM/yyyy");
            String formattedDate = now.format(formatter);
            int amount = Integer.parseInt(bill.getAmount());

            account.setBalance(account.getBalance() + amount);
            account.setDescription("[+ " + amount + " VNĐ Time: " + formattedDate + "]");

            bill.setIsStatus(1);
            bill.setConfirmTime(formattedDate);
            this.billService.addBill(bill);
            this.accountService.addAccount(account);
            redirectAttributes.addFlashAttribute("success", "Hóa đơn đã được xác thực thành công !");
            return "redirect:/admin/bill-pending";
        } else {
            redirectAttributes.addFlashAttribute("error", "Đã có lỗi xảy ra vui lòng thử lại !");
            return "redirect:/admin/bill-pending";
        }
    }

}
