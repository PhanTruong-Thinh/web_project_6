package vn.edu.hcmuaf.fit.service;

import vn.edu.hcmuaf.fit.db.JDBiConnector;
import vn.edu.hcmuaf.fit.db.MySQLConnector;
import vn.edu.hcmuaf.fit.model.Cart;
import vn.edu.hcmuaf.fit.model.Product;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;
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

    //kiem tra gio hang
    public boolean checkExist(String idUser, String idProd) {
        List<Cart> cart = JDBiConnector.get().withHandle(handle -> {
            return handle.createQuery("select c.Ma_KH,c.MA_SP,p.TenSP,c.SoLuong,p.Img,r.Gia_Ban,c.SoLuong*r.Gia_Ban from gio_hang c join san_pham p join gia_sanpham r on p.Ma_SP=r.Ma_SP on c.Ma_SP=p.Ma_SP  where  c.Ma_KH= '"+idUser+"' and c.Ma+SP = '" + idProd + "'").mapToBean(Cart.class).list();
        });
        if (cart.size() > 0) return true;
        return false;
    }

    //them san pham vao gio hang
    public void insertToCart(String idUser, String idProd, int amount) {
        JDBiConnector.get().withHandle(handle -> {
            return handle.createUpdate("INSERT INTO gio_hang values ('"+idUser+"','"+idProd+"',"+amount+")").execute();
        });
    }


    //cap nhat gio hang
    public void updateToCart(String idUser, String idProd, int amount) {
        JDBiConnector.get().withHandle(handle -> {
            return handle.createUpdate("UPDATE gio_hang set SoLuong = SoLuong + "+amount+" WHERE Ma_KH = '"+idProd+"' and Ma_SP = '"+idUser+"'").execute();
        });
    }


    //xoa san pham khoi gio hang
    public void deleteFromCart(String idProd, String idUser) {
        JDBiConnector.get().withHandle(handle -> {
            return handle.createUpdate("DELETE FROM gio_hang WHERE Ma_SP = '"+idProd+"' and Ma_KH = '"+idUser+"'").execute();
        });
    }


    //lay san pham tu gio hang
    public static List<Cart> getProdFormCart(String idUser) {
        return JDBiConnector.get().withHandle(handle ->
                handle.createQuery("select Ma_KH, s.Ma_SP, s.TenSP, s.Img, So_Luong, gia.Gia_Ban " +
                        "FROm gio_hang g JOIN san_pham s ON g.Ma_SP = s.Ma_SP JOIN gia_sanpham gia ON gia.Ma_SP = s.Ma_SP " +
                        "WHERE Ma_KH = ?")
                .bind(0,idUser)
                .mapToBean(Cart.class)
                .stream().collect(Collectors.toList()));
    }

    //lay danh sach san pham gio hang theo ma khanh hang
    public List<Cart> getProdFormCartIdUser(String idUser) {
        return JDBiConnector.get().withHandle(handle -> {
            return handle.createQuery("select c.Ma_KH,c.MA_SP,c.SoLuong,p.Img,r.Gia_Ban,c.SoLuong*r.Gia_Ban " +
                    "from gio_hang c join san_pham p join gia_sanpham r on p.Ma_SP=r.Ma_SP on c.Ma_SP=p.Ma_SP  " +
                    "where  c.Ma_KH= '"+idUser+"'").mapToBean(Cart.class).list();
        });
    }

    public static List<Cart> getCarts(String maKH) {
        List<Cart> carts = new ArrayList<>();
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
                carts.add(new Cart(maKH, msp, tensp, Img, So_Luong, giaban, thanhtien));
            }
            return carts;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return new ArrayList<>();
    }

    public static void main(String[] args) {
        System.out.println(Arrays.toString(CartService.getCarts("KH01").toArray()));
    }
}
