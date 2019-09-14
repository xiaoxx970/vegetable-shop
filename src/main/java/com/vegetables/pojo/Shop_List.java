package com.vegetables.pojo;

public class Shop_List {

  private long id;
  private String name;
  private double price;
  private String src;


  public long getId() {
    return id;
  }

  public void setId(long id) {
    this.id = id;
  }


  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }


  public double getPrice() {
    return price;
  }

  public void setPrice(double price) {
    this.price = price;
  }


  public String getSrc() {
    return src;
  }

  public void setSrc(String src) {
    this.src = src;
  }

  @Override
  public String toString() {
    return "ShopList{" +
            "id=" + id +
            ", name='" + name + '\'' +
            ", price=" + price +
            ", src='" + src + '\'' +
            '}';
  }
}
