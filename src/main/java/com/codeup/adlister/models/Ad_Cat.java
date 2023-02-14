package com.codeup.adlister.models;

public class Ad_Cat {

    private long ad_id;
    private String[] category_id;

    public Ad_Cat(long ad_id, String[] category_id) {
        this.ad_id = ad_id;
        this.category_id = category_id;
    }

    public long getAd_id() {
        return ad_id;
    }

    public void setAd_id(long ad_id) {
        this.ad_id = ad_id;
    }

    public String[] getCategory_id() {
        return category_id;
    }

    public void setCategory_id(String[] category_id) {
        this.category_id = category_id;
    }
}
