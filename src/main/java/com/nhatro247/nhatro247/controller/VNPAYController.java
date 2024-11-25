package com.nhatro247.nhatro247.controller;

import java.text.SimpleDateFormat;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.nhatro247.nhatro247.entity.Account;
import com.nhatro247.nhatro247.entity.Bill;
import com.nhatro247.nhatro247.entity.BillType;
import com.nhatro247.nhatro247.service.AccountService;
import com.nhatro247.nhatro247.service.BillService;
import com.nhatro247.nhatro247.service.MenuService;
import com.nhatro247.nhatro247.service.VNPAYService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class VNPAYController {
    @Autowired
    private VNPAYService vnPayService;

    private final MenuService menuService;
    private final BillService billService;
    private final AccountService accountService;

    public VNPAYController(MenuService menuService, BillService billService, AccountService accountService) {
        this.menuService = menuService;
        this.billService = billService;
        this.accountService = accountService;
    }

    @GetMapping("/submitOrder")
    public String submidOrder(@RequestParam("amount") int orderTotal,
            @RequestParam("orderInfo") String orderInfo,
            HttpServletRequest request) {
        String baseUrl = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort();
        String vnpayUrl = vnPayService.createOrder(orderTotal, orderInfo, baseUrl);
        return "redirect:" + vnpayUrl;
    }

    @GetMapping("/vnpay-payment")
    public String GetMapping(HttpServletRequest request, Model model) {
        HttpSession session = request.getSession(false);
        String user = (String) session.getAttribute("username");
        Account account = this.accountService.getAccountByName(user);
        int paymentStatus = vnPayService.orderReturn(request);

        String orderInfo = request.getParameter("vnp_OrderInfo");
        String paymentTime = request.getParameter("vnp_PayDate");
        String transactionId = request.getParameter("vnp_TransactionNo");
        String vnp_amount = request.getParameter("vnp_Amount");
        int int_amount = Integer.parseInt(vnp_amount);
        String amount = String.valueOf(int_amount / 100);

        String time = vnPayService.convertDate(paymentTime);
        model.addAttribute("orderInfo", orderInfo);
        model.addAttribute("totalPrice", amount);
        model.addAttribute("paymentTime", time);
        model.addAttribute("transactionId", transactionId);
        model.addAttribute("menu", this.menuService.getAll());
        if (paymentStatus == 1) {
            Bill bill = new Bill();
            BillType type = new BillType();
            type.setBillTypeID(1);
            bill.setAmount(amount);
            bill.setCreateTime(time);
            bill.setBillType(type);
            bill.setTransactionCode(transactionId);
            bill.setTransferContent(orderInfo);
            bill.setAccount(account);
            this.billService.addBill(bill);
            return "client/pay/paySuccess";
        } else {
            return "client/pay/payFail";
        }
    }

}
