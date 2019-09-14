package com.vegetables.mapper;

import com.vegetables.pojo.Shop_List;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface PageListMapper {
    List<Shop_List> queryCurrentData(int index, int pageSize);

    @Select("SELECT COUNT(*) FROM shop_list")
    int queryTotalCount();
}
