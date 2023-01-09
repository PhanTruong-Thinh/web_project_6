package vn.edu.hcmuaf.fit.model;

import java.io.Serializable;
import java.util.Date;

public class Account_User implements Serializable {
    private String maKH;

    private String tenKH;

    private String email;
    private String sdt;
    private String matKhau;
    private int trangThai;
    private Date ngayDK;




    public Account_User() {
    }

    public Account_User(String maKH, String tenKH, String email, String sdt, String matKhau, int trangThai, Date ngayDK) {
        this.maKH = maKH;
        this.tenKH = tenKH;
        this.email = email;
        this.sdt = sdt;
        this.matKhau = matKhau;
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

    public String getSdt() {
        return sdt;
    }

    public void setSdt(String sdt) {
        this.sdt = sdt;
    }

    public String getMatKhau() {
        return matKhau;
    }

    public void setMatKhau(String matKhau) {
        this.matKhau = matKhau;
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
                ", SDT=" + sdt +
                ", passWord='" + matKhau + '\'' +
                ", trangThai=" + trangThai +
                ", ngayDK='" + ngayDK + '\'' +
                '}';
    }
}
