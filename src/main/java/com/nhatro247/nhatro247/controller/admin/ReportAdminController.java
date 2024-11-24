package com.nhatro247.nhatro247.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestAttribute;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.nhatro247.nhatro247.entity.ReportNewsletter;
import com.nhatro247.nhatro247.service.ReportService;

@Controller
public class ReportAdminController {
    private final ReportService reportService;

    public ReportAdminController(ReportService reportService) {
        this.reportService = reportService;
    }

    @GetMapping("/admin/report-detail/{id}")
    public String getReportDetailAdmin(Model model, @PathVariable("id") long id) {
        model.addAttribute("report", this.reportService.getReportByID(id));
        return "admin/report/detail";
    }

    @GetMapping("/admin/report-comfirm/{id}")
    public String comfirmReport(@PathVariable("id") long id, RedirectAttributes redirectAttributes) {
        ReportNewsletter reportNewsletter = this.reportService.getReportByID(id);
        if (reportNewsletter != null) {
            reportNewsletter.setIsStatus(1);
            this.reportService.updateIsStatus(reportNewsletter);
        }
        redirectAttributes.addFlashAttribute("success", "Xác thực báo cáo thành công !");
        return "redirect:/admin/report-comfirm";
    }

    @GetMapping("/admin/report-delete/{id}")
    public String deleteReport(@PathVariable("id") long id, RedirectAttributes redirectAttributes) {
        this.reportService.deleteReport(id);
        redirectAttributes.addFlashAttribute("error", "Xóa báo cáo thành công !");
        return "redirect:/admin/report-list";
    }

}
