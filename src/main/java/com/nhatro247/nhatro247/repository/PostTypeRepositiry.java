package com.nhatro247.nhatro247.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.nhatro247.nhatro247.entity.PostType;
import java.util.List;

@Repository
public interface PostTypeRepositiry extends JpaRepository<PostType, Integer> {
    PostType findByPostTypeID(int postTypeID);
}
