package com.nhatro247.nhatro247.entity;

import java.util.Date;
import java.util.List;

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
    private long Newsletter_ID;

    private String Title;
    private String Detail;
    private String Format;
    private String Address;
    private String AddressDetail;
    private String Price;
    private int Acreage;// diện tích
    private int TotalRoom;
    private int Maximum; // ở tối đa
    private int VacantRoom; // Phòng trống
    private int SelfManagement; // tự quản lí
    private Date createTime; // thời gian tạo bản tin
    private int isStatus; // trạng thái bản tin
    private int isActive; // trạng thái hoạt động bản tin
    private int Svip; // trạng thái bản tin ưu tiên
    private String Image1;
    private String Image2;
    private String Image3;

    @ManyToOne
    @JoinColumn(name = "NewsletterType_ID")
    private NewsletterType newsletterType;

    @ManyToOne
    @JoinColumn(name = "Account_ID")
    private Account account;

    @OneToMany(mappedBy = "newsletter")
    private List<ReportNewsletter> reportNewsletter;

    public long getNewsletter_ID() {
        return Newsletter_ID;
    }

    public void setNewsletter_ID(long newsletter_ID) {
        Newsletter_ID = newsletter_ID;
    }

    public String getTitle() {
        return Title;
    }

    public void setTitle(String title) {
        Title = title;
    }

    public String getDetail() {
        return Detail;
    }

    public void setDetail(String detail) {
        Detail = detail;
    }

    public String getFormat() {
        return Format;
    }

    public void setFormat(String format) {
        Format = format;
    }

    public String getAddress() {
        return Address;
    }

    public void setAddress(String address) {
        Address = address;
    }

    public String getAddressDetail() {
        return AddressDetail;
    }

    public void setAddressDetail(String addressDetail) {
        AddressDetail = addressDetail;
    }

    public String getPrice() {
        return Price;
    }

    public void setPrice(String price) {
        Price = price;
    }

    public int getAcreage() {
        return Acreage;
    }

    public void setAcreage(int acreage) {
        Acreage = acreage;
    }

    public int getTotalRoom() {
        return TotalRoom;
    }

    public void setTotalRoom(int totalRoom) {
        TotalRoom = totalRoom;
    }

    public int getMaximum() {
        return Maximum;
    }

    public void setMaximum(int maximum) {
        Maximum = maximum;
    }

    public int getVacantRoom() {
        return VacantRoom;
    }

    public void setVacantRoom(int vacantRoom) {
        VacantRoom = vacantRoom;
    }

    public int getSelfManagement() {
        return SelfManagement;
    }

    public void setSelfManagement(int selfManagement) {
        SelfManagement = selfManagement;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
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
        return Svip;
    }

    public void setSvip(int svip) {
        Svip = svip;
    }

    public String getImage1() {
        return Image1;
    }

    public void setImage1(String image1) {
        Image1 = image1;
    }

    public String getImage2() {
        return Image2;
    }

    public void setImage2(String image2) {
        Image2 = image2;
    }

    public String getImage3() {
        return Image3;
    }

    public void setImage3(String image3) {
        Image3 = image3;
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

    @Override
    public String toString() {
        return "Newsletter [Newsletter_ID=" + Newsletter_ID + ", Title=" + Title + ", Detail=" + Detail + ", Format="
                + Format + ", Address=" + Address + ", AddressDetail=" + AddressDetail + ", Price=" + Price
                + ", Acreage=" + Acreage + ", TotalRoom=" + TotalRoom + ", Maximum=" + Maximum + ", VacantRoom="
                + VacantRoom + ", SelfManagement=" + SelfManagement + ", createTime=" + createTime + ", isStatus="
                + isStatus + ", isActive=" + isActive + ", Svip=" + Svip + ", Image1=" + Image1 + ", Image2=" + Image2
                + ", Image3=" + Image3 + ", newsletterType=" + newsletterType + ", account=" + account
                + ", reportNewsletter=" + reportNewsletter + "]";
    }

}
