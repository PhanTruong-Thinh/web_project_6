package vn.edu.hcmuaf.fit.model;

import java.io.Serializable;

public class Order implements Serializable {
    private String idOrder;
    private String idKH;
    private String name;
    private String phone;
    private String address;
    private double price;
    private double giaKM;
    private double sumPrice;

    public Order() {
    }

    public Order(String idOrder, String idKH, String name, String phone, String address, double price, double giaKM, double sumPrice) {
        this.idOrder = idOrder;
        this.idKH = idKH;
        this.name = name;
        this.phone = phone;
        this.address = address;
        this.price = price;
        this.giaKM = giaKM;
        this.sumPrice = sumPrice;
    }

    public String getIdOrder() {
        return idOrder;
    }

    public void setIdOrder(String idOrder) {
        this.idOrder = idOrder;
    }

    public String getIdKH() {
        return idKH;
    }

    public void setIdKH(String idKH) {
        this.idKH = idKH;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public double getGiaKM() {
        return giaKM;
    }

    public void setGiaKM(double giaKM) {
        this.giaKM = giaKM;
    }

    public double getSumPrice() {
        return sumPrice;
    }

    public void setSumPrice(double sumPrice) {
        this.sumPrice = sumPrice;
    }

    @Override
    public String toString() {
        return "Order{" +
                "idOrder='" + idOrder + '\'' +
                ", idKH='" + idKH + '\'' +
                ", name='" + name + '\'' +
                ", phone='" + phone + '\'' +
                ", address='" + address + '\'' +
                ", price=" + price +
                ", giaKM=" + giaKM +
                ", sumPrice=" + sumPrice +
                '}';
    }
}
