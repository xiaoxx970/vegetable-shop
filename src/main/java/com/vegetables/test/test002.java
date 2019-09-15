package com.vegetables.test;

import com.vegetables.pojo.User;
import com.vegetables.service.PageListService;
import com.vegetables.service.UserLoginService;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class test002 {
    public static void main(String[] args) {
        ApplicationContext ctx = new ClassPathXmlApplicationContext("applicationContext.xml");
        UserLoginService userLoginService = ctx.getBean("userLoginServiceImpl", UserLoginService.class);
        User json = userLoginService.selectUser("json", "123456");
        System.out.println(json);
    }
}
