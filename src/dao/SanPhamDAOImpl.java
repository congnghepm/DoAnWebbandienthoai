package dao;

import model.HinhAnh_SP;
import model.KhuyenMai;
import model.SanPham;
import model.ThongSoKyThuat;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import  connect.DBConnect;

public class SanPhamDAOImpl implements SanPhamDAO {

    public static ArrayList<SanPham> dsSP = new ArrayList<>();

    public SanPhamDAOImpl()
    {
        dsSP.removeAll(dsSP);

    }

    @Override
    public ArrayList<SanPham> getListSanPham() {

        try {

            Connection conn = DBConnect.getConnect();
            String sql = "select * from sanpham";
            PreparedStatement st = conn.prepareStatement(sql);
            ResultSet rs = st.executeQuery();

            while (rs.next())
            {
                SanPham sp = new SanPham();
                //HinhAnh_SP ha_sp = new HinhAnh_SP();
                sp.setMaSP(rs.getInt("MaSP"));
                sp.setTenSP(rs.getString("TenSP"));
                sp.setHangSX(rs.getString("HangSX"));
                sp.setGiaBan(rs.getDouble("GiaBan"));
                sp.setSoLuongNhap(rs.getInt("SoLuongNhap"));
                sp.setGiaNhap(rs.getDouble("GiaNhap"));
                sp.setSoLuongTon(rs.getInt("SoLuongTon"));
                sp.setMaThongSo(rs.getInt("MaThongSo"));
                sp.setMaKM(rs.getInt("MaKM"));
                // ha_sp.setFileHA(rs.getBytes("FileHA"));
                dsSP.add(sp);

            }

            conn.close();
            st.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return dsSP;
    }

    @Override
    public ArrayList<SanPham> getListSanPhamKMHot() {
        ArrayList<SanPham> dsSPKMHot = new ArrayList<>();

        try {

            Connection conn = DBConnect.getConnect();
            String sql = "select * from sanpham join khuyenmai on sanpham.MaKM = khuyenmai.MaKM order by khuyenmai.GiaTri desc";
            PreparedStatement st = conn.prepareStatement(sql);
            ResultSet rs = st.executeQuery();

            while (rs.next())
            {
                SanPham sp = new SanPham();
                //HinhAnh_SP ha_sp = new HinhAnh_SP();
                sp.setMaSP(rs.getInt("MaSP"));
                sp.setTenSP(rs.getString("TenSP"));
                sp.setHangSX(rs.getString("HangSX"));
                sp.setGiaBan(rs.getDouble("GiaBan"));
                sp.setSoLuongNhap(rs.getInt("SoLuongNhap"));
                sp.setGiaNhap(rs.getDouble("GiaNhap"));
                sp.setSoLuongTon(rs.getInt("SoLuongTon"));
                sp.setMaThongSo(rs.getInt("MaThongSo"));
                sp.setMaKM(rs.getInt("MaKM"));
                dsSPKMHot.add(sp);

            }

            conn.close();
            st.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return dsSPKMHot;
    }


    @Override
    public ArrayList<KhuyenMai> getListKM() {
        ArrayList<KhuyenMai> dsKM = new ArrayList<>();

        try {
            Connection conn = DBConnect.getConnect();
            String sql = "select * from khuyenmai";
            PreparedStatement st = conn.prepareStatement(sql);
            ResultSet rs = st.executeQuery();

            while (rs.next())
            {
                KhuyenMai km = new KhuyenMai();
                km.setMaKM(rs.getInt("MaKM"));
                km.setTenKM(rs.getString("TenKM"));
                km.setGiaTri(rs.getDouble("GiaTri"));
                dsKM.add(km);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return dsKM;
    }

    @Override
    public KhuyenMai getKhuyenMai(int maSP) {

        KhuyenMai km =  new KhuyenMai();
        try {
            Connection conn = DBConnect.getConnect();
            String sql = "select GiaTri from sanpham join khuyenmai on sanpham.MaKM = khuyenmai.MaKM and sanpham.MaSP = '"+maSP+"'";
            PreparedStatement st = conn.prepareStatement(sql);
            ResultSet rs = st.executeQuery();

            while (rs.next())
            {
                km.setGiaTri(rs.getDouble("GiaTri"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return km;
    }

    @Override
    public ArrayList<SanPham> getListSanPhamBanChay() {
        ArrayList<SanPham> dsSPBanChay = new ArrayList<>();

        try {
            Connection conn = DBConnect.getConnect();
            String sql = "select * from sanpham\n" +
                    "order by (sanpham.SoLuongNhap - sanpham.SoLuongTon) desc";
            PreparedStatement st = conn.prepareStatement(sql);
            ResultSet rs = st.executeQuery();

            while (rs.next())
            {
                SanPham spbc = new SanPham();
                spbc.setMaSP(rs.getInt("MaSP"));
                spbc.setTenSP(rs.getString("TenSP"));
                spbc.setHangSX(rs.getString("HangSX"));
                spbc.setGiaBan(rs.getDouble("GiaBan"));
                spbc.setSoLuongNhap(rs.getInt("SoLuongNhap"));
                spbc.setGiaNhap(rs.getDouble("GiaNhap"));
                spbc.setSoLuongTon(rs.getInt("SoLuongTon"));
                spbc.setMaThongSo(rs.getInt("MaThongSo"));
                spbc.setMaKM(rs.getInt("MaKM"));
                dsSPBanChay.add(spbc);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return dsSPBanChay;
    }

    @Override
    public SanPham getSP(int maSP) {

        SanPham sp = new SanPham();
        try {
            Connection conn = DBConnect.getConnect();
            String sql = "select * from sanpham where MaSP = '"+maSP+"'";
            PreparedStatement st = conn.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next())
            {
                sp.setMaSP(rs.getInt("MaSP"));
                sp.setTenSP(rs.getString("TenSP"));
                sp.setHangSX(rs.getString("HangSX"));
                sp.setGiaBan(rs.getDouble("GiaBan"));
                sp.setSoLuongNhap(rs.getInt("SoLuongNhap"));
                sp.setGiaNhap(rs.getDouble("GiaNhap"));
                sp.setSoLuongTon(rs.getInt("SoLuongTon"));
                sp.setMaThongSo(rs.getInt("MaThongSo"));
                sp.setMaKM(rs.getInt("MaKM"));

            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return sp;
    }

    @Override
    public ThongSoKyThuat getThongSoKyThuat(int maSP) {

        ThongSoKyThuat tskt = new ThongSoKyThuat();

        try {
            Connection conn = DBConnect.getConnect();
            String sql ="select * from thongsokythuat join sanpham on sanpham.MaThongSo = thongsokythuat.MaThongSo and MaSP = '"+maSP+"'";
            PreparedStatement st = conn.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next())
            {
                tskt.setMaThongSo(rs.getInt("MaThongSo"));
                tskt.setManHinh(rs.getString("ManHinh"));
                tskt.setRAM(rs.getInt("RAM"));
                tskt.setBoNhoTrong(rs.getInt("BoNhoTrong"));
                tskt.setCameraTruoc(rs.getString("CameraTruoc"));
                tskt.setCameraSau(rs.getString("CameraSau"));
                tskt.setDungLuongPin(rs.getInt("DungLuongPin"));
                tskt.setCPU(rs.getString("CPU"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return tskt;
    }

    @Override
    public ArrayList<SanPham> getListSPTheoHangSX(String hangSX) {
        ArrayList<SanPham> dsSPTheoHangSX = new ArrayList<>();

        try {

            Connection conn = DBConnect.getConnect();
            String sql = "select * from sanpham where sanpham.HangSX ='"+hangSX+"'";
            PreparedStatement st = conn.prepareStatement(sql);
            ResultSet rs = st.executeQuery();

            while (rs.next())
            {
                SanPham sp = new SanPham();
                sp.setMaSP(rs.getInt("MaSP"));
                sp.setTenSP(rs.getString("TenSP"));
                sp.setHangSX(rs.getString("HangSX"));
                sp.setGiaBan(rs.getDouble("GiaBan"));
                sp.setSoLuongNhap(rs.getInt("SoLuongNhap"));
                sp.setGiaNhap(rs.getDouble("GiaNhap"));
                sp.setSoLuongTon(rs.getInt("SoLuongTon"));
                sp.setMaThongSo(rs.getInt("MaThongSo"));
                sp.setMaKM(rs.getInt("MaKM"));
                dsSPTheoHangSX.add(sp);

            }

            conn.close();
            st.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }


        return dsSPTheoHangSX;
    }

    @Override
    public ArrayList<SanPham> getListSPTimKiem(String tenSP) {

        ArrayList<SanPham> dsSPTimKiem = new ArrayList<>();

        try {
            Connection conn = DBConnect.getConnect();
            if(tenSP!="")
            {
                String sql = "select * from sanpham where sanpham.TenSP like '%"+tenSP+"%'";
                PreparedStatement st = conn.prepareStatement(sql);
                ResultSet rs = st.executeQuery();

                while (rs.next())
                {
                    SanPham sptk = new SanPham();
                    sptk.setMaSP(rs.getInt("MaSP"));
                    sptk.setTenSP(rs.getString("TenSP"));
                    sptk.setHangSX(rs.getString("HangSX"));
                    sptk.setGiaBan(rs.getDouble("GiaBan"));
                    sptk.setSoLuongNhap(rs.getInt("SoLuongNhap"));
                    sptk.setGiaNhap(rs.getDouble("GiaNhap"));
                    sptk.setSoLuongTon(rs.getInt("SoLuongTon"));
                    sptk.setMaThongSo(rs.getInt("MaThongSo"));
                    sptk.setMaKM(rs.getInt("MaKM"));
                    dsSPTimKiem.add(sptk);

                }
            }
            else {
                System.out.println("Chua nhap thong tin");
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return dsSPTimKiem;
    }

    @Override
    public ArrayList<SanPham> getListSPTheoGiaBan(double min, double max, String hangSX) {

        ArrayList<SanPham> dsSPTheoGiaBan= new ArrayList<>();

        try {
            Connection conn = DBConnect.getConnect();
            String sql = "select * from sanpham where sanpham.GiaBan >= '"+min+"' and sanpham.GiaBan < '"+max+"' and sanpham.HangSX = '"+hangSX+"'";
            PreparedStatement st = conn.prepareStatement(sql);
            ResultSet rs = st.executeQuery();

            while (rs.next())
            {
                SanPham sptk = new SanPham();
                sptk.setMaSP(rs.getInt("MaSP"));
                sptk.setTenSP(rs.getString("TenSP"));
                sptk.setHangSX(rs.getString("HangSX"));
                sptk.setGiaBan(rs.getDouble("GiaBan"));
                sptk.setSoLuongNhap(rs.getInt("SoLuongNhap"));
                sptk.setGiaNhap(rs.getDouble("GiaNhap"));
                sptk.setSoLuongTon(rs.getInt("SoLuongTon"));
                sptk.setMaThongSo(rs.getInt("MaThongSo"));
                sptk.setMaKM(rs.getInt("MaKM"));
                dsSPTheoGiaBan.add(sptk);

            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return dsSPTheoGiaBan;
    }
}
