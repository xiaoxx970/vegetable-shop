package com.vegetables.mapper;


import com.vegetables.pojo.User;

public interface UserLoginMapper {
    User selectUser(String username, String password);
}
