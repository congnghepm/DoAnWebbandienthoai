package model;

public class SanPham {

    private int maSP;
    private String tenSP;
    private  String hangSX;
    private double giaBan;
    private int soLuongNhap;
    private double giaNhap;
    private int soLuongTon;
    private int maThongSo;
    private int maKM;

    public SanPham() {
    }

    public SanPham(int maSP, String tenSP, String hangSX, double giaBan, int soLuongNhap, double giaNhap, int soLuongTon, int maThongSo, int maKM) {
        this.maSP = maSP;
        this.tenSP = tenSP;
        this.hangSX = hangSX;
        this.giaBan = giaBan;
        this.soLuongNhap = soLuongNhap;
        this.giaNhap = giaNhap;
        this.soLuongTon = soLuongTon;
        this.maThongSo = maThongSo;
        this.maKM = maKM;
    }

    public int getMaSP() {
        return maSP;
    }

    public void setMaSP(int maSP) {
        this.maSP = maSP;
    }

    public String getTenSP() {
        return tenSP;
    }

    public void setTenSP(String tenSP) {
        this.tenSP = tenSP;
    }

    public String getHangSX() {
        return hangSX;
    }

    public void setHangSX(String hangSX) {
        this.hangSX = hangSX;
    }

    public double getGiaBan() {
        return giaBan;
    }

    public void setGiaBan(double giaBan) {
        this.giaBan = giaBan;
    }

    public int getSoLuongNhap() {
        return soLuongNhap;
    }

    public void setSoLuongNhap(int soLuongNhap) {
        this.soLuongNhap = soLuongNhap;
    }

    public double getGiaNhap() {
        return giaNhap;
    }

    public void setGiaNhap(double giaNhap) {
        this.giaNhap = giaNhap;
    }

    public int getSoLuongTon() {
        return soLuongTon;
    }

    public void setSoLuongTon(int soLuongTon) {
        this.soLuongTon = soLuongTon;
    }

    public int getMaThongSo() {
        return maThongSo;
    }

    public void setMaThongSo(int maThongSo) {
        this.maThongSo = maThongSo;
    }

    public int getMaKM() {
        return maKM;
    }

    public void setMaKM(int maKM) {
        this.maKM = maKM;
    }
}
