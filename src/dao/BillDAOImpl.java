package dao;

import connect.DBConnect;
import model.DonHang;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class BillDAOImpl implements BillDAO {


    @Override
    public void insertBill(DonHang donHang) {

        try {
            Connection conn = DBConnect.getConnect();
            String sql = "insert into donhang(ThoiGian, TongTien, maKH) values(?,?,?)";
            PreparedStatement st = conn.prepareStatement(sql);
            st.setDate(1, donHang.getThoiGian());
            st.setDouble(2, donHang.getTongTien());;
            st.setInt(3, donHang.getMaKH());

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
}
