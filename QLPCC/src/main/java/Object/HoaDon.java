/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.myexample.Object;

/**
 *
 * @author minhn
 */
public class HoaDon {
    private String maHD;
    private String TenHD;
    private String maCH;
    private String maNV;
    private String ngaytao;
    private String tienthang;
    private String tienno;

    @Override
    public String toString() {
        return "HoaDon{" + "maHD=" + maHD + ", TenHD=" + TenHD + ", maCH=" + maCH + ", maNV=" + maNV + ", ngaytao=" + ngaytao + ", tienthang=" + tienthang + ", tienno=" + tienno + '}';
    }

    public HoaDon() {
    }

    public HoaDon(String maHD, String TenHD, String maCH, String maNV, String ngaytao, String tienthang, String tienno) {
        this.maHD = maHD;
        this.TenHD = TenHD;
        this.maCH = maCH;
        this.maNV = maNV;
        this.ngaytao = ngaytao;
        this.tienthang = tienthang;
        this.tienno = tienno;
    }

    public String getMaHD() {
        return maHD;
    }

    public void setMaHD(String maHD) {
        this.maHD = maHD;
    }

    public String getTenHD() {
        return TenHD;
    }

    public void setTenHD(String TenHD) {
        this.TenHD = TenHD;
    }

    public String getMaCH() {
        return maCH;
    }

    public void setMaCH(String maCH) {
        this.maCH = maCH;
    }

    public String getMaNV() {
        return maNV;
    }

    public void setMaNV(String maNV) {
        this.maNV = maNV;
    }

    public String getNgaytao() {
        return ngaytao;
    }

    public void setNgaytao(String ngaytao) {
        this.ngaytao = ngaytao;
    }

    public String getTienthang() {
        return tienthang;
    }

    public void setTienthang(String tienthang) {
        this.tienthang = tienthang;
    }

    public String getTienno() {
        return tienno;
    }

    public void setTienno(String tienno) {
        this.tienno = tienno;
    }
}
