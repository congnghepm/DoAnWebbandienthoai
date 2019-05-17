package dao;

import model.DonHang;

public interface BillDAO {

    //them hoa don
    public void insertBill(DonHang donHang);

    //kiem tra email hop le
    public boolean kiemTraEmail(String email);

    //kiem tra dinh dang so dien thoai
    public boolean kiemTraSDT(String dienthoai);
}
