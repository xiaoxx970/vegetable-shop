package com.vegetables.controller;

import com.vegetables.pojo.PageList;
import com.vegetables.pojo.Shop_List;
import com.vegetables.service.PageListService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/selectProduct")
public class ProductController {
    @Autowired
    private PageListService pageListService;
    @RequestMapping("/selectAllProduct")
    public String SelectAllProduct(Model model){
        int  index = 0;
        int  pageSize = 5;
        List<Shop_List> shop_lists = pageListService.queryCurrentData(index, pageSize);
        PageList pageList = new PageList();
        pageList.setData(shop_lists);
        pageList.setPageSize(pageSize);
        System.out.println(pageList);
        model.addAttribute("maim_product",pageList);
        return "main";
    }
}
