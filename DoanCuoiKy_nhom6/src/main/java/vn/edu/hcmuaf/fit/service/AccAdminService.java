package vn.edu.hcmuaf.fit.service;

import vn.edu.hcmuaf.fit.db.JDBiConnector;
import vn.edu.hcmuaf.fit.model.Accout_Admin;

import java.util.List;
import java.util.stream.Collectors;

public class AccAdminService {
    private static AccAdminService instance;



    private AccAdminService() {

    }

    public static AccAdminService getInstance() {
        if (instance == null) {
            instance = new AccAdminService();

        }
        return instance;
    }


    public Accout_Admin checkLogin(String username, String password){
        List<Accout_Admin> users= JDBiConnector.get().withHandle(h->
                h.createQuery("SELECT Ma_Admin,Ten,Email,Pasword,TrangThai,Vai_tro FROM tk_quantri WHERE  Email=? AND Pasword=?")
                        .bind(0,username).bind(1, password)
                        .mapToBean(Accout_Admin.class)
                        .stream().collect(Collectors.toList()));


        if (users.size() != 1) return null;

        Accout_Admin user = users.get(0);
        if ( user.getEmail().equals(username) || user.getPass().equals(password)) {
            return user;
        }
        return null;
    }


    //them tai khoan admin
    public  static void addAccountAdmin(String id,String name, String email, String pass, String vaitro){
        JDBiConnector.get().withHandle(handle -> {
            return handle.createUpdate("insert into tk_quantri values ('"+id+"','"+name+"','"+email+"','"+pass+"',0,'"+vaitro+"')").execute();
        });
    }

    //cap nhat vai tro
    public  static void updateVaiTroAccountAdmin( String vaitro){
        JDBiConnector.get().withHandle(handle -> {
            return handle.createUpdate("UPDATE tk_nguoidung set Vai_tro =  '"+vaitro+"'").execute();
        });
    }

    //get list tai khoan admin
    public static Integer getAccountAdmin(){
       return JDBiConnector.get().withHandle(handle -> {
            return handle.createUpdate("select Ma_Admin,Ten,Email,Password,Trang_Thai,Vai_tro from tk_quantri").execute();
        });
    }
}
