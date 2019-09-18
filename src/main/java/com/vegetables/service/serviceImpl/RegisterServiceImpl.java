package com.vegetables.service.serviceImpl;

import com.vegetables.mapper.RegisterMapper;
import com.vegetables.service.RegisterService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class RegisterServiceImpl implements RegisterService {
    @Autowired
    private RegisterMapper registerMapper;
    @Override
    public boolean register(String sex, String username, String password, String phone, String email) {
        boolean register = registerMapper.register(sex, username, password, phone, email);
        return register;
    }
}
