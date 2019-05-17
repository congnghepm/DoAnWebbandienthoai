package dao;

import model.HinhAnh_SP;
import model.KhuyenMai;
import model.SanPham;
import model.ThongSoKyThuat;

import java.util.ArrayList;
import java.util.List;

public interface SanPhamDAO {

    //lay danh sach san pham
    public ArrayList<SanPham> getListSanPham();

    //lay danh sach san pham khuyen mai hot
    public ArrayList<SanPham> getListSanPhamKMHot();

    //lay danh sach khuyen mai
    public  ArrayList<KhuyenMai> getListKM();

    //lay khuyen mai theo ma san pham
    public KhuyenMai getKhuyenMai(int maSP);

    //lay danh sach san pham ban chay
    public  ArrayList<SanPham> getListSanPhamBanChay();

    //lay san pham theo ma san pham
    public  SanPham getSP(int maSP);

    //lay thong so cua san pham theo ma san pham
    public ThongSoKyThuat getThongSoKyThuat(int maSP);

    //lay danh sach san pham theo hang san xuat
    public ArrayList<SanPham> getListSPTheoHangSX(String hangSX);

    //tim kiem san pham
    public ArrayList<SanPham> getListSPTimKiem (String tenSP);

    //tim san pham theo gia ban
    public ArrayList<SanPham> getListSPTheoGiaBan (double min, double max, String hangSX);





}
