package com.vegetables.pojo;
public class Wish {
  private long wishId;
  private long parentId;
  private String wName;
  private double wPrice;
  private String src;


  public long getWishId() {
    return wishId;
  }

  public void setWishId(long wishId) {
    this.wishId = wishId;
  }


  public long getParentId() {
    return parentId;
  }

  public void setParentId(long parentId) {
    this.parentId = parentId;
  }


  public String getWName() {
    return wName;
  }

  public void setWName(String wName) {
    this.wName = wName;
  }


  public double getWPrice() {
    return wPrice;
  }

  public void setWPrice(double wPrice) {
    this.wPrice = wPrice;
  }


  public String getSrc() {
    return src;
  }

  public void setSrc(String src) {
    this.src = src;
  }

  @Override
  public String toString() {
    return "Wish{" +
            "wishId=" + wishId +
            ", parentId=" + parentId +
            ", wName='" + wName + '\'' +
            ", wPrice=" + wPrice +
            ", src='" + src + '\'' +
            '}';
  }
}
