package com.nhatro247.nhatro247.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;

import com.nhatro247.nhatro247.entity.ReportNewsletter;
import com.nhatro247.nhatro247.service.ReportService;

@Controller
public class ReportAdminController {
    private final ReportService reportService;

    public ReportAdminController(ReportService reportService) {
        this.reportService = reportService;
    }

    @GetMapping("/admin/report-comfirm/{id}")
    public String comfirmReport(@PathVariable("id") long id) {
        ReportNewsletter reportNewsletter = this.reportService.getReportByID(id);
        if (reportNewsletter != null) {
            reportNewsletter.setIsStatus(1);
            this.reportService.updateIsStatus(reportNewsletter);
        }
        return "redirect:/admin/report-comfirm";
    }

    @GetMapping("/admin/report-delete/{id}")
    public String deleteReport(@PathVariable("id") long id) {
        this.reportService.deleteReport(id);
        return "redirect:/admin/report-list";
    }

}
