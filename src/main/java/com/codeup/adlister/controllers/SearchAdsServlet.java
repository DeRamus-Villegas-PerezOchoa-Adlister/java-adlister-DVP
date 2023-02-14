//package com.codeup.adlister.controllers;
//
//import com.codeup.adlister.dao.DaoFactory;
//
//import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//import java.io.IOException;
//import java.sql.SQLException;
//
//@WebServlet(name = "controllers.SearchAdServlet", urlPatterns = "/search_ads")
//public class SearchAdServlet extends HttpServlet {
//
//    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//
//        req.getRequestDispatcher("/WEB-INF/search_ads.jsp").forward(req, resp);
//    }
//    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException ,IOException {
//
//
//        String searched_ad = req.getParameter("searched_ads");
////        Add searchIndAd into Dao
//            req.setAttribute("searched_ads", DaoFactory.getAdsDao().searchIndAd(searched_ad));
//        //        Once added the forward error should disappear
//        req.getRequestDispatcher("/WEB-INF/search_ads.jsp").forward(req, resp);
//    }
//}

package com.codeup.adlister.controllers;
import com.codeup.adlister.dao.DaoFactory;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "controllers.SearchAdServlet", urlPatterns = "/search_ads")
public class SearchAdsServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

        request.getRequestDispatcher("/WEB-INF/search_ads.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

        String searched_ad = request.getParameter("searched_ads");
        request.setAttribute("searched_ads", DaoFactory.getAdsDao().searchForAds(searched_ad));
        request.getRequestDispatcher("/WEB-INF/search_ads.jsp").forward(request, response);
    }
}