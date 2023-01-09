package vn.edu.hcmuaf.fit.model;

import java.io.Serializable;

public class CartItem implements Serializable {
    private String maKH;
    private String maSP;
    private String nameSP;

    private String url;
    private int sL;
    private double dongia;
    private double thanhTien;

    public CartItem() {}



    public CartItem(String maKH, String maSP, int sL) {
        this.maKH = maKH;
        this.maSP = maSP;
        this.sL = sL;
    }
    public CartItem(String maKH, String maSP, String nameSP, String url, int sL, double dongia, double thanhTien) {
        this.maKH = maKH;
        this.maSP = maSP;
        this.nameSP = nameSP;
        this.sL = sL;
        this.url = url;
        this.dongia = dongia;
        this.thanhTien = thanhTien;
    }
    public String getMaKH() {
        return maKH;
    }

    public void setMaKH(String maKH) {
        this.maKH = maKH;
    }

    public String getMaSP() {
        return maSP;
    }

    public void setMaSP(String maSP) {
        this.maSP = maSP;
    }

    public String getNameSP() {
        return nameSP;
    }

    public void setNameSP(String nameSP) {
        this.nameSP = nameSP;
    }

    public int getsL() {
        return sL;
    }

    public void setsL(int sL) {
        this.sL = sL;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public double getDongia() {
        return dongia;
    }

    public void setDongia(double dongia) {
        this.dongia = dongia;
    }

    public double getThanhTien() {
        return thanhTien;
    }

    public void setThanhTien(double thanhTien) {
        this.thanhTien = thanhTien;
    }

    @Override
    public String toString() {
        return "Cart{" +
                "maKH='" + maKH + '\'' +
                ", maSP='" + maSP + '\'' +
                ", sL=" + sL +
                '}';
    }
}
