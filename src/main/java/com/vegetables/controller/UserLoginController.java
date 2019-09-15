package com.vegetables.controller;

import com.vegetables.pojo.User;
import com.vegetables.service.UserLoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/userLogin")
public class UserLoginController {
    @Autowired
    private UserLoginService userLoginService;
    @RequestMapping("/selectUser")
    public  String selectUser(Model model, String username, String password, HttpServletRequest request){
        User user = userLoginService.selectUser(username, password);
        if(user != null){
            HttpSession session = request.getSession();
            session.setAttribute("status","yes");
            model.addAttribute("user",user);
            return "redirect:/selectProduct/selectAllProduct";
        }else {
            model.addAttribute("error","请输入正确的密码或用户名");
            return "forward:/login.jsp";
        }
    }
}
