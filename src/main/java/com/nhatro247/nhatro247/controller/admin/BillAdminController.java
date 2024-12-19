package com.nhatro247.nhatro247.controller.admin;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.nhatro247.nhatro247.entity.Account;
import com.nhatro247.nhatro247.entity.Bill;
import com.nhatro247.nhatro247.entity.dto.ItemsBillDTO;
import com.nhatro247.nhatro247.service.AccountService;
import com.nhatro247.nhatro247.service.BillService;
import com.nhatro247.nhatro247.service.BillTypeService;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;

@Controller
public class BillAdminController {
    private final BillService billService;
    private final AccountService accountService;
    private final BillTypeService billtypeService;

    public BillAdminController(BillService billService, AccountService accountService,
            BillTypeService billtypeService) {
        this.billService = billService;
        this.accountService = accountService;
        this.billtypeService = billtypeService;
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

    @GetMapping("/admin/transaction")
    public String getPageTransaction(Model model) {
        model.addAttribute("bills", this.billService.getAll());
        return "admin/bill/transaction";
    }

    @GetMapping("/admin/financial")
    public String getPageFinancial(Model model) {
        model.addAttribute("listAccount", this.accountService.getAllAccounts());
        model.addAttribute("billType", this.billtypeService.getAll());
        ItemsBillDTO itemsBillDTO = new ItemsBillDTO();
        model.addAttribute("itemsBillDTO", itemsBillDTO);
        return "admin/bill/financial";
    }

    @PostMapping("/admin/bill/create")
    public String creatBill(@ModelAttribute("itemsBillDTO") ItemsBillDTO itemsBillDTO,
            RedirectAttributes redirectAttributes, Model model) {
        Account account = this.accountService.getAccountByName(itemsBillDTO.getAccount().getUsername());
        long amount = Integer.parseInt(itemsBillDTO.getBill().getAmount());
        if (account != null) {
            if (itemsBillDTO.getBill().getBillType().getBillTypeID() == 2) {
                if (account.getBalance() >= amount) {
                    account.setBalance(account.getBalance() - amount);
                    LocalDateTime now = LocalDateTime.now();
                    DateTimeFormatter formatter = DateTimeFormatter.ofPattern("HH:mm:ss dd/MM/yyyy");
                    DateTimeFormatter code = DateTimeFormatter.ofPattern("yyyyMMddHHmmss");
                    String formattedDate = now.format(formatter);
                    String paycode = now.format(code);
                    Bill bill = new Bill();
                    bill.setAccount(account);
                    bill.setAmount(itemsBillDTO.getBill().getAmount());
                    bill.setBillType(itemsBillDTO.getBill().getBillType());
                    bill.setConfirmTime(formattedDate);
                    bill.setIsStatus(1);
                    bill.setTransferContent(itemsBillDTO.getBill().getTransferContent());
                    bill.setTransactionCode(paycode);
                    bill.setCreateTime(formattedDate);
                    this.billService.addBill(bill);
                    redirectAttributes.addFlashAttribute("success", "Thực hiện xử lí thành công!");
                    return "redirect:/admin/financial";
                } else {
                    redirectAttributes.addFlashAttribute("error", "Có lỗi xảy ra, Vui lòng kiểm tra lại !");
                    return "redirect:/admin/financial";
                }
            } else {
                account.setBalance(account.getBalance() + amount);
                LocalDateTime now = LocalDateTime.now();
                DateTimeFormatter formatter = DateTimeFormatter.ofPattern("HH:mm:ss dd/MM/yyyy");
                DateTimeFormatter code = DateTimeFormatter.ofPattern("yyyyMMddHHmmss");
                String formattedDate = now.format(formatter);
                String paycode = now.format(code);
                Bill bill = new Bill();
                bill.setAccount(account);
                bill.setAmount(itemsBillDTO.getBill().getAmount());
                bill.setBillType(itemsBillDTO.getBill().getBillType());
                bill.setConfirmTime(formattedDate);
                bill.setIsStatus(1);
                bill.setTransferContent(itemsBillDTO.getBill().getTransferContent());
                bill.setTransactionCode(paycode);
                bill.setCreateTime(formattedDate);
                this.billService.addBill(bill);
                redirectAttributes.addFlashAttribute("success", "Thực hiện xử lí thành công!");
                return "redirect:/admin/financial";
            }
        } else {
            redirectAttributes.addFlashAttribute("error", "Vui lòng chọn thông tin người dùng để thực hiện thao tác");
            return "redirect:/admin/financial";
        }

    }
}
