package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.Ad;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name = "controllers.EditAdServlet", urlPatterns = "/ads/edit")
public class EditAdServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if (request.getSession().getAttribute("user") == null) {
            response.sendRedirect("/login");
            return;
        }

        if (request.getParameter("id") != null) {

            // get the id from the url, given to us on the Edit button on profile.jsp <a href="ads/edit?id=${ad.id}">
            long id = Long.parseLong(request.getParameter("id"));
            // find the ad in the ads table with that id...
            try {
                DaoFactory.getAdsDao().findAdById((int) id);
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }

            //show that ad in the view.
            Ad ad = null;
            try {
                ad = DaoFactory.getAdsDao().findAdById((int) id);
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }
            //set the attribute used in the view:
            request.setAttribute("ad", ad);
            // The edit.jsp form pre-populates with: "value=${ad.title}" value="${ad.description}, and HIDDEN ${ad.id}

            // show the .jsp
            request.getRequestDispatcher("/WEB-INF/ads/edit.jsp")
                    .forward(request, response);
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Ad ad;
        try {
            ad = DaoFactory.getAdsDao().findAdById((int) Long.parseLong(request.getParameter("id")));
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        ad.setTitle(request.getParameter("title"));
        ad.setDescription(request.getParameter("description"));
        DaoFactory.getAdsDao().update(ad);
        response.sendRedirect("/profile");
    }
}

