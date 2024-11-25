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
import com.nhatro247.nhatro247.entity.dto.DashboardNewsletterDTO;

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

        @Query(value = "WITH recent_dates AS (\n" + //
                        "    SELECT DISTINCT \n" + //
                        "        SUBSTRING(create_time, 10, 10) AS date\n" + //
                        "    FROM \n" + //
                        "        tbl_newsletter\n" + //
                        "    ORDER BY \n" + //
                        "        SUBSTRING(create_time, 10, 10) DESC\n" + //
                        "),\n" + //
                        "status_is AS (\n" + //
                        "    SELECT DISTINCT is_status\n" + //
                        "    FROM tbl_newsletter\n" + //
                        ")\n" + //
                        "SELECT \n" + //
                        "    d.date,\n" + //
                        "    t.is_status as statusID,\n" + //
                        "    COUNT(n.create_time) AS count\n" + //
                        "FROM \n" + //
                        "    recent_dates d\n" + //
                        "CROSS JOIN \n" + //
                        "    status_is t\n" + //
                        "LEFT JOIN \n" + //
                        "    tbl_newsletter n\n" + //
                        "ON \n" + //
                        "    SUBSTRING(n.create_time, 10, 10) = d.date\n" + //
                        "    AND n.is_status = t.is_status\n" + //
                        "GROUP BY \n" + //
                        "    d.date, t.is_status\n" + //
                        "ORDER BY \n" + //
                        "    d.date DESC, t.is_status;\n" + //
                        "\n" + //
                        "", nativeQuery = true)
        List<Object[]> getDashboardNewsAdmin();
}
