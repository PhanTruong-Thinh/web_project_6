package vn.edu.hcmuaf.fit.model;

public class Cart {
    private String maKh;
    private String maSp;
    private int sL;

    public Cart() {

    }

    public Cart(String maKh, String maSp, int sL) {
        this.maKh = maKh;
        this.maSp = maSp;
        this.sL = sL;
    }

    public String getMaKh() {
        return maKh;
    }

    public String getMaSp() {
        return maSp;
    }

    public int getsL() {
        return sL;
    }

    public void setMaKh(String maKh) {
        this.maKh = maKh;
    }

    public void setMaSp(String maSp) {
        this.maSp = maSp;
    }

    public void setsL(int sL) {
        this.sL = sL;
    }
}
