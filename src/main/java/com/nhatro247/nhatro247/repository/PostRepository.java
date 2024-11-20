package com.nhatro247.nhatro247.repository;

import java.util.List;

import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.nhatro247.nhatro247.entity.Post;
import com.nhatro247.nhatro247.entity.PostType;

@Repository
public interface PostRepository extends JpaRepository<Post, Long> {
    List<Post> findAll(Sort sort);

    @Query(value = "SELECT * FROM tbl_post WHERE is_active = 1 ORDER BY create_time DESC LIMIT :limit", nativeQuery = true)
    List<Post> findTopNPosts(@Param("limit") int limit);

    @Query(value = "SELECT * FROM tbl_post WHERE is_active = 1 AND post_typeid = :id ORDER BY create_time DESC LIMIT :limit", nativeQuery = true)
    List<Post> findTopNPostsByTypeID(@Param("id") int id, @Param("limit") int limit);

    Post findByPostID(long postID);

    List<Post> findByPostType(PostType postType);

    List<Post> findByPostTypeAndIsActive(PostType postType, int isActive);

    List<Post> findByPostTypeAndIsActiveAndPostIDNot(PostType postType, int isActive, long postID);

}
