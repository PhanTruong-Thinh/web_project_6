package vn.edu.hcmuaf.fit.service;

import vn.edu.hcmuaf.fit.db.JDBiConnector;
import vn.edu.hcmuaf.fit.db.MySQLConnector;
import vn.edu.hcmuaf.fit.model.CartItem;

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

    public static void order(List<CartItem> carts) {
        try (var ps = MySQLConnector.getInstance().getPreparedStatement(
                ""
        )) {

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
