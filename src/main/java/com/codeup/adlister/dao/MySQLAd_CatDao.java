package com.codeup.adlister.dao;

import com.codeup.adlister.models.Ad;

import java.sql.*;
import java.util.List;

public class MySQLAd_CatDao implements Ad_Cat {

    private Connection connection = null;



    @Override
    public List<Ad> all() {
        return null;
    }

    @Override
    public Long insert(Ad_Cat ad) {
        try {
            String insertQuery = "INSERT INTO ad_category(ad_id, category_id) VALUES (?, ?)";
            PreparedStatement stmt = connection.prepareStatement(insertQuery, Statement.RETURN_GENERATED_KEYS);
//            stmt.setLong(1, ad.getAd_id());
//            stmt.setString(2, ad.getCategory_id());
            stmt.executeUpdate();
            ResultSet rs = stmt.getGeneratedKeys();
            rs.next();
            return rs.getLong(1);
        } catch (SQLException e) {
            throw new RuntimeException("Error creating a new ad_cat.", e);
        }
    }
}
