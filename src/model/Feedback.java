package model;

public class Feedback {

    private int maGopY;
    private String  tieuDe;
    private String noiDung;
    private int maKH;

    public Feedback() {
    }

    public Feedback(int maGopY, String tieuDe, String noiDung, int maKH) {
        this.maGopY = maGopY;
        this.tieuDe = tieuDe;
        this.noiDung = noiDung;
        this.maKH = maKH;
    }

    public int getMaGopY() {
        return maGopY;
    }

    public void setMaGopY(int maGopY) {
        this.maGopY = maGopY;
    }

    public String getTieuDe() {
        return tieuDe;
    }

    public void setTieuDe(String tieuDe) {
        this.tieuDe = tieuDe;
    }

    public String getNoiDung() {
        return noiDung;
    }

    public void setNoiDung(String noiDung) {
        this.noiDung = noiDung;
    }

    public int getMaKH() {
        return maKH;
    }

    public void setMaKH(int maKH) {
        this.maKH = maKH;
    }
}
