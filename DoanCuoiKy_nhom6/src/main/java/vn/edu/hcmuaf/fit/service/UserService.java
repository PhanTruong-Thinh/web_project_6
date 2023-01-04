package vn.edu.hcmuaf.fit.service;

import vn.edu.hcmuaf.fit.db.JDBiConnector;
import vn.edu.hcmuaf.fit.model.Account_User;

import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

public class UserService {
    private static UserService instance;

    private static Map<String,String> users= new HashMap<>();
    static {
        users.put("travanphuquy01266984818@gmail.com","123");
        users.put("phantuongthinh1234@gmail.com","456");
        users.put("trantrungtin012356@gmail.com","789");

    }
    private UserService(){

    }
    public static UserService getInstance(){
        if(instance==null){
            instance = new UserService();

        }
        return instance;
    }
    public Account_User checkLogin(String username, String password){
        List<Account_User> users= JDBiConnector.me().withHandle(h->
                h.createQuery("SELECT * FROM tk_nguoidung WHERE username=?")
                        .bind(0,username)
                        .mapToBean(Account_User.class)
                        .stream().collect(Collectors.toList()));

        if(users.size() != 1) return null;
        Account_User user= users.get(0);
        if(!user.getPassWord().equals(hashPassword(password)) ||user.getEmail().equals(username)) return null;

        return user;



    }
    public String hashPassword(String password){
        try {
            MessageDigest sha256=null;
            sha256=MessageDigest.getInstance("SHHA-256");
            byte[] hash= sha256.digest(password.getBytes());
            BigInteger number= new BigInteger(1,hash);

        }catch (NoSuchAlgorithmException e){
            return null;

        }
    }

}
