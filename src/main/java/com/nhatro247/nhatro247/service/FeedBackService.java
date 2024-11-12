package com.nhatro247.nhatro247.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.nhatro247.nhatro247.entity.FeedBack;
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
}
