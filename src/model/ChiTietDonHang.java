package model;

public class ChiTietDonHang {

    private int maDH;
    private int maSP;
    private double giaBan;
    private int soLuong;

    public ChiTietDonHang() {
    }

    public ChiTietDonHang(int maDH, int maSP, double giaBan, int soLuong) {
        this.maDH = maDH;
        this.maSP = maSP;
        this.giaBan = giaBan;
        this.soLuong = soLuong;
    }

    public int getMaDH() {
        return maDH;
    }

    public void setMaDH(int maDH) {
        this.maDH = maDH;
    }

    public int getMaSP() {
        return maSP;
    }

    public void setMaSP(int maSP) {
        this.maSP = maSP;
    }

    public double getGiaBan() {
        return giaBan;
    }

    public void setGiaBan(double giaBan) {
        this.giaBan = giaBan;
    }

    public int getSoLuong() {
        return soLuong;
    }

    public void setSoLuong(int soLuong) {
        this.soLuong = soLuong;
    }
}
