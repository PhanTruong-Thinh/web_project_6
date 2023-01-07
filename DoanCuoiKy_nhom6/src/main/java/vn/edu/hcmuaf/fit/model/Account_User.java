package vn.edu.hcmuaf.fit.model;

import java.io.Serializable;
import java.util.Date;

public class Account_User implements Serializable {
    private String maKH;

    private String tenKH;

    private String email;
    private String SDT;
    private String matKhau;
    private int trangThai;
    private Date ngayDK;




    public Account_User() {
    }

    public Account_User(String maKH, String tenKH, String email, String sdt, String passw, int trangThai, Date ngayDK) {
        this.maKH = maKH;
        this.tenKH = tenKH;
        this.email = email;
        this.SDT = sdt;
        this.matKhau = passw;
        this.trangThai = trangThai;
        this.ngayDK = ngayDK;
    }

    public String getMaKH() {
        return maKH;
    }

    public void setMaKH(String maKH) {
        this.maKH = maKH;
    }

    public String getTenKH() {
        return tenKH;
    }

    public void setTenKH(String tenKH) {
        this.tenKH = tenKH;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getSDT() {
        return SDT;
    }

    public void setSDT(String SDT) {
        this.SDT = SDT;
    }

    public String getPassWord() {
        return matKhau;
    }

    public void setPassWord(String passWord) {
        this.matKhau = passWord;
    }

    public int getTrangThai() {
        return trangThai;
    }

    public void setTrangThai(int trangThai) {
        this.trangThai = trangThai;
    }

    public Date getNgayDK() {
        return ngayDK;
    }

    public void setNgayDK(Date ngayDK) {
        this.ngayDK = ngayDK;
    }

    @Override
    public String toString() {
        return "Account_User{" +
                "maKH='" + maKH + '\'' +
                ", tenKH='" + tenKH + '\'' +
                ", email='" + email + '\'' +
                ", SDT=" + SDT +
                ", passWord='" + matKhau + '\'' +
                ", trangThai=" + trangThai +
                ", ngayDK='" + ngayDK + '\'' +
                '}';
    }
}
