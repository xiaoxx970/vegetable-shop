package com.vegetables.controller;

import com.vegetables.pojo.Cart;
import com.vegetables.pojo.User;
import com.vegetables.pojo.Wish;
import com.vegetables.service.WishService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/wish")
public class wishController {

    @Autowired
    private WishService wartService;
    @RequestMapping("/findAllWish")
    public String findAllCart(HttpSession session, Model model) {
        User user = (User) session.getAttribute("user");
        int userid = user.getUserid();
        List<Wish> allWish = wartService.findAllWish(userid);
        model.addAttribute("allWish", allWish);
        System.out.println(allWish);
        return "wish";
    }
}
