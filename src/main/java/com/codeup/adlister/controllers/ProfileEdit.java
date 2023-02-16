package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.User;
import com.codeup.adlister.util.Password;
import org.mindrot.jbcrypt.BCrypt;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name = "ProfileUpdate", urlPatterns = "/profile-edit")
public class ProfileEdit extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        User user = (User) req.getSession().getAttribute("user");

        if (req.getSession().getAttribute("user") == null) {
            resp.sendRedirect("/login");
        } else {
            req.setAttribute("user", user);
            req.getRequestDispatcher("/WEB-INF/edit-profile.jsp").forward(req,resp);
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        User user = (User) req.getSession().getAttribute("user");
        Password password = new Password();
        String passWord = req.getParameter("password");
        String hashPassword = Password.hash(passWord);

        User editUser = new User(
                user.getId(),
                req.getParameter("username"),
                req.getParameter("email"),
                hashPassword
        );

        try {
            DaoFactory.getUsersDao().updateUser(editUser);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

        req.getSession().removeAttribute("user");
        req.getSession().invalidate();
        resp.sendRedirect("/login");
    }
}
