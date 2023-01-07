package vn.edu.hcmuaf.fit.model;

import java.io.Serializable;

public class Accout_Admin implements Serializable {

    private String id;
    private String name;
    private String email;
    private String pass;
    private int trangThai;
    private String vaiTro;

    public Accout_Admin() {
    }

    public Accout_Admin(String id, String name, String email, String pass, int trangThai, String vaiTro) {
        this.id = id;
        this.name = name;
        this.email = email;
        this.pass = pass;
        this.trangThai = trangThai;
        this.vaiTro = vaiTro;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    public int getTrangThai() {
        return trangThai;
    }

    public void setTrangThai(int trangThai) {
        this.trangThai = trangThai;
    }

    public String getVaiTro() {
        return vaiTro;
    }

    public void setVaiTro(String vaiTro) {
        this.vaiTro = vaiTro;
    }

    @Override
    public String toString() {
        return "Accout_Admin{" +
                "id='" + id + '\'' +
                ", name='" + name + '\'' +
                ", email='" + email + '\'' +
                ", pass='" + pass + '\'' +
                ", trangThai=" + trangThai +
                ", vaiTro='" + vaiTro + '\'' +
                '}';
    }
}
