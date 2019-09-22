package com.vegetables.pojo;

public class Cart {

  private int cartId;
  private int parentId;
  private String pName;
  private double pPrice;
  private long quantity;
  private double pTotal;
  private String pSrc;


  public long getCartId() {
    return cartId;
  }

  public void setCartId(int  cartId) {
    this.cartId = cartId;
  }


  public int getParentId() {
    return parentId;
  }

  public void setParentId(int parentId) {
    this.parentId = parentId;
  }


  public String getPName() {
    return pName;
  }

  public void setPName(String pName) {
    this.pName = pName;
  }


  public double getPPrice() {
    return pPrice;
  }

  public void setPPrice(double pPrice) {
    this.pPrice = pPrice;
  }


  public long getQuantity() {
    return quantity;
  }

  public void setQuantity(long quantity) {
    this.quantity = quantity;
  }


  public double getPTotal() {
    return pTotal;
  }

  public void setPTotal(double pTotal) {
    this.pTotal = pTotal;
  }


  public String getPSrc() {
    return pSrc;
  }

  public void setPSrc(String pSrc) {
    this.pSrc = pSrc;
  }

  @Override
  public String toString() {
    return "Cart{" +
            "cartId=" + cartId +
            ", parentId=" + parentId +
            ", pName='" + pName + '\'' +
            ", pPrice=" + pPrice +
            ", quantity=" + quantity +
            ", pTotal=" + pTotal +
            ", pSrc='" + pSrc + '\'' +
            '}';
  }
}
