package com.codeup.adlister.dao;

import com.codeup.adlister.models.Ad;

import java.sql.SQLException;
import java.util.List;

public interface Ads {
    // get a list of all the ads
    List<Ad> all();
    // insert a new ad and return the new ad's id
    Long insert(Ad ad);

    Ad findAdById(int id) throws SQLException;

    List<Ad> searchForAds(String searched_ad);
    boolean delete(long id);
    void update(Ad ad);
}
