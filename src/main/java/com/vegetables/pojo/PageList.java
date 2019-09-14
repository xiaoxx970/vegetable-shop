package com.vegetables.pojo;

import java.util.List;
public class PageList {
    private List<Shop_List> data;//当前页的数据
    private int firstPage;//首页
    private int prePage;//上一页
    private int nextPage;//下一页
    private int totalPage;//末页、总页数
    private int currentPage;//当前页
    private int totalCount;//总记录数
    private int pageSize;//每页显示的记录数
    public List<Shop_List> getData() {
        return data;
    }
    public void setData(List<Shop_List> data) {
        this.data = data;
    }
    public int getFirstPage() {
        return 1;
    }
    public void setFirstPage(int firstPage) {
        this.firstPage = firstPage;
    }
    /**
     * 计算上一页
     * @return
     */
    public int getPrePage() {
        return this.getCurrentPage()==this.getFirstPage() ? 1 : this.getCurrentPage()-1;
    }
    public void setPrePage(int prePage) {
        this.prePage = prePage;
    }
    /**
     * 计算下一页
     * @return
     */
    public int getNextPage() {
        return this.getCurrentPage()==this.getTotalPage()?
                this.getTotalPage()
                : this.getCurrentPage()+1;
    }
    public void setNextPage(int nextPage) {
        this.nextPage = nextPage;
    }
    public int getTotalPage() {
        return this.getTotalCount()%this.getPageSize()==0 ?
                this.getTotalCount()/this.getPageSize()
                :this.getTotalCount()/this.getPageSize()+1;
    }

    public void setTotalPage(int totalPage) {
        this.totalPage = totalPage;
    }
    public int getCurrentPage() {
        return currentPage;
    }
    public void setCurrentPage(int currentPage) {
        this.currentPage = currentPage;
    }
    public int getTotalCount() {
        return totalCount;
    }
    public void setTotalCount(int totalCount) {
        this.totalCount = totalCount;
    }
    public int getPageSize() {
        return pageSize;
    }
    public void setPageSize(int pageSize) {
        this.pageSize = pageSize;
    }

    public PageList() {

    }

    @Override
    public String toString() {
        return "PageList{" +
                "data=" + data +
                ", firstPage=" + firstPage +
                ", prePage=" + prePage +
                ", nextPage=" + nextPage +
                ", totalPage=" + totalPage +
                ", currentPage=" + currentPage +
                ", totalCount=" + totalCount +
                ", pageSize=" + pageSize +
                '}';
    }
}
