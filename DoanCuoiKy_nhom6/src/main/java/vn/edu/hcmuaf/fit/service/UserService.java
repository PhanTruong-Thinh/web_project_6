package vn.edu.hcmuaf.fit.service;

import vn.edu.hcmuaf.fit.db.JDBiConnector;
import vn.edu.hcmuaf.fit.model.Account_User;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.time.LocalDateTime;
import java.util.*;
import java.util.stream.Collectors;

public class UserService {
    private static UserService instance;



    private UserService() {

    }

    public static UserService getInstance() {
        if (instance == null) {
            instance = new UserService();

        }
        return instance;
    }
//<<<<<<< HEAD

//    public Account_User checkLogin(String username, String password) {
//        List<Account_User> users = JDBiConnector.get().withHandle(h ->
//                h.createQuery("SELECT Email,Mat_Khau FROM tk_nguoidung WHERE Email=? And Mat_Khau=?")
//                        .bind(0, username).bind(1, password);
//    }
////=======//
    public Account_User checkLogin(String username, String password){
         List<Account_User> users= JDBiConnector.get().withHandle(h->
                        h.createQuery("SELECT Ma_KH,TenKH,Email,So_DT,Mat_Khau,TrangThai,Ngay_DK " +
                                        "FROM tk_nguoidung WHERE  Email=? AND Mat_Khau=?")
                                .bind(0,username).bind(1, password)
                                .mapToBean(Account_User.class)
                                .stream().collect(Collectors.toList()));



        if (users.size() != 1) return null;

        Account_User user = users.get(0);
        if (user != null)
        return user;
//        System.out.print(user.getTenKH()+user.getMaKH()+user.getTrangThai());
//        System.out.print(user.getPassWord());
//        System.out.print(user.getEmail());
//        System.out.print(user.getSDT());
//        if ( user.getEmail().equals(username) || user.getPassWord().equals(password)) {
//            return user;
//        }

        return null;


    }

    public static void main(String[] args) {
        UserService userService = new UserService();
        System.out.println(userService.checkLogin("trantrungtin012356@gmail.com","123").getSdt());
    }

    public String hashPassword(String password) {
        try {
            MessageDigest sha256 = null;
            sha256 = MessageDigest.getInstance("SHA-256");
            byte[] hash = sha256.digest(password.getBytes());
            BigInteger number = new BigInteger(1, hash);
            return number.toString(16);
        } catch (NoSuchAlgorithmException e) {
            return null;

        }
    }

//    public List<Account_User> getListUser() {
//        return JDBiConnector.get().withHandle(handle -> {
//            return handle.createQuery("SELECT * FROM tk_nguoidung")
//                    .mapToBean(Account_User.class).collect(Collectors.toList());
//        });
//    }
//
//    public boolean checkAccountExist(String email, String phone) {
//        List<Account_User> list = JDBiConnector.get().withHandle(handle -> {
//            return handle.createQuery("SELECT * FROM tk_nguoidung")
//                    .mapToBean(Account_User.class).collect(Collectors.toList());
//        });
//        for (Account_User u : list) {
//            if (email.equals(u.getEmail()) || phone.equals(u.getSDT())) return true;
//        }
//        return false;
//
//    }
//
//    public void addUser(String name, String email, String phone, String pass) {
//        List<Account_User> users = getListUser();
//        String importDate = LocalDateTime.now().getYear() + "-" + LocalDateTime.now().getMonthValue() + "-" + LocalDateTime.now().getDayOfMonth();
//        int count = users.size();
//        JDBiConnector.get().withHandle(handle -> {
//            return handle.createUpdate("INSERT INTO `user` VALUES( 'user" + (count + 1) + "',NULL,'"
//                    + pass + "','" + name + "','" + phone + "','" + email + "'," + "NULL,'" + importDate + "', NULL,0)").execute();
//
//        });
//
//    }
//
//    public void changePass(String email, String phone, String pass) {
//        List<Account_User> users = getListUser();
//        int count = users.size();
//        JDBiConnector.get().withHandle(handle -> {
//            return handle.createUpdate("UPDATE tk_nguoidung SET pass='" + pass + "'WHERE EMAIL='"
//                    + email + "'or PHONE='" + phone + "'").execute();
//
//        });
//    }
//
//    public String codeChange() {
//        String code = "";
//        Random rd = new Random();
//        for (int i = 0; i < 6; i++) {
//            code += rd.nextInt(10);
//        }
//        return code;
//    }
//
//    public int getNewbie() {
//        List<Account_User> l = JDBiConnector.get().withHandle(handle -> {
//            return handle.createQuery("SELECT * FROM tk_nguoidung where Month(DATE_SIGNUP)='" + LocalDateTime.now().getMonthValue() + "'")
//                    .mapToBean(Account_User.class).collect(Collectors.toList());
//        });
//        return l.size();
//    }
//
//    public List<Account_User> searchUser(String text) {
//        List<Account_User> list = new ArrayList<>();
//        for (Account_User u : getListUser()) {
//            if (u.getMaKH().toUpperCase().contains(text.toUpperCase()) || u.getTenKH().toUpperCase().contains(text.toUpperCase()) || u.getEmail().toUpperCase().contains(text.toUpperCase())) {
//                list.add(u);
//            }
//        }
//        return list;
//
//    }
//
//    public void contact(String iduser, String content) {
//        JDBiConnector.get().withHandle(handle -> {
//            return handle.createUpdate("INSERT INTO contact VALUES('" + iduser + "','" + content + "','" + LocalDateTime.now() + "');").execute();
//        });
//    }
//
//    public static void main(String[] args) {
////        UserService.getInstance().changePass("1111111111", "1111111111", "aaa");
////    }
////
////    public List<Account_User> listCTAccount(String iduser) {
////        return JDBiConnector.get().withHandle(handle -> {
////            return handle.createQuery("SELECT u.ID_USER, u.NAME_USER, u.SEX,u.BIRTHDAY, u.PHONE, u.EMAIL, u.ADDRESS, u.PASSW FROM `user` u WHERE u.ID_USER='" + iduser + "'")
////                    .mapToBean(Account_User.class).collect(Collectors.toList());
////        });
////    }
////
////    public static void updateCtAccount(String iduser, String name, int sex, String birthday, String email, String phone, String passw, String address, String repassw) {
////        JDBiConnector.get().withHandle(handle -> {
////            return handle.createUpdate("UPDATE `user` u set u.NAME_USER='" + name + "', u.SEX= " + sex + ",u.BIRTHDAY='" + birthday + "', u.EMAIL='" + email + "', u.PHONE= '" + phone + "', u.PASSW='" + passw + "', u.ADDRESS='" + address + "' WHERE ID_USER='" + iduser + "'").execute();
////        });
//    }

}
