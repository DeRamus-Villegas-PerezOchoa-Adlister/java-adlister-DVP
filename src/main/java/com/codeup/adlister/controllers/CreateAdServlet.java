package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.Ad_Cats;
import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.Ad;
import com.codeup.adlister.models.Ad_Cat;
import com.codeup.adlister.models.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Arrays;

@WebServlet(name = "controllers.CreateAdServlet", urlPatterns = "/ads/create")
public class CreateAdServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if (request.getSession().getAttribute("user") == null) {
            response.sendRedirect("/login");
            return;
        }
        request.getRequestDispatcher("/WEB-INF/ads/create.jsp")
            .forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        User user = (User) request.getSession().getAttribute("user");
        String[] catCheckBox = request.getParameterValues("categories");

        Ad ad = new Ad(
            user.getId(),
            request.getParameter("title"),
            request.getParameter("description")
        );

        long adId = DaoFactory.getAdsDao().insert(ad);

        Ad_Cats getAdCatsDao = DaoFactory.getAd_CatsDao();

        for (String checkBox : catCheckBox) {
            System.out.println("catCheckBox[i] = " + checkBox);
            System.out.println("adId = " + adId);
            DaoFactory.getAd_CatsDao().insert(adId, Long.parseLong(checkBox));
        }

        response.sendRedirect("/ads");
    }
}
