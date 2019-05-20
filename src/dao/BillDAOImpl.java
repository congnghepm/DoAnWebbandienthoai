package dao;

import connect.DBConnect;
import model.DonHang;
import model.KhachHang;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class BillDAOImpl implements BillDAO {


    @Override
    public void insertKH(KhachHang kh) {
        try {
            Connection conn = DBConnect.getConnect();
            String sql ="insert into khachhang(TenKH, SoDienThoai, DiaChi, Email) values (?,?,?,?)";
            PreparedStatement st  = conn.prepareStatement(sql);
            st.setString(1, kh.getTenKH());
            st.setString(2, kh.getDienThoai());
            st.setString(3, kh.getDiaChi());
            st.setString(4, kh.getEmail());

            st.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        }

    }

    @Override
    public void insertBill(DonHang donHang) {

        try {
            Connection conn = DBConnect.getConnect();
            String sql = "insert into donhang(TongTien, MaKH) values(?,?)";
            PreparedStatement st = conn.prepareStatement(sql);
            st.setDouble(1, donHang.getTongTien());
            st.setInt(2, donHang.getMaKH());

            st.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }

    }

    @Override
    public KhachHang getKH(String tenKH, String sdt, String diaChi, String email) {

        KhachHang kh = new KhachHang();
        try {
            Connection conn = DBConnect.getConnect();
            String sql = "select * from khachhang where TenKH = '"+tenKH+"' and SoDienThoai='"+sdt+"' and  DiaChi = '"+diaChi+"' and Email='"+email+"'";
            PreparedStatement st = conn.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next())
            {
                kh.setMaKH(rs.getInt("MaKH"));
                kh.setTenKH(rs.getString("TenKH"));
                kh.setDienThoai(rs.getString("SoDienThoai"));
                kh.setDiaChi(rs.getString("DiaChi"));
                kh.setEmail(rs.getString("Email"));
            }


        } catch (SQLException e) {
            e.printStackTrace();
        }

        return kh;
    }

    @Override
    public DonHang getDH(double tongTien, int maKH) {

        DonHang dh = new DonHang();

        try {
            Connection conn = DBConnect.getConnect();
            String sql = "select * from donhang where TongTien = '"+tongTien+"' and MaKH = '"+maKH+"'";
            PreparedStatement st = conn.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next())
            {
                dh.setMaDH(rs.getInt("MaDH"));
                dh.setMaKH(rs.getInt("MaKH"));
                dh.setTongTien(rs.getDouble("TongTien"));
                dh.setMaKH(rs.getInt("MaKH"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return dh;
    }

    @Override
    public boolean kiemTraKH(String hoTen, String sdt, String diaChi, String email) {



        try {
            Connection conn = DBConnect.getConnect();
            String sql = "select count(*) from khachhang where TenKH = '"+hoTen+"' and SoDienThoai = '"+sdt+"' and DiaChi = '"+diaChi+"' and Email = '"+email+"'";
            PreparedStatement st = conn.prepareStatement(sql);
            ResultSet rs =st.executeQuery();
            while (rs.next())
            {
               if(rs.getInt(1)==1)
               {
                   return true;
               }
            }


        } catch (SQLException e) {
            e.printStackTrace();
        }

        return false;
    }

    @Override
    public void updateSoLuongSPTon(int maSP, int quantity) {

        try {
            Connection conn = DBConnect.getConnect();
            String sql = "update sanpham set SoLuongTon = SoLuongTon - '"+quantity+"' where MaSP = '"+maSP+"'";
            PreparedStatement st = conn.prepareStatement(sql);
            st.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        }

    }

    @Override
    public boolean kiemTraEmail(String email) {
        String ePattern = "^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@((\\[[0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3}\\])|(([a-zA-Z\\-0-9]+\\.)+[a-zA-Z]{2,}))$";
        java.util.regex.Pattern p = java.util.regex.Pattern.compile(ePattern);
        java.util.regex.Matcher m = p.matcher(email);
        System.out.println("email " + m.matches());
        return m.matches();
    }

    @Override
    public boolean kiemTraSDT(String dienthoai) {
        String ePattern = "^[0-9]{10,}$";
        // Táº¡o Ä‘á»‘i tÆ°á»£ng Pattern thÃ´ng qua method tÄ©nh.
        java.util.regex.Pattern p = java.util.regex.Pattern.compile(ePattern);
        // Láº¥y ra Ä‘á»‘i tÆ°á»£ng Matcher. So sÃ¡nh vá»›i chuá»—i dá»¯ liá»‡u Ä‘áº§u vÃ o
        java.util.regex.Matcher m = p.matcher(dienthoai);
        System.out.println("kiemTraSDTPH " + m.matches());
        return m.matches();
    }

    @Override
    public boolean kiemTraSDTUnique(String sdt) {

        Connection conn = null;
        try {
            conn = DBConnect.getConnect();
            String sql= "select count(khachhang.SoDienThoai) from khachhang where khachhang.SoDienThoai = '"+ sdt +"'";

                PreparedStatement ps = conn.prepareStatement(sql);
                ResultSet rs = ps.executeQuery();
                while (rs.next())
                {
                    System.out.println("sdtkh "+ sdt);
                    System.out.println("sdtkh "+ rs.getInt(1));
                    if(rs.getInt(1)>=1){
                        return true;
                    }
                }
                conn.close();

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }
}
