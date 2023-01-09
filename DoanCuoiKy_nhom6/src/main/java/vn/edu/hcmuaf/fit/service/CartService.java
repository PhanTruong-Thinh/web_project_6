package vn.edu.hcmuaf.fit.service;

import vn.edu.hcmuaf.fit.db.MySQLConnector;
import vn.edu.hcmuaf.fit.model.CartItem;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class CartService {

    public CartService() {
    }

    private static CartService instance;
    public static CartService getInstance() {
        if (instance == null) {
            instance = new CartService();
        }
        return instance;
    }

    public static List<CartItem> getCarts(String maKH) {
        List<CartItem> carts = new ArrayList<>();
        try (var ps = MySQLConnector.getInstance().getPreparedStatement(
                "select Ma_KH, s.Ma_SP, s.TenSP, s.Img, So_Luong, gia.Gia_Ban, gia.Gia_Ban gb " +
                        "                          FROm gio_hang g JOIN san_pham s ON g.Ma_SP = s.Ma_SP " +
                        "JOIN gia_sanpham gia ON gia.Ma_SP = s.Ma_SP " +
                        "                            WHERE Ma_KH = ?"
        )) {
            assert ps != null;
            ps.setString(1, maKH);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                String msp = rs.getString("Ma_SP");
                String tensp = rs.getString("TenSP");
                String Img = rs.getString("Img");
                int So_Luong = rs.getInt("So_Luong");
                double giaban = rs.getDouble("Gia_Ban");
                double thanhtien = rs.getDouble("gb");
                carts.add(new CartItem(maKH, msp, tensp, Img, So_Luong, giaban, thanhtien));
            }
            return carts;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return new ArrayList<>();
    }

}
