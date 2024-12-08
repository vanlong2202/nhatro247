package com.nhatro247.nhatro247.controller.admin;

import java.math.BigDecimal;
import java.math.RoundingMode;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.util.Date;
import java.util.List;

import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.nhatro247.nhatro247.entity.Post;
import com.nhatro247.nhatro247.entity.Role;
import com.nhatro247.nhatro247.entity.dto.DashboardAccountDTO;
import com.nhatro247.nhatro247.entity.dto.DashboardFeedbackDTO;
import com.nhatro247.nhatro247.entity.dto.DashboardNewsletterDTO;
import com.nhatro247.nhatro247.entity.dto.DashboardReportDTO;
import com.nhatro247.nhatro247.service.AccountService;
import com.nhatro247.nhatro247.service.BillService;
import com.nhatro247.nhatro247.service.FeedBackService;
import com.nhatro247.nhatro247.service.NewsletterService;
import com.nhatro247.nhatro247.service.PostService;
import com.nhatro247.nhatro247.service.PostTypeService;
import com.nhatro247.nhatro247.service.ReportService;

@Controller
public class AdminController {
    private final AccountService accountService;
    private final NewsletterService newsletterService;
    private final ReportService reportService;
    private final FeedBackService feedBackService;
    private final PostTypeService postTypeService;
    private final PostService postService;
    private final BillService billService;

    public AdminController(AccountService accountService, NewsletterService newsletterService,
            ReportService reportService, FeedBackService feedBackService, PostTypeService postTypeService,
            PostService postService, BillService billService) {
        this.accountService = accountService;
        this.newsletterService = newsletterService;
        this.reportService = reportService;
        this.feedBackService = feedBackService;
        this.postTypeService = postTypeService;
        this.postService = postService;
        this.billService = billService;
    }

    @GetMapping("/admin")
    public String getAdminPage(Model model) {
        Date date = new Date();
        SimpleDateFormat formatter = new SimpleDateFormat("MM");
        String currentMonth = formatter.format(date);

        LocalDate today = LocalDate.now();
        LocalDate lastMonth = today.minusMonths(1);
        int lastMonthValue = lastMonth.getMonthValue();

        if (currentMonth.length() < 2) {
            String month = "0" + currentMonth + "%";
        }
        String month = currentMonth + "%";

        if (lastMonthValue < 10) {
            String lastmonth = "0" + lastMonthValue + "%";
        }
        String lastmonth = lastMonthValue + "%";

        BigDecimal totalBillMonthValue = this.billService.getTotalBillMonth(month);
        if (totalBillMonthValue == null) {
            totalBillMonthValue = new BigDecimal("0");
        }
        BigDecimal totalBillLastMonthValue = this.billService.getTotalBillMonth(lastmonth);
        BigDecimal difference = totalBillMonthValue.subtract(totalBillLastMonthValue);
        BigDecimal percentageChange = difference
                .divide(totalBillLastMonthValue, 2, RoundingMode.HALF_UP)
                .multiply(new BigDecimal("100"));

        int totalNewsletterMonth = this.newsletterService.getTotalNewsMonth(month);
        int totalNewsletterLastMonth = this.newsletterService.getTotalNewsMonth(lastmonth);
        double percentageNews = totalNewsletterMonth;
        if (totalNewsletterLastMonth != 0) {
            percentageNews = ((double) (totalNewsletterMonth - totalNewsletterLastMonth) / totalNewsletterLastMonth)
                    * 100;
        }
        int countReport = this.reportService.getALL().size();
        int countAcc = this.accountService.getAllAccounts().size();
        List<DashboardReportDTO> dashboardReportDTOs = this.reportService.getStatictisReport();

        List<DashboardFeedbackDTO> dashboardFeedbackDTOs = this.feedBackService.getStatictisDashBoard();

        List<DashboardAccountDTO> dashboardAccountDTOs = this.accountService.getAccStatitisDB();
        model.addAttribute("dbAccount", dashboardAccountDTOs);
        model.addAttribute("dbFeedBack", dashboardFeedbackDTOs);
        model.addAttribute("dbReport", dashboardReportDTOs);
        model.addAttribute("countReport", countReport);
        model.addAttribute("countTotalAcc", countAcc);
        model.addAttribute("newsmonth", totalNewsletterMonth);
        model.addAttribute("newslastmonth", totalNewsletterLastMonth);
        model.addAttribute("percentageNews", percentageNews);
        model.addAttribute("countAcc", this.accountService.countAccountDashboard());
        model.addAttribute("percentageChange", percentageChange);
        model.addAttribute("totalBillMonth", totalBillMonthValue);
        model.addAttribute("month", currentMonth);
        model.addAttribute("lastmonth", lastMonthValue);
        model.addAttribute("totalBillLastMonth", totalBillLastMonthValue);
        return "admin/dashboard/view";
    }

    @GetMapping("/admin/account")
    public String getAdminAccountPage(Model model) {
        Role role = new Role();
        role.setRoleID(1);
        model.addAttribute("listAccount", this.accountService.getAllAccountUser(role));
        return "admin/account/view";
    }

    @GetMapping("/admin/service-pending")
    public String getServicePending(Model model) {
        model.addAttribute("news", this.newsletterService.getAllByStatus(0));
        return "admin/service/pending";
    }

    @GetMapping("/admin/service-processed")
    public String getProcessed(Model model) {
        model.addAttribute("news", this.newsletterService.getAllByStatusNot(0));
        return "admin/service/processed";
    }

    @GetMapping("/admin/service-refuse")
    public String getServiceRefuse(Model model) {
        return "admin/service/refuse";
    }

    @GetMapping("/admin/service-active")
    public String getServiceActive(Model model) {
        model.addAttribute("news", this.newsletterService.getAllByStatus(1));
        return "admin/service/active";
    }

    @GetMapping("/admin/service-svip")
    public String getPageSvip(Model model) {
        model.addAttribute("news", this.newsletterService.getAllBySvip(1));
        return "admin/service/svip";
    }

    @GetMapping("/admin/report-comfirm")
    public String getPageReport(Model model) {
        model.addAttribute("report", this.reportService.getAllByStatus(0));
        return "admin/report/comfirm";
    }

    @GetMapping("/admin/report-list")
    public String getPageListReport(Model model) {
        model.addAttribute("report", this.reportService.getAllByStatus(1));
        return "admin/report/view";
    }

    @GetMapping("/admin/contact-submit")
    public String getPageContact(Model model) {
        model.addAttribute("feedback", this.feedBackService.getAll());
        return "admin/contact/submit";
    }

    @GetMapping("/admin/contact-view")
    public String getPageContactView(Model model) {
        model.addAttribute("feedback", this.feedBackService.getAll());
        return "admin/contact/view";
    }

    @GetMapping("/admin/addPost")
    public String getPageAddPost(Model model) {
        model.addAttribute("post", new Post());
        model.addAttribute("type", this.postTypeService.getAll());
        return "admin/post/addPost";
    }

    @GetMapping("/admin/post")
    public String getAdminPostPage(Model model) {
        Role role = new Role();
        role.setRoleID(1);
        model.addAttribute("listPost", this.postService.getAll());
        return "admin/post/view";
    }

    @GetMapping("/admin/bill-pending")
    public String getBillPendingAdmin(Model model) {
        model.addAttribute("bills", this.billService.getBillByIsStatus(0));
        return "admin/bill/pending";
    }

    @GetMapping("/api/dashboard/chart-data")
    public ResponseEntity<List<DashboardNewsletterDTO>> getStatistics() {
        List<DashboardNewsletterDTO> statistics = newsletterService.getStatictisNews();
        return ResponseEntity.ok(statistics);
    }

}
