package com.nhatro247.nhatro247.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;

import com.nhatro247.nhatro247.entity.FeedBack;
import com.nhatro247.nhatro247.entity.dto.DashboardFeedbackDTO;
import com.nhatro247.nhatro247.entity.dto.DashboardNewsletterDTO;
import com.nhatro247.nhatro247.repository.FeedBackRepository;

@Service
public class FeedBackService {
    private final FeedBackRepository feedBackRepository;

    public FeedBackService(FeedBackRepository feedBackRepository) {
        this.feedBackRepository = feedBackRepository;
    }

    public FeedBack addFeedback(FeedBack feedBack) {
        return this.feedBackRepository.save(feedBack);
    }

    public List<FeedBack> getAll() {
        return this.feedBackRepository.findAll();
    }

    public List<DashboardFeedbackDTO> getStatictisDashBoard() {
        List<Object[]> rawResults = feedBackRepository.getCountFeedbackStatus();
        List<DashboardFeedbackDTO> results = new ArrayList<>();
        for (Object[] row : rawResults) {
            int status = ((Number) row[0]).intValue();
            long count = ((Number) row[1]).longValue();
            results.add(new DashboardFeedbackDTO(status, count));
        }
        return results;
    }
}
