package vn.edu.hcmuaf.fit.service;

import vn.edu.hcmuaf.fit.db.JDBIConnector;
import vn.edu.hcmuaf.fit.model.PriceProduct;
import vn.edu.hcmuaf.fit.model.Product;
import java.time.LocalDate;
import java.util.List;
import java.util.stream.Collectors;

public class PriceService {


    //lay gia san pham
    public static List<PriceProduct> getPricePro(){
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("select Ma_SP,Ngay,Gia_Thuc,Gia_Ban from gia_sanpham").mapToBean(PriceProduct.class).collect(Collectors.toList());
        });
    }

    //lay gia san pham theo Ma_SP
    public static List<PriceProduct> getPriceProID(String id){
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("select Ma_SP,Ngay,Gia_Thuc,Gia_Ban from gia_sanpham where Ma_SP='"+id+"'").mapToBean(PriceProduct.class).collect(Collectors.toList());
        });
    }

    //lay gia san pham theo ngay
    public static List<PriceProduct> getPriceProDate(String date){
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("select Ma_SP,Ngay,Gia_Thuc,Gia_Ban from gia_sanpham where Ngay='"+date+"'").mapToBean(PriceProduct.class).collect(Collectors.toList());
        });
    }


    //them san pham
    public static void addPricePro(String maSP, double price, double giaBan){
        JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("insert  into  gia_sanpham values ('"+maSP+"',"+LocalDate.now()+","+price+","+giaBan+")").mapToBean(Product.class).collect(Collectors.toList());
        });
    }

    //xoa san pham
    public static void deletePricePro(String maSP){
        JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("delete from gia_sanpham where Ma_SP='"+maSP+"'").mapToBean(Product.class).collect(Collectors.toList());
        });
    }

    //cap nhat gia ban
    public static void updatePricePro(String maSP,double price){
        JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("update gia_sanpham set Ngay="+LocalDate.now()+",Gia_Ban="+price+" where Ma_SP='"+maSP+"'").mapToBean(Product.class).collect(Collectors.toList());
        });
    }
}
