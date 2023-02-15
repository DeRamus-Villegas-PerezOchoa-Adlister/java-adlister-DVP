package com.codeup.adlister.dao;

import com.codeup.adlister.models.Ad;
import com.codeup.adlister.models.Ad_Cat;

import java.util.List;

public interface Ad_Cats {
    // get a list of all the ad_cat
    List<Ad> all();
    // insert a new ad and return the new ad's id
    void insert(long id, long cat);

}
