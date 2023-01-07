package vn.edu.hcmuaf.fit.model;

import java.io.Serializable;

public class TrangThaiOrder implements Serializable {
    private String id;
    private String trangthai;

    public TrangThaiOrder() {
    }

    public TrangThaiOrder(String id, String trangthai) {
        this.id = id;
        this.trangthai = trangthai;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getTrangthai() {
        return trangthai;
    }

    public void setTrangthai(String trangthai) {
        this.trangthai = trangthai;
    }
}
