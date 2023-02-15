package com.codeup.adlister.dao;

import com.codeup.adlister.models.User;

import java.sql.SQLIntegrityConstraintViolationException;
import java.util.List;

public interface Users {
    User findByUsername(String username);

    User findUserById(int userId);

    Long insert(User user);
}
