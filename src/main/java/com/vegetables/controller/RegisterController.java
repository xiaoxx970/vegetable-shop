package com.vegetables.controller;

import com.vegetables.mapper.RegisterMapper;
import com.vegetables.service.RegisterService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/registerController")
public class RegisterController {
    @Autowired
    private RegisterService registerService;
    @RequestMapping(value = "/register",method = RequestMethod.POST)
    @ResponseBody
    public String register(String sex,String username,String password, String phone,String email){
        boolean register = registerService.register(sex, username, password, phone, email);
        System.out.println(register);
        return ""+register;
    }
}
