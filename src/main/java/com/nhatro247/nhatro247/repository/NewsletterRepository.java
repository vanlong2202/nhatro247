package com.nhatro247.nhatro247.repository;

import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.nhatro247.nhatro247.entity.Account;
import com.nhatro247.nhatro247.entity.Newsletter;
import com.nhatro247.nhatro247.entity.NewsletterType;

import java.util.List;

@Repository
public interface NewsletterRepository extends JpaRepository<Newsletter, Long> {
    List<Newsletter> findByIsStatus(int isStatus);

    List<Newsletter> findByIsStatusAndIsActive(int isStatus, int isActive);

    List<Newsletter> findByIsStatusAndIsActiveAndSvip(int isStatus, int isActive, int svip);

    List<Newsletter> findBySvip(int svip);

    Newsletter findByNewsletterID(long newsletterID);

    List<Newsletter> findByAccount(Account account);

    List<Newsletter> findByIsStatusNot(int isStatus);

    void deleteById(Long id);

    Newsletter findTopOneByNewsletterTypeAndIsStatusAndIsActiveAndSvip(NewsletterType newsletterType, int isStatus,
            int isActive, int svip, Sort sort);
}
