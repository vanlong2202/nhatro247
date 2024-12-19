package com.nhatro247.nhatro247.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.nhatro247.nhatro247.entity.FeedBack;
import com.nhatro247.nhatro247.entity.dto.DashboardFeedbackDTO;

@Repository
public interface FeedBackRepository extends JpaRepository<FeedBack, Long> {
    @Query(value = "select is_status as status, count(*) as count from tbl_feedback group by is_status", nativeQuery = true)
    List<Object[]> getCountFeedbackStatus();

    List<FeedBack> findByIsStatus(int isStatus);

    FeedBack findByFeedBackID(long feedBackID);
}
