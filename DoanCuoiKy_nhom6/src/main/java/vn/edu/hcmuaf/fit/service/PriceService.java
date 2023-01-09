package vn.edu.hcmuaf.fit.service;

import vn.edu.hcmuaf.fit.db.JDBiConnector;
import vn.edu.hcmuaf.fit.model.PriceProduct;
import vn.edu.hcmuaf.fit.model.Product;
import java.time.LocalDate;
import java.util.List;
import java.util.stream.Collectors;

public class PriceService {

    //them san pham
    public static void addPricePro(String maSP, double price, double giaBan){
        JDBiConnector.get().withHandle(handle -> {
            return handle.createQuery("insert  into  gia_sanpham values ('"+maSP+"',"+LocalDate.now()+","+price+","+giaBan+")").mapToBean(Product.class).collect(Collectors.toList());
        });
    }

    //xoa san pham
    public static void deletePricePro(String maSP){
        JDBiConnector.get().withHandle(handle -> {
            return handle.createQuery("delete from gia_sanpham where Ma_SP='"+maSP+"'").mapToBean(Product.class).collect(Collectors.toList());
        });
    }

    //cap nhat gia ban
    public static void updatePricePro(String maSP,double price){
        JDBiConnector.get().withHandle(handle -> {
            return handle.createQuery("update gia_sanpham set Ngay="+LocalDate.now()+",Gia_Ban="+price+" where Ma_SP='"+maSP+"'").mapToBean(Product.class).collect(Collectors.toList());
        });
    }
}
