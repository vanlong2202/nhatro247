package com.nhatro247.nhatro247.controller;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Optional;

import org.antlr.v4.runtime.atn.SemanticContext.AND;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import com.nhatro247.nhatro247.entity.Account;
import com.nhatro247.nhatro247.entity.Bill;
import com.nhatro247.nhatro247.entity.BillType;
import com.nhatro247.nhatro247.entity.Newsletter;
import com.nhatro247.nhatro247.entity.NewsletterFollow;
import com.nhatro247.nhatro247.entity.NewsletterType;
import com.nhatro247.nhatro247.entity.Newsletter_;
import com.nhatro247.nhatro247.entity.ReportNewsletter;
import com.nhatro247.nhatro247.entity.dto.InfoNewsletterDTO;
import com.nhatro247.nhatro247.entity.dto.NewsletterCriteriaDTO;
import com.nhatro247.nhatro247.service.AccountService;
import com.nhatro247.nhatro247.service.BillService;
import com.nhatro247.nhatro247.service.MenuService;
import com.nhatro247.nhatro247.service.NewsletterFollowService;
import com.nhatro247.nhatro247.service.NewsletterService;
import com.nhatro247.nhatro247.service.NewsletterTypeService;
import com.nhatro247.nhatro247.service.UploadService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestHeader;
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
    private final BillService billService;
    private final NewsletterFollowService newsletterFollowService;

    public NewsletterController(NewsletterService newsletterService, MenuService menuService,
            AccountService accountService, NewsletterTypeService newsletterTypeService, UploadService uploadService,
            BillService billService, NewsletterFollowService newsletterFollowService) {
        this.newsletterService = newsletterService;
        this.menuService = menuService;
        this.accountService = accountService;
        this.newsletterTypeService = newsletterTypeService;
        this.uploadService = uploadService;
        this.billService = billService;
        this.newsletterFollowService = newsletterFollowService;
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
        return "client/service/newsletterDetail";
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
        return "client/service/updateNewsletter";
    }

    @GetMapping("/service")
    public String getServicePage(Model model, NewsletterCriteriaDTO newsletterCriteriaDTO, HttpServletRequest request) {
        HttpSession session = request.getSession(false);
        String user = (String) session.getAttribute("username");
        Account account = this.accountService.getAccountByName(user);
        int page = 1;
        int limit = 10;
        try {
            if (newsletterCriteriaDTO.getPage().isPresent()) {
                page = Integer.parseInt(newsletterCriteriaDTO.getPage().get());
            }
        } catch (Exception e) {
        }
        Pageable pageable = PageRequest.of(page - 1, limit);

        if (newsletterCriteriaDTO.getSort() != null && newsletterCriteriaDTO.getSort().isPresent()) {
            String sort = newsletterCriteriaDTO.getSort().get();
            if (sort.equals("moi-nhat")) {
                pageable = PageRequest.of(page - 1, limit, Sort.by(Newsletter_.CREATED_DATE).descending());
            } else if (sort.equals("gia-giam-dan")) {
                pageable = PageRequest.of(page - 1, limit, Sort.by(Newsletter_.PRICE).descending());
            } else if (sort.equals("gia-tang-dan")) {
                pageable = PageRequest.of(page - 1, limit, Sort.by(Newsletter_.PRICE).ascending());
            } else {
                pageable = PageRequest.of(page - 1, limit);
            }
        } else {
            pageable = PageRequest.of(page - 1, limit, Sort.by(Newsletter_.SVIP, Newsletter_.CREATE_TIME).descending());
        }

        Page<Newsletter> getPage = this.newsletterService.getAllSpecs(1, 1, pageable, newsletterCriteriaDTO);
        List<Newsletter> list = getPage.getContent().size() > 0 ? getPage.getContent() : new ArrayList<Newsletter>();

        String qs = request.getQueryString();
        if (qs != null && !qs.isBlank()) {
            qs = qs.replace("page=" + page, "");
        }

        model.addAttribute("follow", this.newsletterFollowService.getAllByAccount(account));
        model.addAttribute("menu", this.menuService.getAll());
        model.addAttribute("list", list);
        model.addAttribute("request", getPage.getTotalElements());
        model.addAttribute("curentPage", page);
        model.addAttribute("totalPages", getPage.getTotalPages());
        model.addAttribute("queryString", qs);
        model.addAttribute("itemsLink", this.newsletterService.gItemsNewsletterAddressDTOs());
        return "client/service/service";
    }

    @GetMapping("/delete-newsletter/{id}")
    public String deleteNewsletterClient(@PathVariable("id") long id, RedirectAttributes redirectAttributes,
            @RequestHeader("Referer") String referer) {
        Newsletter newsletter = this.newsletterService.getNewsletterByID(id);
        if (newsletter != null) {
            this.newsletterService.deleteNewsletter(id);
            redirectAttributes.addFlashAttribute("success", "Xóa bản tin thành công !");
            return "redirect:" + referer;
        } else {
            redirectAttributes.addFlashAttribute("error", "Đã có lỗi xảy ra, vui lòng thử lại !");
            return "redirect:" + referer;
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
    public String updateSvip(@PathVariable("id") long id, RedirectAttributes redirectAttributes,
            HttpServletRequest request) {
        HttpSession session = request.getSession(false);
        String user = (String) session.getAttribute("username");
        Account account = this.accountService.getAccountByName(user);
        Newsletter newsletter = this.newsletterService.getNewsletterByID(id);
        if (newsletter != null && account != null && account.getBalance() > 99000) {
            LocalDateTime now = LocalDateTime.now();
            DateTimeFormatter formatter = DateTimeFormatter.ofPattern("HH:mm:ss dd/MM/yyyy");
            String formattedDate = now.format(formatter);
            DateTimeFormatter code = DateTimeFormatter.ofPattern("HHmmssddMMyyyy");
            String paycode = now.format(code);

            account.setBalance(account.getBalance() - 99000);
            account.setDescription(account.getDescription() + "[-99000 VNĐ Time:" + formattedDate + "]");
            this.accountService.addAccount(account);

            Bill bill = new Bill();
            BillType billType = new BillType();
            billType.setBillTypeID(2);
            bill.setAmount("99000");
            bill.setBillType(billType);
            bill.setAccount(account);
            bill.setConfirmTime(formattedDate);
            bill.setCreateTime(formattedDate);
            bill.setIsStatus(1);
            bill.setTransferContent("svip " + account.getUsername() + "");
            bill.setTransactionCode(paycode);
            this.billService.addBill(bill);

            newsletter.setSvip(1);
            this.newsletterService.addNewsletter(newsletter);
            redirectAttributes.addFlashAttribute("success", "Cập nhật trạng thái SVIP bản tin thành công !");
            return "redirect:/maneger-newsletter";
        } else {
            redirectAttributes.addFlashAttribute("error", "Số dư tài khoản không đủ để thực hiện thao tác này !");
            return "redirect:/maneger-newsletter";
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
        return "client/service/post";
    }

    @PostMapping("/new/port")
    public String add(@ModelAttribute("infoNewsletterDTO") InfoNewsletterDTO infoNewsletterDTO,
            @RequestParam("file") MultipartFile[] files, RedirectAttributes redirectAttributes) {
        Account account = infoNewsletterDTO.getAccount();
        Account acc = this.accountService.getAccountByID(account.getAccountID());
        if (acc != null && acc.getBalance() > 20000) {
            LocalDateTime now = LocalDateTime.now();
            DateTimeFormatter formatter = DateTimeFormatter.ofPattern("HH:mm:ss dd/MM/yyyy");
            DateTimeFormatter code = DateTimeFormatter.ofPattern("yyyyMMddHHmmss");
            String formattedDate = now.format(formatter);
            String paycode = now.format(code);
            acc.setFullName(account.getFullName());
            acc.setFacebook(account.getFacebook());
            acc.setEmail(account.getEmail());
            acc.setPhone(account.getPhone());
            acc.setBalance(acc.getBalance() - 20000);
            acc.setDescription(acc.getDescription() + "[-20000 VNĐ Time:" + formattedDate + "]");
            this.accountService.addAccount(acc);
            Newsletter newsletter = infoNewsletterDTO.getNewsletter();
            Newsletter news = this.newsletterService.getNewsletterByID(newsletter.getNewsletterID());
            newsletter.setCreateTime(formattedDate);
            newsletter.setCreatedDate(now);
            newsletter.setAccount(account);
            List<String> filename = this.uploadService.handeSaveUploadFile(files);
            String image1 = filename.get(0);
            String image2 = filename.get(1);
            String image3 = filename.get(2);
            newsletter.setImage1(image1);
            newsletter.setImage2(image2);
            newsletter.setImage3(image3);
            this.newsletterService.addNewsletter(newsletter);

            Bill bill = new Bill();
            BillType billType = new BillType();
            billType.setBillTypeID(2);
            bill.setAmount("20000");
            bill.setBillType(billType);
            bill.setAccount(acc);
            bill.setConfirmTime(formattedDate);
            bill.setCreateTime(formattedDate);
            bill.setIsStatus(1);
            bill.setTransferContent("dangbai " + acc.getUsername() + "");
            bill.setTransactionCode(paycode);

            this.billService.addBill(bill);
            redirectAttributes.addFlashAttribute("success", "Đăng bản tin thành công, vui lòng đợi phê duyệt !");
            return "redirect:/post";
        } else {
            redirectAttributes.addFlashAttribute("error",
                    "Số dư tài khoản không đủ, Vui lòng nạp thêm tiền vào tài khoản !");
            return "redirect:/post";
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
            news.setHistory(
                    news.getHistory() + " [Starus:" + news.getIsStatus() + " - Time update: " + formattedDate + "]");
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
