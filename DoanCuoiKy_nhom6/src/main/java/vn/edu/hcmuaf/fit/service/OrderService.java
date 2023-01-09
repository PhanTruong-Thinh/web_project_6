package vn.edu.hcmuaf.fit.service;

import vn.edu.hcmuaf.fit.db.JDBiConnector;
import vn.edu.hcmuaf.fit.db.MySQLConnector;
import vn.edu.hcmuaf.fit.model.Cart;

import java.sql.SQLException;
import java.time.LocalDate;
import java.util.List;

public class OrderService {

    public OrderService() {
    }
    private static OrderService instance;
    public static OrderService getInstance() {
        if (instance == null) {
            instance = new OrderService();
        }
        return instance;
    }
    public void addToOrder(String idOrder,String maKH,String name, String phone, String address, double price, double KM, String note, int condition) {
        JDBiConnector.get().withHandle(handle -> {
            return handle.createUpdate("INSERT INTO orders VALUES('"+idOrder+"','"+name+"','"+phone+"','"+address+"',"+price+","+price+","+ LocalDate.now() +")").execute();
        });
    }


    //cap nhat thon tin don hang
    public static void updateOrderIfo(String id,String phone, String address){
        JDBiConnector.get().withHandle(handle -> {
            return handle.createUpdate("update don_dat_hang set Dia_Chi='"+address+"', So_DT='"+phone+"' where Ma_DDH='"+id+"'").execute();
        });
    }

    public static void order(List<Cart> carts) {
        try (var ps = MySQLConnector.getInstance().getPreparedStatement(
                ""
        )) {

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
