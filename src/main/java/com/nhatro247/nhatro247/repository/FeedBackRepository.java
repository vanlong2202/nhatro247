package com.nhatro247.nhatro247.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.nhatro247.nhatro247.entity.FeedBack;

@Repository
public interface FeedBackRepository extends JpaRepository<FeedBack, Long> {

}
