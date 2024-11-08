package com.nhatro247.nhatro247.service;

import org.springframework.stereotype.Service;

import com.nhatro247.nhatro247.entity.ReportNewsletter;
import com.nhatro247.nhatro247.repository.ReportRepository;

@Service
public class ReportService {
    private final ReportRepository reportRepository;

    public ReportService(ReportRepository reportRepository) {
        this.reportRepository = reportRepository;
    }

    public ReportNewsletter addReport(ReportNewsletter reportNewsletter) {
        return this.reportRepository.save(reportNewsletter);
    }
}
