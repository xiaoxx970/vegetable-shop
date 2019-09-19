package com.vegetables.service;

import com.vegetables.pojo.Shop_List;

import java.util.List;

public interface PageListService {
    List<Shop_List> queryCurrentData(int index, int pageSize);
    int queryTotalCount();
}
