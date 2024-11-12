package com.nhatro247.nhatro247.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.nhatro247.nhatro247.entity.ReportNewsletter;
import java.util.List;

@Repository
public interface ReportRepository extends JpaRepository<ReportNewsletter, Long> {
    List<ReportNewsletter> findByIsStatus(int isStatus);

    ReportNewsletter findByReportID(long reportID);
}
