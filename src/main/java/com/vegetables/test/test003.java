package com.vegetables.test;

import com.vegetables.service.RegisterService;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class test003 {
    public static void main(String[] args) {
        ApplicationContext ctx = new ClassPathXmlApplicationContext("applicationContext.xml");
        RegisterService registerService = ctx.getBean("registerServiceImpl", RegisterService.class);
        boolean register = registerService.register("男", "tom", "123456", "15262223369", "8243785@qq.com");
        System.out.println(register);
    }
}
