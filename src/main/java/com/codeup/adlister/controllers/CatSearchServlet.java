package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "CatSearchServlet", urlPatterns = "/search_cats")
public class CatSearchServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

        request.getRequestDispatcher("/WEB-INF/catSearch.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

        String[] catCheckBox = request.getParameterValues("categories");

        for (String checkBox : catCheckBox) {
            System.out.println("checkBox = " + checkBox);
            DaoFactory.getAd_CatsDao().searchByCats(checkBox);
            request.setAttribute("checkBox", DaoFactory.getAd_CatsDao().searchByCats(checkBox));
        }

        request.getRequestDispatcher("/WEB-INF/catSearch.jsp").forward(request, response);

    }
}
