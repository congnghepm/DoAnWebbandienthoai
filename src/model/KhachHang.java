package model;

public class KhachHang {

    private int maKH;
    private String tenKH;
    private String dienThoai;
    private String diaChi;
    private String email;

    public KhachHang() {
    }

    public KhachHang(int maKH, String tenKH, String dienThoai, String diaChi, String email) {
        this.maKH = maKH;
        this.tenKH = tenKH;
        this.dienThoai = dienThoai;
        this.diaChi = diaChi;
        this.email =email;
    }

    public int getMaKH() {
        return maKH;
    }

    public void setMaKH(int maKH) {
        this.maKH = maKH;
    }

    public String getTenKH() {
        return tenKH;
    }

    public void setTenKH(String tenKH) {
        this.tenKH = tenKH;
    }

    public String getDienThoai() {
        return dienThoai;
    }

    public void setDienThoai(String dienThoai) {
        this.dienThoai = dienThoai;
    }

    public String getDiaChi() {
        return diaChi;
    }

    public void setDiaChi(String diaChi) {
        this.diaChi = diaChi;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
}
