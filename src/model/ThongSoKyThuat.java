package model;

public class ThongSoKyThuat {

    private int maThongSo;
    private String manHinh;
    private int RAM;
    private int boNhoTrong;
    private String cameraTruoc;
    private String cameraSau;
    private int dungLuongPin;
    private String CPU;

    public ThongSoKyThuat()
    {

    }

    public ThongSoKyThuat(int maThongSo, String manHinh, int RAM, int boNhoTrong, String cameraTruoc, String cameraSau, int dungLuongPin, String CPU) {
        this.maThongSo = maThongSo;
        this.manHinh = manHinh;
        this.RAM = RAM;
        this.boNhoTrong = boNhoTrong;
        this.cameraTruoc = cameraTruoc;
        this.cameraSau = cameraSau;
        this.dungLuongPin = dungLuongPin;
        this.CPU = CPU;
    }

    public int getMaThongSo() {
        return maThongSo;
    }

    public void setMaThongSo(int maThongSo) {
        this.maThongSo = maThongSo;
    }

    public String getManHinh() {
        return manHinh;
    }

    public void setManHinh(String manHinh) {
        this.manHinh = manHinh;
    }

    public int getRAM() {
        return RAM;
    }

    public void setRAM(int RAM) {
        this.RAM = RAM;
    }

    public int getBoNhoTrong() {
        return boNhoTrong;
    }

    public void setBoNhoTrong(int boNhoTrong) {
        this.boNhoTrong = boNhoTrong;
    }

    public String getCameraTruoc() {
        return cameraTruoc;
    }

    public void setCameraTruoc(String cameraTruoc) {
        this.cameraTruoc = cameraTruoc;
    }

    public String getCameraSau() {
        return cameraSau;
    }

    public void setCameraSau(String cameraSau) {
        this.cameraSau = cameraSau;
    }

    public int getDungLuongPin() {
        return dungLuongPin;
    }

    public void setDungLuongPin(int dungLuongPin) {
        this.dungLuongPin = dungLuongPin;
    }

    public String getCPU() {
        return CPU;
    }

    public void setCPU(String CPU) {
        this.CPU = CPU;
    }
}
