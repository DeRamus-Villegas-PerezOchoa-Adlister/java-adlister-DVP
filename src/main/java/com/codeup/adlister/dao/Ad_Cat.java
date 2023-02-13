package com.codeup.adlister.dao;

import com.codeup.adlister.models.Ad;

import java.util.List;

public interface Ad_Cat {
    // get a list of all the ad_cat
    List<Ad> all();
    // insert a new ad and return the new ad's id
    Long insert(Ad_Cat ad);
}
