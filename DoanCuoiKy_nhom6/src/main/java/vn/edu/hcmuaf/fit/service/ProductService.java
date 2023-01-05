package vn.edu.hcmuaf.fit.service;

import vn.edu.hcmuaf.fit.db.JDBIConnector;
import vn.edu.hcmuaf.fit.model.Product;

import java.time.LocalDate;
import java.util.List;
import java.util.stream.Collectors;

public class ProductService {


    public static List<Product> getData(){
       return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("select s.Ma_SP,s.MA_SM,s.TenSP,s.XuatSu,s.Img,s.SoLuong,s.TrangThai,g.Gia_Ban  from san_pham s join gia_sanpham g on s.Ma_SP=g.Ma_SP").mapToBean(Product.class)
                    .stream().collect(Collectors.toList());
        });
    }

    //lay san pham theo id
    public static List<Product> getProductID(String Id){
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("select s.Ma_SP,s.MA_SM,s.TenSP,s.XuatSu,s.Img,s.SoLuong,s.TrangThai,g.Gia_Ban  from san_pham s join gia_sanpham g on s.Ma_SP=g.Ma_SP where s.Ma_SP='"+Id+"'").mapToBean(Product.class)
                    .stream().collect(Collectors.toList());
        });
    }

    //lay san pham theo danh muc
    public static List<Product> getProductCategory(String IdDM){
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("select s.Ma_SP,s.MA_SM,s.TenSP,s.XuatSu,s.Img,s.SoLuong,s.TrangThai,g.Gia_Ban  from san_pham s join gia_sanpham g on s.Ma_SP=g.Ma_SP where s.Ma_DM='"+IdDM+"'").mapToBean(Product.class)
                    .stream().collect(Collectors.toList());
        });
    }

    //lay san pham theo gia
    public static List<Product> getProductPrice(double price){
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("select s.Ma_SP,s.MA_SM,s.TenSP,s.XuatSu,s.Img,s.SoLuong,s.TrangThai,g.Gia_Ban  from san_pham s join gia_sanpham g on s.Ma_SP=g.Ma_SP where g.Gia_Ban="+price+"").mapToBean(Product.class)
                    .stream().collect(Collectors.toList());
        });
    }

    //loc san pham thoe khoan gia
    public static List<Product> getProductBetwenPrice(double min, double max){
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("select s.Ma_SP,s.MA_SM,s.TenSP,s.XuatSu,s.Img,s.SoLuong,s.TrangThai,g.Gia_Ban  from san_pham s join gia_sanpham g on s.Ma_SP=g.Ma_SP where g.Gia_Ban between "+min+" and "+max).mapToBean(Product.class)
                    .stream().collect(Collectors.toList());
        });
    }


    //lay san pham lien tuong tu
    public List<Product> getRelatedProducts(String id) {
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("SELECT s.Ma_SP,s.MA_SM,s.TenSP,s.XuatSu,s.Img,s.SoLuong,s.TrangThai,g.Gia_Ban from san_pham s join gia_sanpham g on s.Ma_SP=g.Ma_SP  where s.Ma_DM in (select Ma_DM from san_pham where Ma_SP='"+id+"')").mapToBean(Product.class).collect(Collectors.toList());
        });
    }


    //loc sna pham A-Z
    public static List<Product> getProductAtoZ(){
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("select s.Ma_SP,s.MA_SM,s.TenSP,s.XuatSu,s.Img,s.SoLuong,s.TrangThai,g.Gia_Ban  from san_pham s join gia_sanpham g on s.Ma_SP=g.Ma_SP order by s.Ma_SP,s.MA_SM,s.TenSP,s.XuatSu,s.Img,s.SoLuong,s.TrangThai,g.Gia_Ban asc ").mapToBean(Product.class)
                    .stream().collect(Collectors.toList());
        });
    }

    //loc san pham tu Z-A
    public static List<Product> getProductZtoA(){
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("select s.Ma_SP,s.MA_SM,s.TenSP,s.XuatSu,s.Img,s.SoLuong,s.TrangThai,g.Gia_Ban  from san_pham s join gia_sanpham g on s.Ma_SP=g.Ma_SP order by s.Ma_SP,s.MA_SM,s.TenSP,s.XuatSu,s.Img,s.SoLuong,s.TrangThai,g.Gia_Ban desc ").mapToBean(Product.class)
                    .stream().collect(Collectors.toList());
        });
    }

    //loc theo gia tang dan
    public static List<Product> getProductMintoMax(){
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("select s.Ma_SP,s.MA_SM,s.TenSP,s.XuatSu,s.Img,s.SoLuong,s.TrangThai,g.Gia_Ban  from san_pham s join gia_sanpham g on s.Ma_SP=g.Ma_SP order by g.Gia_Ban, s.Ma_SP,s.MA_SM,s.TenSP,s.XuatSu,s.Img,s.SoLuong,s.TrangThai asc ").mapToBean(Product.class)
                    .stream().collect(Collectors.toList());
        });
    }

    //loc theo gia giam dan
    public static List<Product> getProductMaxtoMin(){
        return JDBIConnector.get().withHandle(handle -> {
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
                return JDBIConnector.get().withHandle(handle -> {
                    return handle.createQuery("select s.Ma_SP,s.MA_SM,s.TenSP,s.XuatSu,s.Img,s.SoLuong,s.TrangThai,g.Gia_Ban  from san_pham s join gia_sanpham g on s.Ma_SP=g.Ma_SP where s.TrangThai=1").mapToBean(Product.class).collect(Collectors.toList());
                });
            case 2:
                return JDBIConnector.get().withHandle(handle -> {
                    return handle.createQuery("select s.Ma_SP,s.MA_SM,s.TenSP,s.XuatSu,s.Img,s.SoLuong,s.TrangThai,g.Gia_Ban  from san_pham s join gia_sanpham g on s.Ma_SP=g.Ma_SP where s.TrangThai=2").mapToBean(Product.class).collect(Collectors.toList());
                });
            case 3:
                return JDBIConnector.get().withHandle(handle -> {
                    return handle.createQuery("select s.Ma_SP,s.MA_SM,s.TenSP,s.XuatSu,s.Img,s.SoLuong,s.TrangThai,g.Gia_Ban  from san_pham s join gia_sanpham g on s.Ma_SP=g.Ma_SP where s.TrangThai=3").mapToBean(Product.class).collect(Collectors.toList());
                });
            case 4:
                return JDBIConnector.get().withHandle(handle -> {
                    return handle.createQuery("select s.Ma_SP,s.MA_SM,s.TenSP,s.XuatSu,s.Img,s.SoLuong,s.TrangThai,g.Gia_Ban  from san_pham s join gia_sanpham g on s.Ma_SP=g.Ma_SP where s.TrangThai=4").mapToBean(Product.class).collect(Collectors.toList());
                });
            case 5:
                return JDBIConnector.get().withHandle(handle -> {
                    return handle.createQuery("select s.Ma_SP,s.MA_SM,s.TenSP,s.XuatSu,s.Img,s.SoLuong,s.TrangThai,g.Gia_Ban  from san_pham s join gia_sanpham g on s.Ma_SP=g.Ma_SP where s.TrangThai=5").mapToBean(Product.class).collect(Collectors.toList());
                });
            case 6:
                return JDBIConnector.get().withHandle(handle -> {
                    return handle.createQuery("select s.Ma_SP,s.MA_SM,s.TenSP,s.XuatSu,s.Img,s.SoLuong,s.TrangThai,g.Gia_Ban  from san_pham s join gia_sanpham g on s.Ma_SP=g.Ma_SP where s.TrangThai=6").mapToBean(Product.class).collect(Collectors.toList());
                });
            case 7:
                return JDBIConnector.get().withHandle(handle -> {
                    return handle.createQuery("select s.Ma_SP,s.MA_SM,s.TenSP,s.XuatSu,s.Img,s.SoLuong,s.TrangThai,g.Gia_Ban  from san_pham s join gia_sanpham g on s.Ma_SP=g.Ma_SP where s.TrangThai=7").mapToBean(Product.class).collect(Collectors.toList());
                });
        }
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("select s.Ma_SP,s.MA_SM,s.TenSP,s.XuatSu,s.Img,s.SoLuong,s.TrangThai,g.Gia_Ban  from san_pham s join gia_sanpham g on s.Ma_SP=g.Ma_SP").mapToBean(Product.class).collect(Collectors.toList());
        });
    }


    //them san pham
    public static void addProd(String maSP, String DM, String name, int price,double giaBan, String xuatxu,int tinhtrang,int trangthai,int soluong, String url){
        new PriceService().addPricePro(maSP,price,giaBan);
        JDBIConnector.get().withHandle(handle -> {
            return handle.createUpdate("INSERT INTO `san_pham` VALUES ('"+maSP+"','"+DM+"','"+name+"','"+ xuatxu+ "','"+url+"',"+ LocalDate.now()+","+tinhtrang+","+soluong+","+trangthai+",0)").execute();
        });
    }

    //xoa san pham
    public static void deleteProduct(String id){
        JDBIConnector.get().withHandle(handle -> {
            return handle.createUpdate("delete from san_pham where Ma_SP='"+id+"'").execute();
        });
        new PriceService().deletePricePro(id);
    }


    //cap nhat san pham
    public  static  void  updatePro(String id,double price,int tinhtrang, int soluong, int trangthai){
        JDBIConnector.get().withHandle(handle -> {
            return handle.createUpdate("update san_pham set TinhTrang="+tinhtrang+", SoLuong="+soluong+",TrangThai="+trangthai+" where Ma_SP='"+"'").execute();
        });
        new PriceService().updatePricePro(id,price);
    }
    public static void main(String[] args) {
        String sql="INSERT INTO products VALUES";
        List<Product> data = getData();
        for (Product p :  data) {
            sql+="("+p.getId()+",'"+p.getName()+"','"+p.getImg()+"',"+p.getPrice()+"),";
        }
        System.out.println(sql);
    }
}
