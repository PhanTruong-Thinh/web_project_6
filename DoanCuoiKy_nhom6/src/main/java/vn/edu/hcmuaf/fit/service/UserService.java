package vn.edu.hcmuaf.fit.service;

import vn.edu.hcmuaf.fit.db.JDBiConnector;
import vn.edu.hcmuaf.fit.model.Account_User;

import java.util.List;
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

    public Account_User checkLogin(String username, String password) {
        List<Account_User> users = JDBiConnector.get().withHandle(h ->
                h.createQuery("SELECT Ma_KH,TenKH,Email,So_DT,Mat_Khau,TrangThai,Ngay_DK " +
                                "FROM tk_nguoidung WHERE  Email=? AND Mat_Khau=?")
                        .bind(0, username).bind(1, password)
                        .mapToBean(Account_User.class)
                        .stream().collect(Collectors.toList()));

        if (users.size() != 1) return null;
        return users.get(0);
    }

}
