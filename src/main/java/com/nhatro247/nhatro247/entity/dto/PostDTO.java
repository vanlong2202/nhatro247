package com.nhatro247.nhatro247.entity.dto;

import com.nhatro247.nhatro247.entity.Post;
import com.nhatro247.nhatro247.entity.PostType;

public class PostDTO {
    private Post post;
    private int postTypeID;

    public Post getPost() {
        return post;
    }

    public void setPost(Post post) {
        this.post = post;
    }

    public int getPostTypeID() {
        return postTypeID;
    }

    public void setPostTypeID(int postTypeID) {
        this.postTypeID = postTypeID;
    }

    @Override
    public String toString() {
        return "PostDTO [post=" + post + ", postTypeID=" + postTypeID + ", getPost()=" + getPost()
                + ", getPostTypeID()=" + getPostTypeID() + ", getClass()=" + getClass() + ", hashCode()=" + hashCode()
                + ", toString()=" + super.toString() + "]";
    }

}
