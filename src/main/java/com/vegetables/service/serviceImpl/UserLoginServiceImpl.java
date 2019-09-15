package com.vegetables.service.serviceImpl;

import com.vegetables.mapper.UserLoginMapper;
import com.vegetables.pojo.User;
import com.vegetables.service.UserLoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class UserLoginServiceImpl implements UserLoginService {
    @Autowired
    private UserLoginMapper userLoginMapper;
    @Override
    public User selectUser(String username, String password) {
        User user = userLoginMapper.selectUser(username, password);
        return user;
    }
}
