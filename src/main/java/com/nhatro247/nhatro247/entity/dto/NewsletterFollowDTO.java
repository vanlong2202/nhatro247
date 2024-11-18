package com.nhatro247.nhatro247.entity.dto;

import com.nhatro247.nhatro247.entity.Newsletter;
import com.nhatro247.nhatro247.entity.NewsletterFollow;

public class NewsletterFollowDTO {
    private Newsletter newsletter;
    private boolean checkFollow;

    public Newsletter getNewsletter() {
        return newsletter;
    }

    public void setNewsletter(Newsletter newsletter) {
        this.newsletter = newsletter;
    }

    public boolean isCheckFollow() {
        return checkFollow;
    }

    public void setCheckFollow(boolean checkFollow) {
        this.checkFollow = checkFollow;
    }

}
