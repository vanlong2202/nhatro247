package com.nhatro247.nhatro247.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.nhatro247.nhatro247.entity.Account;
import com.nhatro247.nhatro247.entity.Bill;
import java.util.List;

@Repository
public interface BillRepository extends JpaRepository<Bill, Long> {
    List<Bill> findByAccount(Account account);

    List<Bill> findByIsStatus(int isStatus);

    Bill findByBillID(long billID);
}
