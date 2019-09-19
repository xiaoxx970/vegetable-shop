package com.vegetables.service.serviceImpl;
import com.vegetables.mapper.PageListMapper;

import com.vegetables.pojo.Shop_List;
import com.vegetables.service.PageListService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class PageListServiceImpl implements PageListService {
    @Autowired
    private PageListMapper pageListMapper;

    @Override
    public List<Shop_List> queryCurrentData(int index, int pageSize) {
        List<Shop_List> Pageshop_lists = pageListMapper.queryCurrentData(index, pageSize);
        return  Pageshop_lists;
    }

    @Override
    public int queryTotalCount() {
        Integer sum = pageListMapper.queryTotalCount();
        return sum;
    }



}
