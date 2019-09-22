package com.vegetables.pojo;
public class User {
  private int  userid;
  private String sex;
  private String username;
  private String password;
  private String phone;
  private String email;
  private String adress;


  public int getUserid() {
    return userid;
  }

  public void setUserid(int  userid) {
    this.userid = userid;
  }


  public String getSex() {
    return sex;
  }

  public void setSex(String sex) {
    this.sex = sex;
  }


  public String getUsername() {
    return username;
  }

  public void setUsername(String username) {
    this.username = username;
  }


  public String getPassword() {
    return password;
  }

  public void setPassword(String password) {
    this.password = password;
  }


  public String getPhone() {
    return phone;
  }

  public void setPhone(String phone) {
    this.phone = phone;
  }


  public String getEmail() {
    return email;
  }

  public void setEmail(String email) {
    this.email = email;
  }


  public String getAdress() {
    return adress;
  }

  public void setAdress(String adress) {
    this.adress = adress;
  }

  @Override
  public String toString() {
    return "User{" +
            "userid=" + userid +
            ", sex='" + sex + '\'' +
            ", username='" + username + '\'' +
            ", password='" + password + '\'' +
            ", phone='" + phone + '\'' +
            ", email='" + email + '\'' +
            ", adress='" + adress + '\'' +
            '}';
  }
}
