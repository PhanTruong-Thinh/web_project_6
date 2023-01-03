package vn.edu.hcmuaf.fit.model;

public class PriceProduct {
    private String idProduct;
    private String date;
    private double gia_Thuc;
    private double gia_Ban;

    public PriceProduct(){

    }

    public PriceProduct(String idProduct, String date, double gia_Thuc, double gia_Ban) {
        this.idProduct = idProduct;
        this.date = date;
        this.gia_Thuc = gia_Thuc;
        this.gia_Ban = gia_Ban;
    }

    public String getIdProduct() {
        return idProduct;
    }

    public void setIdProduct(String idProduct) {
        this.idProduct = idProduct;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public double getGia_Thuc() {
        return gia_Thuc;
    }

    public void setGia_Thuc(double gia_Thuc) {
        this.gia_Thuc = gia_Thuc;
    }

    public double getGia_Ban() {
        return gia_Ban;
    }

    public void setGia_Ban(double gia_Ban) {
        this.gia_Ban = gia_Ban;
    }
}
