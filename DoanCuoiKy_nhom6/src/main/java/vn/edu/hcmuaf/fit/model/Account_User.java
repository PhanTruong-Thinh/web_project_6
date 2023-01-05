package vn.edu.hcmuaf.fit.model;

public class Account_User {
    private String maKH;

    private String tenKH;





    private String email;
    private int SDT;
    private String passWord;
    private int trangThai;
    private String ngayDK;




    public Account_User() {
    }

    public Account_User(String maKH, String tenKH, String email, int SDT, String passWord, int trangThai, String ngayDK) {
        this.maKH = maKH;
        this.tenKH = tenKH;
        this.email = email;
        this.SDT = SDT;
        this.passWord = passWord;
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

    public int getSDT() {
        return SDT;
    }

    public void setSDT(int SDT) {
        this.SDT = SDT;
    }

    public String getPassWord() {
        return passWord;
    }

    public void setPassWord(String passWord) {
        this.passWord = passWord;
    }

    public int getTrangThai() {
        return trangThai;
    }

    public void setTrangThai(int trangThai) {
        this.trangThai = trangThai;
    }

    public String getNgayDK() {
        return ngayDK;
    }

    public void setNgayDK(String ngayDK) {
        this.ngayDK = ngayDK;
    }

    @Override
    public String toString() {
        return "Account_User{" +
                "maKH='" + maKH + '\'' +
                ", tenKH='" + tenKH + '\'' +
                ", email='" + email + '\'' +
                ", SDT=" + SDT +
                ", passWord='" + passWord + '\'' +
                ", trangThai=" + trangThai +
                ", ngayDK='" + ngayDK + '\'' +
                '}';
    }
}
