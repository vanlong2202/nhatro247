package com.nhatro247.nhatro247.controller;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Optional;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import com.nhatro247.nhatro247.entity.Account;
import com.nhatro247.nhatro247.entity.Newsletter;
import com.nhatro247.nhatro247.entity.NewsletterFollow;
import com.nhatro247.nhatro247.entity.NewsletterType;
import com.nhatro247.nhatro247.entity.Newsletter_;
import com.nhatro247.nhatro247.entity.ReportNewsletter;
import com.nhatro247.nhatro247.entity.dto.InfoNewsletterDTO;
import com.nhatro247.nhatro247.entity.dto.NewsletterCriteriaDTO;
import com.nhatro247.nhatro247.service.AccountService;
import com.nhatro247.nhatro247.service.MenuService;
import com.nhatro247.nhatro247.service.NewsletterService;
import com.nhatro247.nhatro247.service.NewsletterTypeService;
import com.nhatro247.nhatro247.service.UploadService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class NewsletterController {
    private final NewsletterService newsletterService;
    private final MenuService menuService;
    private final AccountService accountService;
    private final NewsletterTypeService newsletterTypeService;
    private final UploadService uploadService;

    public NewsletterController(NewsletterService newsletterService, MenuService menuService,
            AccountService accountService, NewsletterTypeService newsletterTypeService, UploadService uploadService) {
        this.newsletterService = newsletterService;
        this.menuService = menuService;
        this.accountService = accountService;
        this.newsletterTypeService = newsletterTypeService;
        this.uploadService = uploadService;
    }

    @GetMapping("/newsletter-detail/{id}")
    public String getNewsletterDetailPage(Model model, @PathVariable("id") int id) {
        Newsletter newsletter = this.newsletterService.getNewsletterByID(id);
        NewsletterType type = newsletter.getNewsletterType();
        long typeID = type.getNewsletterTypeID();
        String address = newsletter.getNewsletterAddress();
        model.addAttribute("menu", this.menuService.getAll());
        model.addAttribute("newsletters", newsletter);
        model.addAttribute("newsletterRelate", this.newsletterService.getTop3Relate(typeID, address, id));
        model.addAttribute("report", new ReportNewsletter());
        return "client/newsletterDetail";
    }

    @GetMapping("/manager-edit-newsletter/{id}")
    public String editNewsletter(Model model, @PathVariable("id") long id, HttpServletRequest request) {
        HttpSession session = request.getSession(false);
        String user = (String) session.getAttribute("username");
        Account account = this.accountService.getAccountByName(user);
        Newsletter newsletter = this.newsletterService.getNewsletterByID(id);
        InfoNewsletterDTO infoNewsletterDTO = new InfoNewsletterDTO();
        infoNewsletterDTO.setAccount(account);
        infoNewsletterDTO.setNewsletter(newsletter);
        model.addAttribute("menu", this.menuService.getAll());
        model.addAttribute("infoNewsletterDTO", infoNewsletterDTO);
        model.addAttribute("newsletterType", this.newsletterTypeService.getAllType());
        return "client/updateNewsletter";
    }

    @GetMapping("/service")
    public String getServicePage(Model model, NewsletterCriteriaDTO newsletterCriteriaDTO, HttpServletRequest request) {
        int page = 1;
        try {
            if (newsletterCriteriaDTO.getPage().isPresent()) {
                page = Integer.parseInt(newsletterCriteriaDTO.getPage().get());
            }
        } catch (Exception e) {
        }
        Pageable pageable = PageRequest.of(page - 1, 6);

        if (newsletterCriteriaDTO.getSort() != null && newsletterCriteriaDTO.getSort().isPresent()) {
            String sort = newsletterCriteriaDTO.getSort().get();
            if (sort.equals("moi-nhat")) {
                pageable = PageRequest.of(page - 1, 6, Sort.by(Newsletter_.CREATE_TIME).descending());

            } else if (sort.equals("gia-giam-dan")) {
                pageable = PageRequest.of(page - 1, 6, Sort.by(Newsletter_.PRICE).descending());

            } else if (sort.equals("gia-tang-dan")) {
                pageable = PageRequest.of(page - 1, 6, Sort.by(Newsletter_.PRICE).ascending());

            } else {
                pageable = PageRequest.of(page - 1, 6);
            }
        } else {
            pageable = PageRequest.of(page - 1, 6, Sort.by(Newsletter_.CREATE_TIME).descending());
        }

        Page<Newsletter> getPage = this.newsletterService.getAllSpecs(pageable, newsletterCriteriaDTO);
        List<Newsletter> list = getPage.getContent().size() > 0 ? getPage.getContent() : new ArrayList<Newsletter>();

        String qs = request.getQueryString();
        if (qs != null && !qs.isBlank()) {
            qs = qs.replace("page=" + page, "");
        }
        model.addAttribute("menu", this.menuService.getAll());
        model.addAttribute("list", list);
        model.addAttribute("request", getPage.getTotalElements());
        model.addAttribute("curentPage", page);
        model.addAttribute("totalPages", getPage.getTotalPages());
        model.addAttribute("queryString", qs);
        return "client/service";
    }

    @GetMapping("/delete-newsletter/{id}")
    public String deleteNewsletterClient(@PathVariable("id") long id, RedirectAttributes redirectAttributes) {
        Newsletter newsletter = this.newsletterService.getNewsletterByID(id);
        if (newsletter != null) {
            this.newsletterService.deleteNewsletter(id);
            redirectAttributes.addFlashAttribute("success", "Xóa bản tin thành công !");
            return "redirect:/maneger-newsletter";
        } else {
            redirectAttributes.addFlashAttribute("error", "Đã có lỗi xảy ra, vui lòng thử lại !");
            return "/client/manager";
        }

    }

    @GetMapping("/update-active-newsletter/{id}")
    public String updateAtive(@PathVariable("id") long id, RedirectAttributes redirectAttributes) {
        Newsletter newsletter = this.newsletterService.getNewsletterByID(id);
        if (newsletter != null) {
            if (newsletter.getIsStatus() == 1) {
                if (newsletter.getIsActive() == 0) {
                    newsletter.setIsActive(1);
                } else {
                    newsletter.setIsActive(0);
                }
                this.newsletterService.addNewsletter(newsletter);
                redirectAttributes.addFlashAttribute("success", "Cập nhật trạng thái hoạt động bản tin thành công !");
                return "redirect:/maneger-newsletter";
            } else {
                redirectAttributes.addFlashAttribute("error", "Đã có lỗi xảy ra, vui lòng thử lại !");
                return "redirect:/maneger-newsletter";
            }
        } else {
            redirectAttributes.addFlashAttribute("error", "Đã có lỗi xảy ra, vui lòng thử lại !");
            return "redirect:/maneger-newsletter";
        }
    }

    @GetMapping("/update-svip-newsletter/{id}")
    public String updateSvip(@PathVariable("id") long id, RedirectAttributes redirectAttributes) {
        Newsletter newsletter = this.newsletterService.getNewsletterByID(id);
        if (newsletter != null) {
            newsletter.setSvip(1);
            this.newsletterService.addNewsletter(newsletter);
            redirectAttributes.addFlashAttribute("success", "Cập nhật trạng thái SVIP bản tin thành công !");
            return "redirect:/maneger-newsletter";
        } else {
            redirectAttributes.addFlashAttribute("error", "Đã có lỗi xảy ra, vui lòng thử lại !");
            return "client/manager";
        }
    }

    @GetMapping("/post")
    public String getPostPage(Model model, HttpServletRequest request) {
        HttpSession session = request.getSession(false);
        model.addAttribute("menu", this.menuService.getAll());
        String user = (String) session.getAttribute("username");
        Account account = this.accountService.getAccountByName(user);
        InfoNewsletterDTO dto = new InfoNewsletterDTO();
        dto.setAccount(account);
        dto.setNewsletter(new Newsletter());
        model.addAttribute("infoNewsletterDTO", dto);
        model.addAttribute("newsletterType", this.newsletterTypeService.getAllType());
        return "client/post";
    }

    @PostMapping("/new/port")
    public String add(@ModelAttribute("infoNewsletterDTO") InfoNewsletterDTO infoNewsletterDTO,
            @RequestParam("file") MultipartFile[] files, RedirectAttributes redirectAttributes) {
        Account account = infoNewsletterDTO.getAccount();
        Account acc = this.accountService.getAccountByID(account.getAccountID());
        if (acc != null) {
            acc.setFullName(account.getFullName());
            acc.setFacebook(account.getFacebook());
            acc.setEmail(account.getEmail());
            acc.setPhone(account.getPhone());
            this.accountService.addAccount(acc);
            Newsletter newsletter = infoNewsletterDTO.getNewsletter();
            LocalDateTime now = LocalDateTime.now();
            DateTimeFormatter formatter = DateTimeFormatter.ofPattern("HH:mm:ss dd/MM/yyyy");
            Newsletter news = this.newsletterService.getNewsletterByID(newsletter.getNewsletterID());
            String formattedDate = now.format(formatter);
            newsletter.setCreateTime(formattedDate);
            newsletter.setAccount(account);
            List<String> filename = this.uploadService.handeSaveUploadFile(files);
            String image1 = filename.get(0);
            String image2 = filename.get(1);
            String image3 = filename.get(2);
            newsletter.setImage1(image1);
            newsletter.setImage2(image2);
            newsletter.setImage3(image3);
            this.newsletterService.addNewsletter(newsletter);
            redirectAttributes.addFlashAttribute("success", "Đăng bản tin thành công, vui lòng đợi phê duyệt !");
            return "redirect:/post";
        } else {
            redirectAttributes.addFlashAttribute("error", "Đã có lỗi xảy ra vui lòng thử lại !");
            return "client/post";
        }
    }

    @PostMapping("/update-post")
    public String update(@ModelAttribute("infoNewsletterDTO") InfoNewsletterDTO infoNewsletterDTO,
            @RequestParam("file") MultipartFile[] files, RedirectAttributes redirectAttributes) {
        Account account = infoNewsletterDTO.getAccount();
        Account acc = this.accountService.getAccountByID(account.getAccountID());
        Newsletter newsletter = infoNewsletterDTO.getNewsletter();
        long newsletterID = newsletter.getNewsletterID();
        Newsletter news = this.newsletterService.getNewsletterByID(newsletter.getNewsletterID());
        if (acc != null && news != null) {
            acc.setFullName(account.getFullName());
            acc.setFacebook(account.getFacebook());
            acc.setEmail(account.getEmail());
            acc.setPhone(account.getPhone());
            this.accountService.addAccount(acc);

            LocalDateTime now = LocalDateTime.now();
            DateTimeFormatter formatter = DateTimeFormatter.ofPattern("HH:mm:ss dd/MM/yyyy");
            String formattedDate = now.format(formatter);
            news.setCreateTime(formattedDate);
            news.setTitle(newsletter.getTitle());
            news.setFormat(newsletter.getFormat());
            news.setSelfManagement(newsletter.getSelfManagement());
            news.setNewsletterType(newsletter.getNewsletterType());
            news.setVacantRoom(newsletter.getVacantRoom());
            news.setTotalRoom(newsletter.getTotalRoom());
            news.setMaximum(newsletter.getMaximum());
            news.setAcreage(newsletter.getAcreage());
            news.setPrice(newsletter.getPrice());
            news.setPrioritize(newsletter.getPrioritize());
            news.setNewsletterAddress(newsletter.getNewsletterAddress());
            news.setAddressDetail(newsletter.getAddressDetail());
            news.setDetail(newsletter.getDetail());
            news.setIsStatus(0);
            news.setIsActive(0);
            news.setDescription("");
            news.setApprover("");

            List<String> filenames = new ArrayList<>();
            for (MultipartFile file : files) {
                if (!file.isEmpty()) {
                    String filename = uploadService.handeSaveOneUploadFile(file);
                    filenames.add(filename);
                }
            }
            if (filenames.size() == 1) {
                news.setImage1(filenames.get(0));
            }

            if (filenames.size() == 2) {
                news.setImage1(filenames.get(0));
                news.setImage2(filenames.get(1));
            }

            if (filenames.size() == 3) {
                news.setImage1(filenames.get(0));
                news.setImage2(filenames.get(1));
                news.setImage3(filenames.get(2));
            }
            this.newsletterService.addNewsletter(news);
            redirectAttributes.addFlashAttribute("success", "Cập nhật thông tin thành công !");
            return "redirect:/maneger-newsletter";
        } else {
            redirectAttributes.addFlashAttribute("error", "Đã có lỗi xảy ra, vui lòng thử lại!");
            return "redirect:/manager-edit-newsletter/" + newsletter.getNewsletterID();
        }
    }

}
