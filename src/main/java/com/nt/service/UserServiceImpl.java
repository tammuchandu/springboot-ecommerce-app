package com.nt.service;

import org.springframework.stereotype.Service;
import org.springframework.beans.factory.annotation.Autowired;

import com.nt.model.User;
import com.nt.repo.UserRepoINF;

@Service
public class UserServiceImpl implements UserServiceINF {

    @Autowired
    private UserRepoINF repo;

    // ---------- REGISTER USER ----------
    @Override
    public User registerUser(User user) {
        // Save user to DB; validation is already handled in Controller via @Valid
        return repo.save(user);
    }

    // ---------- LOGIN USER ----------
    @Override
    public User loginUser(String username, String password) {
        // Find user by username
        User user = repo.findByUsername(username);

        // Check password match
        if (user != null && user.getPassword().equals(password)) {
            return user;
        }

        return null; // Login failed
    }
}
