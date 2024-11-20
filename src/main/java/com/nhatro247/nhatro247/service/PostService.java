package com.nhatro247.nhatro247.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import com.nhatro247.nhatro247.entity.Post;
import com.nhatro247.nhatro247.entity.PostType;
import com.nhatro247.nhatro247.repository.PostRepository;

@Service
public class PostService {
    private final PostRepository postRepository;

    public PostService(PostRepository postRepository) {
        this.postRepository = postRepository;
    }

    public Post addPost(Post post) {
        return this.postRepository.save(post);
    }

    public List<Post> getAll() {
        return this.postRepository.findAll(Sort.by(Sort.Order.desc("createTime")));
    }

    public List<Post> getTop4Post() {
        return this.postRepository.findTopNPosts(4);
    }

    public List<Post> getTop4PostByTypeID(int id) {
        return this.postRepository.findTopNPostsByTypeID(id, 4);
    }

    public List<Post> getTop4PostByTypeID(int id, PostType type) {
        Map<Integer, List<Post>> postMap = new HashMap<>();

        return postMap.put(id, this.postRepository.findByPostType(type));
    }

    public List<Post> getTop10Post() {
        return this.postRepository.findTopNPosts(10);
    }

    public Post getPostByID(long postID) {
        return this.postRepository.findByPostID(postID);
    }

    public List<Post> getAllByTypeID(PostType postType, int isActive) {
        return this.postRepository.findByPostTypeAndIsActive(postType, isActive);
    }

    public List<Post> getPostByIsActiveAndTypeID(PostType postType, int isActive) {
        return this.postRepository.findByPostTypeAndIsActive(postType, isActive);
    }

    public List<Post> getPostByIDNot(PostType postType, int isActive, long postID) {
        return this.postRepository.findByPostTypeAndIsActiveAndPostIDNot(postType, isActive, postID);
    }
}
