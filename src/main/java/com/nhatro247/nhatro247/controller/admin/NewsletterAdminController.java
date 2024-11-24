package com.nhatro247.nhatro247.controller.admin;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;

import com.nhatro247.nhatro247.entity.Newsletter;
import com.nhatro247.nhatro247.entity.NewsletterFollow;
import com.nhatro247.nhatro247.service.NewsletterFollowService;
import com.nhatro247.nhatro247.service.NewsletterService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class NewsletterAdminController {
    private final NewsletterService newsletterService;
    private final NewsletterFollowService newsletterFollowService;

    public NewsletterAdminController(NewsletterService newsletterService,
            NewsletterFollowService newsletterFollowService) {
        this.newsletterService = newsletterService;
        this.newsletterFollowService = newsletterFollowService;
    }

    @GetMapping("/admin/service-pending/{id}")
    public String getPageUpdate(Model model, @PathVariable("id") int id) {
        model.addAttribute("newsletter", this.newsletterService.getNewsletterByID(id));
        return "admin/service/pendingDetail";
    }

    @PostMapping("/admin/approve-submit")
    public String approveNewsletter(@ModelAttribute("newsletter") Newsletter newsletter, HttpServletRequest request,
            RedirectAttributes redirectAttributes) {
        HttpSession session = request.getSession(false);
        int userID = (Integer) session.getAttribute("id");
        String name = (String) session.getAttribute("fullname");
        Newsletter news = this.newsletterService.getNewsletterByID(newsletter.getNewsletterID());
        if (news != null) {
            news.setIsActive(1);
            news.setIsStatus(1);
            news.setApprover(name + "(" + userID + ")");
            this.newsletterService.addNewsletter(news);
        }
        redirectAttributes.addFlashAttribute("success", "Bản tin đã được phê duyệt !");
        return "redirect:/admin/service-pending";
    }

    @PostMapping("/admin/refuse-submit")
    public String refuseNewsletter(@ModelAttribute("newsletter") Newsletter newsletter, HttpServletRequest request,
            RedirectAttributes redirectAttributes) {
        HttpSession session = request.getSession(false);
        int userID = (Integer) session.getAttribute("id");
        String name = (String) session.getAttribute("fullname");
        Newsletter news = this.newsletterService.getNewsletterByID(newsletter.getNewsletterID());
        if (news != null) {
            news.setIsActive(0);
            news.setIsStatus(2);
            news.setDescription(newsletter.getDescription());
            news.setApprover(name + "(" + userID + ")");
            this.newsletterService.addNewsletter(news);
        }
        redirectAttributes.addFlashAttribute("error", "Bản tin đã bị từ chối !");
        return "redirect:/admin/service-pending";
    }

    @GetMapping("/admin/newsletter-detail/{id}")
    public String getPageDetail(Model model, @PathVariable("id") int id) {
        model.addAttribute("newsletter", this.newsletterService.getNewsletterByID(id));
        return "admin/service/detail";
    }

    @GetMapping("/admin/newsletter-delete/{id}")
    public String getPageDelete(Model model, @PathVariable("id") int id) {
        model.addAttribute("newsletter", this.newsletterService.getNewsletterByID(id));
        return "admin/service/delete";
    }

    @PostMapping("/admin/delete-newsletter")
    public String deleteNewsletter(@ModelAttribute("newsletter") Newsletter newsletter,
            RedirectAttributes redirectAttributes) {
        this.newsletterFollowService.deleteByNewsletter(newsletter);
        this.newsletterService.deleteNewsletter(newsletter.getNewsletterID());
        redirectAttributes.addFlashAttribute("error", "Xóa bản tin thành công !");
        return "redirect:/admin/service-processed";
    }

    @GetMapping("/admin/update-active/{id}")
    public String updateActive(Model model, @PathVariable("id") int id, RedirectAttributes redirectAttributes) {
        Newsletter newsletter = this.newsletterService.getNewsletterByID(id);
        if (newsletter != null) {
            int checkActive = newsletter.getIsActive();
            if (checkActive == 0) {
                newsletter.setIsActive(1);
                redirectAttributes.addFlashAttribute("success", "Bật trạng thái hoạt động bản tin thành công !");
            } else {
                newsletter.setIsActive(0);
                redirectAttributes.addFlashAttribute("error", "Tắt trạng thái hoạt động bản tin thành công !");
            }
            this.newsletterService.addNewsletter(newsletter);
        }
        return "redirect:/admin/service-active";
    }

    @GetMapping("/admin/newsletter-svip/{id}")
    public String updateSvip(Model model, @PathVariable("id") int id, RedirectAttributes redirectAttributes) {
        Newsletter newsletter = this.newsletterService.getNewsletterByID(id);
        if (newsletter != null) {
            int checkSvip = newsletter.getSvip();
            if (checkSvip == 0) {
                newsletter.setSvip(1);
                this.newsletterService.addNewsletter(newsletter);
                redirectAttributes.addFlashAttribute("svip", "Cập nhật vị trí SVIP bản tin thành công !");
                return "redirect:/admin/service-processed";
            } else {
                newsletter.setSvip(0);
                this.newsletterService.addNewsletter(newsletter);
                redirectAttributes.addFlashAttribute("error", "Xóa bản tin khỏi vị trí SVIP !");
                return "redirect:/admin/service-svip";
            }
        }
        redirectAttributes.addFlashAttribute("error", "Đã có lỗi xảy ra, vui lòng thử lại");
        return "admin/service/processed";
    }
}
