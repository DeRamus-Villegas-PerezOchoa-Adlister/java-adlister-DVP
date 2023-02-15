package com.codeup.adlister.dao;
import com.codeup.adlister.models.Ad;
import com.codeup.adlister.models.Ad_Cat;
import com.mysql.cj.jdbc.Driver;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class MySQLAd_CatDao implements Ad_Cats {

    private Connection connection = null;


    public MySQLAd_CatDao(Config config) {
        try {
            DriverManager.registerDriver(new Driver());
            connection = DriverManager.getConnection(
                    config.getUrl(),
                    config.getUser(),
                    config.getPassword()
            );
        } catch (SQLException e) {
            throw new RuntimeException("Error connecting to the database!", e);
        }
    }


    @Override
    public List<Ad> all() {
        return null;
    }

    //Note:  Commented out code may or may not be needed to return ad id.
    @Override
    public void insert(long ad_id, long ad_cat) {
        System.out.println("ad_id passed argument = " + ad_id);
        System.out.println("ad_cat = " + ad_cat);
        try {
            String insertQuery = "INSERT INTO ad_category(ad_id, category_id) VALUES (?, ?)";
            PreparedStatement stmt = connection.prepareStatement(insertQuery, Statement.RETURN_GENERATED_KEYS);
            stmt.setLong(1, ad_id);
            stmt.setLong(2, ad_cat);
            stmt.executeUpdate();
//            ResultSet rs = stmt.getGeneratedKeys();
//            rs.next();
//            return rs.getLong(1);
        } catch (SQLException e) {
            throw new RuntimeException("Error creating a new ad_cat.", e);
        }
    }




    public List<Ad> searchByCats(String catCheckBox) {
        String query = "SELECT * FROM ads WHERE id IN (SELECT ad_id FROM ad_category WHERE category_id IN (SELECT id FROM categories WHERE name LIKE ?))";
        try {
            PreparedStatement stmt = connection.prepareStatement(query);
            stmt.setString(1, catCheckBox);
            ResultSet rs = stmt.executeQuery();
            System.out.println("rs = " + rs);
            return createAdsFromResults(rs);
        } catch (SQLException e) {
            throw new RuntimeException("Error finding an Ad by Cat", e);
        }
    }


    private List<Ad> createAdsFromResults(ResultSet rs) throws SQLException {
        List<Ad> ads = new ArrayList<>();
        while (rs.next()) {
            ads.add(extractAd(rs));
        }
        System.out.println("ads from createAds = " + ads);
        return ads;
    }


    private Ad extractAd(ResultSet rs) throws SQLException {
        return new Ad(
                rs.getLong("id"),
                rs.getLong("user_id"),
                rs.getString("title"),
                rs.getString("description")
        );
    }



}
