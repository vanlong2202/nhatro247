package com.nhatro247.nhatro247.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.nhatro247.nhatro247.entity.PostType;
import com.nhatro247.nhatro247.repository.PostTypeRepositiry;

@Service
public class PostTypeService {
    private final PostTypeRepositiry postTypeRepositiry;

    public PostTypeService(PostTypeRepositiry postTypeRepositiry) {
        this.postTypeRepositiry = postTypeRepositiry;
    }

    public PostType getTypeByID(int id) {
        return this.postTypeRepositiry.findByPostTypeID(id);
    }

    public List<PostType> getAll() {
        return this.postTypeRepositiry.findAll();
    }
}
