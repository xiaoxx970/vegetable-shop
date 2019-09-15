package com.vegetables.service;

import com.vegetables.pojo.User;
public interface UserLoginService {
    User selectUser(String username, String password);
}
