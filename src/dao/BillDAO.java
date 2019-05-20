package dao;

import model.DonHang;
import model.KhachHang;

public interface BillDAO {

    //them khach hang
    public void insertKH(KhachHang kh);


    //them hoa don
    public void insertBill(DonHang donHang);

    //lay khạch hang
    public  KhachHang getKH(String tenKH, String sdt, String diaChi, String email);

    //lay DonHang
    public DonHang getDH (double tongTien, int maKH);

    //kiem tra xem khach hang da ton tai chua?
    public boolean kiemTraKH(String hoTen, String sdt, String diaChi, String email);


    //update so luong san pham ton
    public void updateSoLuongSPTon(int maSP,int quantity);

    //kiem tra email hop le
    public boolean kiemTraEmail(String email);

    //kiem tra dinh dang so dien thoai
    public boolean kiemTraSDT(String dienthoai);

    //kiem tra so dien thoai unique
    public boolean kiemTraSDTUnique(String sdt);
}
