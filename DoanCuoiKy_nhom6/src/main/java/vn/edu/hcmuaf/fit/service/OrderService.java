package vn.edu.hcmuaf.fit.service;

import vn.edu.hcmuaf.fit.db.JDBIConnector;

import java.time.LocalDate;

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
        JDBIConnector.get().withHandle(handle -> {
            return handle.createUpdate("INSERT INTO orders VALUES('"+idOrder+"','"+name+"','"+phone+"','"+address+"',"+price+","+price+","+ LocalDate.now() +")").execute();
        });
    }


    //cap nhat thon tin don hang
    public static void updateOrderIfo(String id,String phone, String address){
        JDBIConnector.get().withHandle(handle -> {
            return handle.createUpdate("update don_dat_hang set Dia_Chi='"+address+"', So_DT='"+phone+"' where Ma_DDH='"+id+"'").execute();
        });
    }
}
