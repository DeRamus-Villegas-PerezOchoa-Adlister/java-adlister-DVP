package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.dao.MySQLAdsDao;
import com.codeup.adlister.models.Ad;
import com.codeup.adlister.models.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

// Consider passing the id of the ad as a parameter in the GET request to this page.

@WebServlet(name = "AdShowServlet", urlPatterns = "/adshow/*")
public class AdShowServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        int adId = Integer.parseInt(req.getParameter("adId"));

        try {
            Ad ad = (Ad) DaoFactory.getAdsDao().findAdById(adId);
            int userId = (int) ad.getUserId(); //user_id foreign key that corresponds with user's id
            req.setAttribute("user", DaoFactory.getUsersDao().findUserById(userId));
            req.setAttribute("ad", DaoFactory.getAdsDao().findAdById(adId));
            System.out.println(adId);
        } catch (SQLException e){
            e.printStackTrace();
        }

        req.getRequestDispatcher("/WEB-INF/ads/adShow.jsp").forward(req,resp);

    }

}
