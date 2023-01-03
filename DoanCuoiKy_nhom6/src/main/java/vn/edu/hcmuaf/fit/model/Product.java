package vn.edu.hcmuaf.fit.model;

import java.io.Serializable;

public class Product implements Serializable {
    private int id;
    private String id_DanhMuc;
    private String name;
    private String xuatXu;
    private String img;
//    private long price;
    private int soLuong;
    private String trangThai;
    private PriceProduct price;

    public Product() {
    }

    public Product(int id, String name, String img, PriceProduct price) {
        this.id = id;
        this.name = name;
        this.img = img;
        this.price = price;
    }

    public Product(int id, String id_DanhMuc, String name, String xuatXu, String img, PriceProduct price, int soLuong, String trangThai) {
        this.id = id;
        this.id_DanhMuc = id_DanhMuc;
        this.name = name;
        this.xuatXu = xuatXu;
        this.img = img;
        this.price = price;
        this.soLuong = soLuong;
        this.trangThai = trangThai;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public String getId_DanhMuc() {
        return id_DanhMuc;
    }

    public void setId_DanhMuc(String id_DanhMuc) {
        this.id_DanhMuc = id_DanhMuc;
    }

    public String getXuatXu() {
        return xuatXu;
    }

    public void setXuatXu(String xuatXu) {
        this.xuatXu = xuatXu;
    }

    public int getSoLuong() {
        return soLuong;
    }

    public void setSoLuong(int soLuong) {
        this.soLuong = soLuong;
    }

    public String getTrangThai() {
        return trangThai;
    }

    public void setTrangThai(String trangThai) {
        this.trangThai = trangThai;
    }

    public double getPrice() {
        return price.getGia_Ban();
    }

    public void setPrice(double price) {
        this.price.setGia_Ban( price) ;
    }

    @Override
    public String toString() {
        return "Product{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", img='" + img + '\'' +
                ", price=" + price.getGia_Ban() +
                '}';
    }
}
