package vn.edu.hcmuaf.fit.service;

import vn.edu.hcmuaf.fit.db.JDBiConnector;
import vn.edu.hcmuaf.fit.db.MySQLConnector;
import vn.edu.hcmuaf.fit.model.CartItem;
import vn.edu.hcmuaf.fit.model.Product;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.stream.Collectors;

public class ProductService {

    private static ProductService instance;

    private ProductService() {

    }

    public static ProductService getInstance() {
        if (instance == null) {
            instance = new ProductService();
        }
        return instance;
    }

    public static List<Product> getProducts() {
        List<Product> products = new ArrayList<>();
        try (var ps = MySQLConnector.getInstance().getPreparedStatement(
                "select s.Ngay_D ,s.Ma_SP,s.MA_DM,s.TenSP,s.XuatSu,s.Img,s.SoLuong,s.TrangThai,g.Gia_Ban, d.Ten_DM " +
                        "  from san_pham s join gia_sanpham g on s.Ma_SP=g.Ma_SP " +
                        "JOIN danh_muc d ON d.MA_DM = s.Ma_DM"
        )) {
            assert ps != null;
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                String id = rs.getString("Ma_SP");
                String id_DanhMuc = rs.getString("MA_DM");
                String tenDM = rs.getString("Ten_DM");
                String name = rs.getString("TenSP");
                String xuatXu = rs.getString("XuatSu");
                String img = rs.getString("Img");
                int sl = rs.getInt("SoLuong");
                Date ngayD = rs.getDate("Ngay_D");
                int trangthai = rs.getInt("TrangThai");
                int price = rs.getInt("Gia_Ban");
                products.add(new Product(id, id_DanhMuc, tenDM, name, xuatXu, img, sl, ngayD, trangthai, price));
            }
            return products;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return new ArrayList<>();
    }

    public static List<Product> getData(){
       return JDBiConnector.get().withHandle(handle -> {
            return handle.createQuery("select s.Ma_SP,s.MA_DM,s.TenSP,s.XuatSu,s.Img,s.SoLuong,s.TrangThai,g.Gia_Ban  " +
                            "from san_pham s join gia_sanpham g on s.Ma_SP=g.Ma_SP")
                    .mapToBean(Product.class)
                    .stream().collect(Collectors.toList());
        });
    }

    public static void putCart(List<CartItem> carts) {
        for (CartItem cart : carts) {
            JDBiConnector.get().withHandle(handle ->
                    handle.createUpdate("INSERT INTO gio_hang VALUES (?, ?, ?, 0)")
                            .bind(0, cart.getMaKH())
                            .bind(1, cart.getMaSP())
                            .bind(2, cart.getsL())
                            .execute());
        }
    }

    public static void addProduct(String maSP, String maDM, String tenSP, String xuatSu, String img, int tinhTrang, int soluong, int danhGia) {
        try {
            PreparedStatement ps = MySQLConnector.getInstance().getPreparedStatement(
                    "INSERT INTO san_pham VALUES (?,?,?,?,?,NOW(),?,?,1,?)"
            );
            ps.setString(1, maSP);
            ps.setString(2, maDM);
            ps.setString(3, tenSP);
            ps.setString(4, xuatSu);
            ps.setString(5, img);
            ps.setInt(6, tinhTrang);
            ps.setInt(7, soluong);
            ps.setInt(8, danhGia);
            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

}
