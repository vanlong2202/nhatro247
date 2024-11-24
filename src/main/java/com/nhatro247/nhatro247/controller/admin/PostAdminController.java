package com.nhatro247.nhatro247.controller.admin;

import java.net.http.HttpRequest;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.nhatro247.nhatro247.entity.Account;
import com.nhatro247.nhatro247.entity.Post;
import com.nhatro247.nhatro247.entity.PostType;
import com.nhatro247.nhatro247.entity.dto.PostDTO;
import com.nhatro247.nhatro247.service.AccountService;
import com.nhatro247.nhatro247.service.PostService;
import com.nhatro247.nhatro247.service.PostTypeService;
import com.nhatro247.nhatro247.service.UploadService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import org.springframework.web.bind.annotation.RequestBody;

@Controller
public class PostAdminController {
    private final AccountService accountService;
    private final PostService postService;
    private final UploadService uploadService;
    private final PostTypeService postTypeService;

    public PostAdminController(AccountService accountService, PostService postService, UploadService uploadService,
            PostTypeService postTypeService) {
        this.accountService = accountService;
        this.postService = postService;
        this.uploadService = uploadService;
        this.postTypeService = postTypeService;
    }

    @PostMapping("/admin/add-post")
    public String addPost(Model model, @ModelAttribute("post") Post post, @RequestParam("file") MultipartFile files,
            HttpServletRequest request, RedirectAttributes redirectAttributes) {
        HttpSession session = request.getSession(false);
        String user = (String) session.getAttribute("username");
        Account account = this.accountService.getAccountByName(user);
        if (account != null) {
            post.setAccount(account);
            LocalDateTime now = LocalDateTime.now();
            DateTimeFormatter formatter = DateTimeFormatter.ofPattern("HH:mm:ss dd/MM/yyyy");
            String formattedDate = now.format(formatter);
            post.setCreateTime(formattedDate);
            post.setDescription("");
            String filename = this.uploadService.handeSaveOneUploadFile(files);
            post.setImage(filename);
            this.postService.addPost(post);
            post.setIsActive(1);
            redirectAttributes.addFlashAttribute("message", "Thêm Bài Viết Thành Công !");
            return "redirect:/admin/post";
        }
        redirectAttributes.addFlashAttribute("message", "Đã có lỗi xảy ra vui lòng thử lại !");
        return "admin/post/addPost";
    }

    @GetMapping("/admin/update-post/{id}")
    public String getUpdatePostAd(Model model, @PathVariable("id") int id) {
        Post post = this.postService.getPostByID(id);
        model.addAttribute("blog", post);
        model.addAttribute("type", this.postTypeService.getAll());
        return "admin/post/update";
    }

    @PostMapping("/admin/post/update-submit")
    public String postMethodName(@ModelAttribute("blog") Post post, @RequestParam("file") MultipartFile files,
            HttpServletRequest request) {
        HttpSession session = request.getSession(false);
        String user = (String) session.getAttribute("username");
        Account account = this.accountService.getAccountByName(user);
        Post add = this.postService.getPostByID(post.getPostID());
        if (add != null) {
            add.setTitle(post.getTitle());
            add.setContent(post.getContent());
            if (!files.isEmpty()) {
                String filename = uploadService.handeSaveOneUploadFile(files);
                add.setImage(filename);
            }
            LocalDateTime now = LocalDateTime.now();
            DateTimeFormatter formatter = DateTimeFormatter.ofPattern("HH:mm:ss dd/MM/yyyy");
            String formattedDate = now.format(formatter);
            add.setDescription(add.getDescription() + " " + user + "(" + account.getAccountID() + ")" + " Updated "
                    + formattedDate);
            this.postService.addPost(add);
            return "redirect:/admin/post";
        }
        return "admin/post/update";
    }

    @GetMapping("/admin/update-active-post/{id}")
    public String updateActivePost(@PathVariable("id") long id, RedirectAttributes redirectAttributes) {
        Post post = this.postService.getPostByID(id);
        if (post != null) {
            if (post.getIsActive() == 0) {
                post.setIsActive(1);
                this.postService.addPost(post);
                redirectAttributes.addFlashAttribute("success", "Cập Nhật Trạng Thái Bài Viết Thành Công !");
                return "redirect:/admin/post";
            } else {
                post.setIsActive(0);
                this.postService.addPost(post);
                redirectAttributes.addFlashAttribute("success", "Cập Nhật Trạng Thái Bài Viết Thành Công !");
                return "redirect:/admin/post";
            }
        }
        redirectAttributes.addFlashAttribute("error", "Đã có lỗi xảy ra !");
        return "admin/post/view";
    }

    @GetMapping("/admin/delete-post/{id}")
    public String getMethodName(@PathVariable("id") long id, RedirectAttributes redirectAttributes) {
        Post post = this.postService.getPostByID(id);
        if (post != null) {
            this.postService.deletePostByID(id);
            redirectAttributes.addFlashAttribute("message", "Xóa Bài Viết Thành Công !");
            return "redirect:/admin/post";
        }
        return "admin/post/view";
    }

}
