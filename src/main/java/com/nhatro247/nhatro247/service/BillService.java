package com.nhatro247.nhatro247.service;

import java.math.BigDecimal;
import java.util.List;

import org.springframework.stereotype.Service;

import com.nhatro247.nhatro247.entity.Account;
import com.nhatro247.nhatro247.entity.Bill;
import com.nhatro247.nhatro247.repository.BillRepository;

@Service
public class BillService {
    private final BillRepository billRepository;

    public BillService(BillRepository billRepository) {
        this.billRepository = billRepository;
    }

    public Bill addBill(Bill bill) {
        return this.billRepository.save(bill);
    }

    public List<Bill> getAllByAccount(Account account) {
        return this.billRepository.findByAccount(account);
    }

    public List<Bill> getBillByIsStatus(int isStatus) {
        return this.billRepository.findByIsStatus(isStatus);
    }

    public Bill getBillByID(long billID) {
        return this.billRepository.findByBillID(billID);
    }

    public BigDecimal getTotalBillMonth(String month) {
        return this.billRepository.getTotalBillMonth(month);
    }
}
