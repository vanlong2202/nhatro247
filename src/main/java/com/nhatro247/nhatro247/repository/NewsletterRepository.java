package com.nhatro247.nhatro247.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.nhatro247.nhatro247.entity.Account;
import com.nhatro247.nhatro247.entity.Newsletter;
import java.util.List;

@Repository
public interface NewsletterRepository extends JpaRepository<Newsletter, Long> {
    List<Newsletter> findByIsStatus(int isStatus);

    List<Newsletter> findByIsStatusAndIsActive(int isStatus, int isActive);

    Newsletter findByNewsletterID(long newsletterID);

    List<Newsletter> findByAccount(Account account);
}
