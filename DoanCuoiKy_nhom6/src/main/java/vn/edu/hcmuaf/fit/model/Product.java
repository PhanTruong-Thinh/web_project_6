package vn.edu.hcmuaf.fit.model;

import java.io.Serializable;
import java.util.Date;

public class Product implements Serializable {
    private String id;
    private String id_DanhMuc;
    private String name;
    private String xuatXu;
    private String img;
//    private long price;
    private int soLuong;
    private int trangThai;
    private int price;

    public Product() {
    }

//    public Product(int id, String name, String img,double price) {
//        this.id = id;
//        this.name = name;
//        this.img = img;
//        this.price = price;
//    }

    public Product(String id, String id_DanhMuc, String name, String xuatXu, String img, int soLuong, int trangThai, int price) {
        this.id = id;
        this.id_DanhMuc = id_DanhMuc;
        this.name = name;
        this.xuatXu = xuatXu;
        this.img = img;
        this.soLuong = soLuong;
        this.trangThai = trangThai;
        this.price = price;
    }

//    public Product(int id, String id_DanhMuc, String name, String xuatXu, String img, double price, int soLuong, String trangThai) {
//        this.id = id;
//        this.id_DanhMuc = id_DanhMuc;
//        this.name = name;
//        this.xuatXu = xuatXu;
//        this.img = img;
//        this.price = price;
//        this.soLuong = soLuong;
//        this.trangThai = trangThai;
//    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getId_DanhMuc() {
        return id_DanhMuc;
    }

    public void setId_DanhMuc(String id_DanhMuc) {
        this.id_DanhMuc = id_DanhMuc;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getXuatXu() {
        return xuatXu;
    }

    public void setXuatXu(String xuatXu) {
        this.xuatXu = xuatXu;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public int getSoLuong() {
        return soLuong;
    }

    public void setSoLuong(int soLuong) {
        this.soLuong = soLuong;
    }

    public int getTrangThai() {
        return trangThai;
    }

    public void setTrangThai(int trangThai) {
        this.trangThai = trangThai;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    @Override
    public String toString() {
        return "Product{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", img='" + img + '\'' +
                ", price=" + price +
                '}';
    }
}
