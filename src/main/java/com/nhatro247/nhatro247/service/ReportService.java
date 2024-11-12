package com.nhatro247.nhatro247.service;

import java.util.List;

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

    public List<ReportNewsletter> getAllByStatus(int isStatus) {
        return this.reportRepository.findByIsStatus(isStatus);
    }

    public ReportNewsletter getReportByID(long id) {
        return this.reportRepository.findByReportID(id);
    }

    public ReportNewsletter updateIsStatus(ReportNewsletter reportNewsletter) {
        return this.reportRepository.save(reportNewsletter);
    }

    public void deleteReport(long id) {
        this.reportRepository.deleteById(id);
    }
}
