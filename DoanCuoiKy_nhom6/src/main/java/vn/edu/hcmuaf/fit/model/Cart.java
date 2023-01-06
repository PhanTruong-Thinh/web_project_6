package vn.edu.hcmuaf.fit.model;

public class Cart {
    private String maKH;
    private String maSP;
    private int sL;

    public Cart(String maKH, String maSP, int sL) {
        this.maKH = maKH;
        this.maSP = maSP;
        this.sL = sL;
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

    public int getsL() {
        return sL;
    }

    public void setsL(int sL) {
        this.sL = sL;
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
