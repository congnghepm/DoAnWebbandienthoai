package model;

import java.sql.Date;
import java.sql.Timestamp;

public class DonHang {

    private int maDH;
    private Date thoiGian;
    private double tongTien;
    private int maKH;

    public DonHang() {
    }

    public DonHang(int maDH, Date thoiGian, double tongTien, int maKH) {
        this.maDH = maDH;
        this.thoiGian = thoiGian;
        this.tongTien = tongTien;
        this.maKH = maKH;
    }

    public int getMaDH() {
        return maDH;
    }

    public void setMaDH(int maDH) {
        this.maDH = maDH;
    }

    public Date getThoiGian() {
        return thoiGian;
    }

    public void setThoiGian(Date thoiGian) {
        this.thoiGian = thoiGian;
    }

    public double getTongTien() {
        return tongTien;
    }

    public void setTongTien(double tongTien) {
        this.tongTien = tongTien;
    }

    public int getMaKH() {
        return maKH;
    }

    public void setMaKH(int maKH) {
        this.maKH = maKH;
    }
}
