package com.nhatro247.nhatro247.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;

import com.nhatro247.nhatro247.entity.FeedBack;
import com.nhatro247.nhatro247.service.FeedBackService;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;

@Controller
public class FeedbackAdminController {
    private final FeedBackService feedBackService;

    public FeedbackAdminController(FeedBackService feedBackService) {
        this.feedBackService = feedBackService;
    }

    @GetMapping("/admin/contact-submit")
    public String getPageContact(Model model) {
        model.addAttribute("feedback", this.feedBackService.getFeedBacksByStatus(0));
        return "admin/contact/submit";
    }

    @GetMapping("/admin/contact-view")
    public String getPageContactView(Model model) {
        model.addAttribute("feedback", this.feedBackService.getFeedBacksByStatus(1));
        return "admin/contact/view";
    }

    @GetMapping("/admin/contact-detail/{id}")
    public String getPageContactDetail(@PathVariable("id") long id, Model model) {
        model.addAttribute("feedback", this.feedBackService.getFeedBackByID(id));
        return "admin/contact/detail";
    }

    @GetMapping("/admin/contact-delete/{id}")
    public String getPageContactDelete(@PathVariable("id") long id, Model model) {
        model.addAttribute("feedback", this.feedBackService.getFeedBackByID(id));
        return "admin/contact/delete";
    }

    @PostMapping("/admin/contact-submit/delete")
    public String delete(@ModelAttribute("feedback") FeedBack feedback, RedirectAttributes redirectAttributes) {
        if (feedback != null) {
            FeedBack fb = this.feedBackService.getFeedBackByID(feedback.getFeedBackID());
            if (fb != null) {
                this.feedBackService.delete(fb);
                redirectAttributes.addFlashAttribute("success", "Liên hệ đã được xóa thành công!");
                return "redirect:/admin/contact-view";
            }
            redirectAttributes.addFlashAttribute("error", "Có lỗi xảy ra vui lòng thử lại !");
            return "redirect:/admin/contact-view";
        } else {
            redirectAttributes.addFlashAttribute("error", "Có lỗi xảy ra vui lòng thử lại !");
            return "redirect:/admin/contact-view";
        }

    }

    @PostMapping("/admin/contact-submit")
    public String submitContact(@ModelAttribute("feedback") FeedBack feedback, RedirectAttributes redirectAttributes) {
        if (feedback != null) {
            FeedBack fb = this.feedBackService.getFeedBackByID(feedback.getFeedBackID());
            fb.setIsStatus(1);
            this.feedBackService.add(fb);
            redirectAttributes.addFlashAttribute("success", "Xác thực liên hệ thành công !");
            return "redirect:/admin/contact-view";
        } else {
            redirectAttributes.addFlashAttribute("error", "Có lỗi xảy ra vui lòng thử lại!");
            return "redirect:/admin/contact-view";
        }
    }

}
