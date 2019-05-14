package model;

public class KhuyenMai {

    private int maKM;
    private String tenKM;
    private double giaTri;

    public KhuyenMai()
    {

    }
    public KhuyenMai(int maKM, String tenKM, double giaTri) {
        this.maKM = maKM;
        this.tenKM = tenKM;
        this.giaTri = giaTri;
    }

    public int getMaKM() {
        return maKM;
    }

    public void setMaKM(int maKM) {
        this.maKM = maKM;
    }

    public String getTenKM() {
        return tenKM;
    }

    public void setTenKM(String tenKM) {
        this.tenKM = tenKM;
    }

    public double getGiaTri() {
        return giaTri;
    }

    public void setGiaTri(double giaTri) {
        this.giaTri = giaTri;
    }
}
