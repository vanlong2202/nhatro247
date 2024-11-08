package com.nhatro247.nhatro247.entity;

import java.time.LocalDateTime;
import java.util.Date;
import java.util.List;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;

@Entity
@Table(name = "tbl_Newsletter")
public class Newsletter {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long newsletterID;
    @Column(columnDefinition = "MEDIUMTEXT")
    private String title;
    @Column(columnDefinition = "MEDIUMTEXT")
    private String detail;
    private String format;
    private String newsletterAddress;
    private String addressDetail;
    private String price;
    private Integer acreage;// diện tích
    private Integer totalRoom;
    private Integer maximum; // ở tối đa
    private Integer vacantRoom; // Phòng trống
    private int selfManagement; // tự quản lí
    private int prioritize; // giới tính ưu tiên
    private String createTime; // thời gian tạo bản tin
    private int isStatus; // trạng thái bản tin
    private int isActive; // trạng thái hoạt động bản tin
    private int svip; // trạng thái bản tin ưu tiên
    private String image1;
    private String image2;
    private String image3;
    private String description;

    @ManyToOne
    @JoinColumn(name = "newsletterTypeID")
    private NewsletterType newsletterType;

    @ManyToOne
    @JoinColumn(name = "accountID")
    private Account account;

    @OneToMany(mappedBy = "newsletter")
    private List<ReportNewsletter> reportNewsletter;

    public long getNewsletterID() {
        return newsletterID;
    }

    public void setNewsletterID(long newsletterID) {
        this.newsletterID = newsletterID;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDetail() {
        return detail;
    }

    public void setDetail(String detail) {
        this.detail = detail;
    }

    public String getFormat() {
        return format;
    }

    public void setFormat(String format) {
        this.format = format;
    }

    public String getNewsletterAddress() {
        return newsletterAddress;
    }

    public void setNewsletterAddress(String newsletterAddress) {
        this.newsletterAddress = newsletterAddress;
    }

    public String getAddressDetail() {
        return addressDetail;
    }

    public void setAddressDetail(String addressDetail) {
        this.addressDetail = addressDetail;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public Integer getAcreage() {
        return acreage;
    }

    public void setAcreage(Integer acreage) {
        this.acreage = acreage;
    }

    public Integer getTotalRoom() {
        return totalRoom;
    }

    public void setTotalRoom(Integer totalRoom) {
        this.totalRoom = totalRoom;
    }

    public Integer getMaximum() {
        return maximum;
    }

    public void setMaximum(Integer maximum) {
        this.maximum = maximum;
    }

    public Integer getVacantRoom() {
        return vacantRoom;
    }

    public void setVacantRoom(Integer vacantRoom) {
        this.vacantRoom = vacantRoom;
    }

    public int getSelfManagement() {
        return selfManagement;
    }

    public void setSelfManagement(int selfManagement) {
        this.selfManagement = selfManagement;
    }

    public int getPrioritize() {
        return prioritize;
    }

    public void setPrioritize(int prioritize) {
        this.prioritize = prioritize;
    }

    public int getIsStatus() {
        return isStatus;
    }

    public void setIsStatus(int isStatus) {
        this.isStatus = isStatus;
    }

    public int getIsActive() {
        return isActive;
    }

    public void setIsActive(int isActive) {
        this.isActive = isActive;
    }

    public int getSvip() {
        return svip;
    }

    public void setSvip(int svip) {
        this.svip = svip;
    }

    public String getImage1() {
        return image1;
    }

    public void setImage1(String image1) {
        this.image1 = image1;
    }

    public String getImage2() {
        return image2;
    }

    public void setImage2(String image2) {
        this.image2 = image2;
    }

    public String getImage3() {
        return image3;
    }

    public void setImage3(String image3) {
        this.image3 = image3;
    }

    public NewsletterType getNewsletterType() {
        return newsletterType;
    }

    public void setNewsletterType(NewsletterType newsletterType) {
        this.newsletterType = newsletterType;
    }

    public Account getAccount() {
        return account;
    }

    public void setAccount(Account account) {
        this.account = account;
    }

    public List<ReportNewsletter> getReportNewsletter() {
        return reportNewsletter;
    }

    public void setReportNewsletter(List<ReportNewsletter> reportNewsletter) {
        this.reportNewsletter = reportNewsletter;
    }

    public String getCreateTime() {
        return createTime;
    }

    public void setCreateTime(String createTime) {
        this.createTime = createTime;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    @Override
    public String toString() {
        return "Newsletter [newsletterID=" + newsletterID + ", title=" + title + ", detail=" + detail + ", format="
                + format + ", newsletterAddress=" + newsletterAddress + ", addressDetail=" + addressDetail + ", price="
                + price + ", acreage=" + acreage + ", totalRoom=" + totalRoom + ", maximum=" + maximum + ", vacantRoom="
                + vacantRoom + ", selfManagement=" + selfManagement + ", prioritize=" + prioritize + ", createTime="
                + createTime + ", isStatus=" + isStatus + ", isActive=" + isActive + ", svip=" + svip + ", image1="
                + image1 + ", image2=" + image2 + ", image3=" + image3 + ", description=" + description
                + ", newsletterType=" + newsletterType + ", account=" + account + ", reportNewsletter="
                + reportNewsletter + "]";
    }

}
