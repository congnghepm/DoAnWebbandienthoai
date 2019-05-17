package dao;

import connect.DBConnect;
import model.ChiTietDonHang;
import model.DonHang;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class BillDetailDAOImpl implements BillDetailDAO{


    @Override
    public void insertBillDetail(ChiTietDonHang chiTietDonHang) {
        try {
            Connection conn = DBConnect.getConnect();
            String sql ="insert into chitietdonhang values(?,?,?,?)";
            PreparedStatement st =conn.prepareStatement(sql);
            st.setInt(1, chiTietDonHang.getMaDH());
            st.setInt(2, chiTietDonHang.getMaSP());
            st.setDouble(3, chiTietDonHang.getGiaBan());

            st.setInt(4, chiTietDonHang.getSoLuong());
            st.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }

    }
}
