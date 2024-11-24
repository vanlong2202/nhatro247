package com.nhatro247.nhatro247.repository;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.nhatro247.nhatro247.entity.Account;
import com.nhatro247.nhatro247.entity.Newsletter;
import com.nhatro247.nhatro247.entity.NewsletterType;
import com.nhatro247.nhatro247.entity.Post;

import java.util.List;

@Repository
public interface NewsletterRepository extends JpaRepository<Newsletter, Long>, JpaSpecificationExecutor<Newsletter> {
    List<Newsletter> findByIsStatus(int isStatus);

    List<Newsletter> findByIsStatusAndAccount(int isStatus, Account account);

    Page<Newsletter> findAll(Pageable pageable);

    Page<Newsletter> findAll(Specification<Newsletter> spec, Pageable pageable);

    List<Newsletter> findByIsStatusAndIsActive(int isStatus, int isActive);

    List<Newsletter> findByIsStatusAndSvip(int isStatus, int svip);

    List<Newsletter> findByIsStatusAndIsActiveAndSvip(int isStatus, int isActive, int svip);

    List<Newsletter> findBySvip(int svip);

    List<Newsletter> findByAccountAndSvip(Account account, int svip);

    Newsletter findByNewsletterID(long newsletterID);

    List<Newsletter> findByAccount(Account account);

    List<Newsletter> findByIsStatusNot(int isStatus);

    void deleteById(Long id);

    Newsletter findTopOneByNewsletterTypeAndIsStatusAndIsActiveAndSvip(NewsletterType newsletterType, int isStatus,
            int isActive, int svip, Sort sort);

    @Query(value = "Select * from tbl_newsletter where is_status=1 and is_active=1 and svip=1 order by create_time desc", nativeQuery = true)
    List<Newsletter> findNewsletterSvip();

    @Query(value = "SELECT * FROM tbl_newsletter where newsletterid not like :id and is_status=1 and is_active=1 and newsletter_typeid = :typeID and newsletter_address like :address order by create_time desc limit 3", nativeQuery = true)
    List<Newsletter> findLimit3ByNotID(@Param("typeID") long typeID, @Param("address") String address,
            @Param("id") int id);
}
