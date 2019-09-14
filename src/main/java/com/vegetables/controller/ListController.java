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
@RequestMapping("/selectList")
public class ListController {
    @Autowired
    private PageListService pageListService;

    @RequestMapping("/seleAllShopList")
    public String seleAllShopList(Model model,Integer currentPage){
        int pageSize = 8;
        int index = (currentPage -1)*pageSize;
        List<Shop_List> shop_lists = pageListService.queryCurrentData(index, pageSize);
        int sum  = pageListService.queryTotalCount();
        int page = sum/pageSize;
        PageList pageList = new PageList();
        pageList.setData(shop_lists);
        pageList.setPageSize(8);
        pageList.setTotalCount(sum);
        pageList.setTotalPage(page);
        pageList.setCurrentPage(currentPage);
        System.out.println(pageList);
        model.addAttribute("pagelist",pageList);
        return "list";
    }


}
