package com.nhatro247.nhatro247.entity;

import java.util.List;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;

@Entity
@Table(name = "tbl_PostType")
public class PostType {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int postTypeID;
    private String name;
    private String description;

    @OneToMany(mappedBy = "postType")
    private List<Post> posts;

    public int getPostTypeID() {
        return postTypeID;
    }

    public void setPostTypeID(int postTypeID) {
        this.postTypeID = postTypeID;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public List<Post> getPosts() {
        return posts;
    }

    public void setPosts(List<Post> posts) {
        this.posts = posts;
    }

    @Override
    public String toString() {
        return "PostType [postTypeID=" + postTypeID + ", name=" + name + ", description=" + description + ", posts="
                + posts + "]";
    }

}
