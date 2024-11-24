package com.nhatro247.nhatro247.entity;

import com.fasterxml.jackson.annotation.JsonIgnore;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;

@Entity
@Table(name = "tbl_Post")
public class Post {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long postID;
    private String title;
    private String image;
    @Column(columnDefinition = "MEDIUMTEXT")
    private String content;
    private int isActive;
    private String description;
    private String createTime;

    @ManyToOne
    @JoinColumn(name = "postTypeID")
    private PostType postType;

    @ManyToOne
    @JoinColumn(name = "accountID")
    private Account account;

    public long getPostID() {
        return postID;
    }

    public void setPostID(long postID) {
        this.postID = postID;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public int getIsActive() {
        return isActive;
    }

    public void setIsActive(int isActive) {
        this.isActive = isActive;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getCreateTime() {
        return createTime;
    }

    public void setCreateTime(String createTime) {
        this.createTime = createTime;
    }

    public PostType getPostType() {
        return postType;
    }

    public void setPostType(PostType postType) {
        this.postType = postType;
    }

    public Account getAccount() {
        return account;
    }

    public void setAccount(Account account) {
        this.account = account;
    }

    @Override
    public String toString() {
        return "Post [postID=" + postID + ", title=" + title + ", image=" + image + ", content=" + content
                + ", isActive=" + isActive + ", description=" + description + ", createTime=" + createTime
                + ", postType=" + postType + ", account=" + account + ", getPostID()=" + getPostID() + ", getTitle()="
                + getTitle() + ", getImage()=" + getImage() + ", getContent()=" + getContent() + ", getClass()="
                + getClass() + ", getIsActive()=" + getIsActive() + ", getDescription()=" + getDescription()
                + ", getCreateTime()=" + getCreateTime() + ", getPostType()=" + getPostType() + ", getAccount()="
                + getAccount() + ", hashCode()=" + hashCode() + ", toString()=" + super.toString() + "]";
    }

}
