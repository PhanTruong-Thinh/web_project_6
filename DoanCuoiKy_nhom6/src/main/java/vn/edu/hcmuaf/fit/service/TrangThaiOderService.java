package vn.edu.hcmuaf.fit.service;

import vn.edu.hcmuaf.fit.db.JDBiConnector;

public class TrangThaiOderService {
    public TrangThaiOderService() {
    }

    //cap nhat trang thai don hang
    public static void updateTrangThai(String id, String trangthai){
        JDBiConnector.get().withHandle(handle -> {
            return handle.createUpdate("update trangthai_sonhang set TrangThai='"+trangthai+"' where Ma_DDH='"+id+"'").execute();
        });
    }

    //them don hang
    public static void addTrangThai(String id){
        JDBiConnector.get().withHandle(handle -> {
            return handle.createUpdate("insert into trangthai_donhang values ('"+id+"',chua giao)").execute();
        });
    }
}
