package vn.edu.hcmuaf.fit.service;

import vn.edu.hcmuaf.fit.db.JDBiConnector;
import vn.edu.hcmuaf.fit.model.Cart;

import java.util.ArrayList;
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
    public List<Cart> getProdFormCart(String idUser, String idProd) {
        return JDBiConnector.get().withHandle(handle -> {
            return handle.createQuery("select c.Ma_KH,c.MA_SP,c.SoLuong,p.Img,r.Gia_Ban,c.SoLuong*r.Gia_Ban from gio_hang c join san_pham p join gia_sanpham r on p.Ma_SP=r.Ma_SP on c.Ma_SP=p.Ma_SP  where  c.Ma_KH= '"+idUser+"' and c.Ma_SP = '" + idProd + "'").mapToBean(Cart.class).list();
        });
    }

    //lay danh sach san pham gio hang theo ma khanh hang
    public List<Cart> getProdFormCartIdUser(String idUser) {
        return JDBiConnector.get().withHandle(handle -> {
            return handle.createQuery("select c.Ma_KH,c.MA_SP,c.SoLuong,p.Img,r.Gia_Ban,c.SoLuong*r.Gia_Ban from gio_hang c join san_pham p join gia_sanpham r on p.Ma_SP=r.Ma_SP on c.Ma_SP=p.Ma_SP  where  c.Ma_KH= '"+idUser+"'").mapToBean(Cart.class).list();
        });
    }
}
