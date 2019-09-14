package com.vegetables.service;

import com.vegetables.pojo.Shop_List;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface PageListService {
    List<Shop_List> queryCurrentData(int index, int pageSize);
    int queryTotalCount();
}
