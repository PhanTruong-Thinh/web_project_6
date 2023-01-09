package vn.edu.hcmuaf.fit.service;

import vn.edu.hcmuaf.fit.db.JDBiConnector;
import vn.edu.hcmuaf.fit.db.MySQLConnector;
import vn.edu.hcmuaf.fit.model.Cart;
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

    //lay san pham theo id
    public static List<Product> getProductID(String Id){
        return JDBiConnector.get().withHandle(handle -> {
            return handle.createQuery("select s.Ma_SP,s.MA_SM,s.TenSP,s.XuatSu,s.Img,s.SoLuong,s.TrangThai,g.Gia_Ban  from san_pham s join gia_sanpham g on s.Ma_SP=g.Ma_SP where s.Ma_SP='"+Id+"'").mapToBean(Product.class)
                    .stream().collect(Collectors.toList());
        });
    }

    //lay san pham theo danh muc
    public static List<Product> getProductCategory(String IdDM){
        return JDBiConnector.get().withHandle(handle -> {
            return handle.createQuery("select s.Ma_SP,s.MA_SM,s.TenSP,s.XuatSu,s.Img,s.SoLuong,s.TrangThai,g.Gia_Ban  from san_pham s join gia_sanpham g on s.Ma_SP=g.Ma_SP where s.Ma_DM='"+IdDM+"'").mapToBean(Product.class)
                    .stream().collect(Collectors.toList());
        });
    }

    //lay san pham theo gia
    public static List<Product> getProductPrice(double price){
        return JDBiConnector.get().withHandle(handle -> {
            return handle.createQuery("select s.Ma_SP,s.MA_SM,s.TenSP,s.XuatSu,s.Img,s.SoLuong,s.TrangThai,g.Gia_Ban  from san_pham s join gia_sanpham g on s.Ma_SP=g.Ma_SP where g.Gia_Ban="+price+"").mapToBean(Product.class)
                    .stream().collect(Collectors.toList());
        });
    }

    //loc san pham thoe khoan gia
    public static List<Product> getProductBetwenPrice(double min, double max){
        return JDBiConnector.get().withHandle(handle -> {
            return handle.createQuery("select s.Ma_SP,s.MA_SM,s.TenSP,s.XuatSu,s.Img,s.SoLuong,s.TrangThai,g.Gia_Ban  from san_pham s join gia_sanpham g on s.Ma_SP=g.Ma_SP where g.Gia_Ban between "+min+" and "+max).mapToBean(Product.class)
                    .stream().collect(Collectors.toList());
        });
    }


    //lay san pham lien tuong tu
    public List<Product> getRelatedProducts(String id) {
        return JDBiConnector.get().withHandle(handle -> {
            return handle.createQuery("SELECT s.Ma_SP,s.MA_SM,s.TenSP,s.XuatSu,s.Img,s.SoLuong,s.TrangThai,g.Gia_Ban from san_pham s join gia_sanpham g on s.Ma_SP=g.Ma_SP  where s.Ma_DM in (select Ma_DM from san_pham where Ma_SP='"+id+"')").mapToBean(Product.class).collect(Collectors.toList());
        });
    }


    //loc sna pham A-Z
    public static List<Product> getProductAtoZ(){
        return JDBiConnector.get().withHandle(handle -> {
            return handle.createQuery("select s.Ma_SP,s.MA_SM,s.TenSP,s.XuatSu,s.Img,s.SoLuong,s.TrangThai,g.Gia_Ban  from san_pham s join gia_sanpham g on s.Ma_SP=g.Ma_SP order by s.Ma_SP,s.MA_SM,s.TenSP,s.XuatSu,s.Img,s.SoLuong,s.TrangThai,g.Gia_Ban asc ").mapToBean(Product.class)
                    .stream().collect(Collectors.toList());
        });
    }
    //loc san pham tu Z-A
    public static List<Product> getProductZtoA(){
        return JDBiConnector.get().withHandle(handle -> {
            return handle.createQuery("select s.Ma_SP,s.MA_SM,s.TenSP,s.XuatSu,s.Img,s.SoLuong,s.TrangThai,g.Gia_Ban  from san_pham s join gia_sanpham g on s.Ma_SP=g.Ma_SP order by s.Ma_SP,s.MA_SM,s.TenSP,s.XuatSu,s.Img,s.SoLuong,s.TrangThai,g.Gia_Ban desc ").mapToBean(Product.class)
                    .stream().collect(Collectors.toList());
        });
    }

    //loc theo gia tang dan
    public static List<Product> getProductMintoMax(){
        return JDBiConnector.get().withHandle(handle -> {
            return handle.createQuery("select s.Ma_SP,s.MA_SM,s.TenSP,s.XuatSu,s.Img,s.SoLuong,s.TrangThai,g.Gia_Ban  from san_pham s join gia_sanpham g on s.Ma_SP=g.Ma_SP order by g.Gia_Ban, s.Ma_SP,s.MA_SM,s.TenSP,s.XuatSu,s.Img,s.SoLuong,s.TrangThai asc ").mapToBean(Product.class)
                    .stream().collect(Collectors.toList());
        });
    }

    //loc theo gia giam dan
    public static List<Product> getProductMaxtoMin(){
        return JDBiConnector.get().withHandle(handle -> {
            return handle.createQuery("select s.Ma_SP,s.MA_SM,s.TenSP,s.XuatSu,s.Img,s.SoLuong,s.TrangThai,g.Gia_Ban  from san_pham s join gia_sanpham g on s.Ma_SP=g.Ma_SP order by g.Gia_Ban, s.Ma_SP,s.MA_SM,s.TenSP,s.XuatSu,s.Img,s.SoLuong,s.TrangThai desc ").mapToBean(Product.class)
                    .stream().collect(Collectors.toList());
        });
    }

    //loc thoe trang thai
   /*
   kind = 1 --> san pham moi
   kind = 2 --> noi bat
   kind = 3 --> hien thi
   kind = 4 --> ket hop 1,2
   kind = 5 --> ket hop 1,3
   kind = 6 --> ket hop 2,3
   kind = 7 --> ket hop 1,2,3
    */
    public static List<Product> getProductTrangThai(int kind){
        switch (kind) {
            case 1:
                return JDBiConnector.get().withHandle(handle -> {
                    return handle.createQuery("select s.Ma_SP,s.MA_SM,s.TenSP,s.XuatSu,s.Img,s.SoLuong,s.TrangThai,g.Gia_Ban  from san_pham s join gia_sanpham g on s.Ma_SP=g.Ma_SP where s.TrangThai=1").mapToBean(Product.class).collect(Collectors.toList());
                });
            case 2:
                return JDBiConnector.get().withHandle(handle -> {
                    return handle.createQuery("select s.Ma_SP,s.MA_SM,s.TenSP,s.XuatSu,s.Img,s.SoLuong,s.TrangThai,g.Gia_Ban  from san_pham s join gia_sanpham g on s.Ma_SP=g.Ma_SP where s.TrangThai=2").mapToBean(Product.class).collect(Collectors.toList());
                });
            case 3:
                return JDBiConnector.get().withHandle(handle -> {
                    return handle.createQuery("select s.Ma_SP,s.MA_SM,s.TenSP,s.XuatSu,s.Img,s.SoLuong,s.TrangThai,g.Gia_Ban  from san_pham s join gia_sanpham g on s.Ma_SP=g.Ma_SP where s.TrangThai=3").mapToBean(Product.class).collect(Collectors.toList());
                });
            case 4:
                return JDBiConnector.get().withHandle(handle -> {
                    return handle.createQuery("select s.Ma_SP,s.MA_SM,s.TenSP,s.XuatSu,s.Img,s.SoLuong,s.TrangThai,g.Gia_Ban  from san_pham s join gia_sanpham g on s.Ma_SP=g.Ma_SP where s.TrangThai=4").mapToBean(Product.class).collect(Collectors.toList());
                });
            case 5:
                return JDBiConnector.get().withHandle(handle -> {
                    return handle.createQuery("select s.Ma_SP,s.MA_SM,s.TenSP,s.XuatSu,s.Img,s.SoLuong,s.TrangThai,g.Gia_Ban  from san_pham s join gia_sanpham g on s.Ma_SP=g.Ma_SP where s.TrangThai=5").mapToBean(Product.class).collect(Collectors.toList());
                });
            case 6:
                return JDBiConnector.get().withHandle(handle -> {
                    return handle.createQuery("select s.Ma_SP,s.MA_SM,s.TenSP,s.XuatSu,s.Img,s.SoLuong,s.TrangThai,g.Gia_Ban  from san_pham s join gia_sanpham g on s.Ma_SP=g.Ma_SP where s.TrangThai=6").mapToBean(Product.class).collect(Collectors.toList());
                });
            case 7:
                return JDBiConnector.get().withHandle(handle -> {
                    return handle.createQuery("select s.Ma_SP,s.MA_SM,s.TenSP,s.XuatSu,s.Img,s.SoLuong,s.TrangThai,g.Gia_Ban  from san_pham s join gia_sanpham g on s.Ma_SP=g.Ma_SP where s.TrangThai=7").mapToBean(Product.class).collect(Collectors.toList());
                });
        }
        return JDBiConnector.get().withHandle(handle -> {
            return handle.createQuery("select s.Ma_SP,s.MA_SM,s.TenSP,s.XuatSu,s.Img,s.SoLuong,s.TrangThai,g.Gia_Ban  from san_pham s join gia_sanpham g on s.Ma_SP=g.Ma_SP").mapToBean(Product.class).collect(Collectors.toList());
        });
    }


    //them san pham
    public static void addProd(String maSP, String DM, String name, int price,double giaBan, String xuatxu,int tinhtrang,int trangthai,int soluong, String url){
        new PriceService().addPricePro(maSP,price,giaBan);
        JDBiConnector.get().withHandle(handle -> {
            return handle.createUpdate("INSERT INTO `san_pham` VALUES ('"+maSP+"','"+DM+"','"+name+"','"+ xuatxu+ "','"+url+"',"+ LocalDate.now()+","+tinhtrang+","+soluong+","+trangthai+",0)").execute();
        });
    }

    //xoa san pham
    public static void deleteProduct(String id){
        JDBiConnector.get().withHandle(handle -> {
            return handle.createUpdate("delete from san_pham where Ma_SP='"+id+"'").execute();
        });
        new PriceService().deletePricePro(id);
    }


    //cap nhat san pham
    public  static  void  updatePro(String id,double price,int tinhtrang, int soluong, int trangthai){
        JDBiConnector.get().withHandle(handle -> {
            return handle.createUpdate("update san_pham set TinhTrang="+tinhtrang+", SoLuong="+soluong+",TrangThai="+trangthai+" where Ma_SP='"+"'").execute();
        });
        new PriceService().updatePricePro(id,price);
    }


    //lay sang pham tu gio hang
    public static Integer getProductCart(String maKH){
        return JDBiConnector.get().withHandle(handle -> {
            return handle.createUpdate("select s.Ma_SP,s.MA_SM,s.TenSP,s.XuatSu,s.Img,s.SoLuong,s.TrangThai,g.Gia_Ban from san_pham s join gio_hang g on s.Ma_SP=g.Ma_SP where g.Ma_KH='"+maKH+"'").execute();
        });
    }

    public static List<Cart> getCarts(String maKH) {
        return JDBiConnector.get().withHandle(handle ->
                handle.createQuery("select Ma_KH, Ma_SP, So_Luong FROM gio_hang WHERE Ma_KH = ?")
                        .bind(0,maKH)
                        .mapToBean(Cart.class)
                .collect(Collectors.toList()));
    }

    public static void putCart(List<Cart> carts) {
        for (Cart cart : carts) {
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

    public static void main(String[] args) {
//        String sql="INSERT INTO products VALUES";
//        List<Product> data = getData();
//        for (Product p :  data) {
//            sql+="("+p.getId()+",'"+p.getName()+"','"+p.getImg()+"',"+p.getPrice()+"),";
//        }
//        System.out.println(sql);
//        Cart cart = new Cart("KH01", "SP01", 1);
//        List<Cart> carts = new ArrayList<>();
//        carts.add(cart);
//        putCart(carts);
    }


}
