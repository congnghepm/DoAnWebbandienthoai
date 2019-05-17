package model;

import java.util.ArrayList;

public class HinhAnh_SP {
    private int maHA;
    private byte[] fileHA;
    private int maSP;

    public HinhAnh_SP() {
    }

    public HinhAnh_SP(int maHA, byte[] fileHA, int maSP) {
        this.maHA = maHA;
        this.fileHA = fileHA;
        this.maSP = maSP;
    }

    public int getMaHA() {
        return maHA;
    }

    public void setMaHA(int maHA) {
        this.maHA = maHA;
    }

    public byte[] getFileHA() {
        return fileHA;
    }

    public void setFileHA(byte[] fileHA) {
        this.fileHA = fileHA;
    }

    public int getMaSP() {
        return maSP;
    }

    public void setMaSP(int maSP) {
        this.maSP = maSP;
    }
}
