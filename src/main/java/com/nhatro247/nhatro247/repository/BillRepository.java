package com.nhatro247.nhatro247.repository;

import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.nhatro247.nhatro247.entity.Account;
import com.nhatro247.nhatro247.entity.Bill;
import com.nhatro247.nhatro247.entity.BillType;

import java.math.BigDecimal;
import java.util.List;

@Repository
public interface BillRepository extends JpaRepository<Bill, Long> {
    List<Bill> findByAccount(Account account, Sort sort);

    List<Bill> findByIsStatus(int isStatus);

    Bill findByBillID(long billID);

    List<Bill> findByBillTypeAndAccount(BillType billType, Account account, Sort sort);

    @Query(value = "SELECT  SUM(amount) AS total_amount FROM tbl_bill WHERE SUBSTRING(confirm_time, 13, 13) like :month AND bill_typeid=1;", nativeQuery = true)
    BigDecimal getTotalBillMonth(@Param("month") String month);
}
