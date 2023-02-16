package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name = "DeleteProfile", urlPatterns = "/delete-profile")
public class DeleteProfile extends HttpServlet {

    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        User user = (User) req.getSession().getAttribute("user");

		if (req.getSession().getAttribute("user") == null) {
            resp.sendRedirect("/login");
    } else {
        req.setAttribute("user", user);
        req.getRequestDispatcher("/WEB-INF/deleteProfile.jsp").forward(req,resp);
    }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        User user = (User) request.getSession().getAttribute("user");

        try {
            DaoFactory.getUsersDao().deleteUserById(user.getId());
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

        request.getSession().removeAttribute("user");
        request.getSession().invalidate();
        response.sendRedirect("/ads");

    }





}
