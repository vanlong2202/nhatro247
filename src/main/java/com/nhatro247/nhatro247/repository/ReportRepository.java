package com.nhatro247.nhatro247.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.nhatro247.nhatro247.entity.ReportNewsletter;
import java.util.List;

@Repository
public interface ReportRepository extends JpaRepository<ReportNewsletter, Long> {
    List<ReportNewsletter> findByIsStatus(int isStatus);

    ReportNewsletter findByReportID(long reportID);

    @Query(value = "select is_status as isstatus, count(*) as total from tbl_report group by is_status", nativeQuery = true)
    List<Object[]> getDashboardReport();

}
