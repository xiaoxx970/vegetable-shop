package com.vegetables.pojo;
public class Shop_Cart {

  private long userid;
  private String name;
  private long quantity;
  private double total;


  public long getUserid() {
    return userid;
  }
  public void setUserid(long userid) {
    this.userid = userid;
  }


  public String getName() {
    return name;
  }
  public void setName(String name) {
    this.name = name;
  }


  public long getQuantity() {
    return quantity;
  }
  public void setQuantity(long quantity) {
    this.quantity = quantity;
  }


  public double getTotal() {
    return total;
  }
  public void setTotal(double total) {
    this.total = total;
  }

  @Override
  public String toString() {
    return "Shop_Cart{" +
            "userid=" + userid +
            ", name='" + name + '\'' +
            ", quantity=" + quantity +
            ", total=" + total +
            '}';
  }
}
