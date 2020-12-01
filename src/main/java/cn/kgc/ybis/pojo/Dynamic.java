package cn.kgc.ybis.pojo;

import java.util.Date;

public class Dynamic {
    private Integer dId;

    private String dName;

    private Date dDate;

    private String dContent;

    private String dImg;

    private Integer tId;

    private Integer uId;

    private Integer smId;

    private Integer comId;

    private Integer status;

    @Override
    public String toString() {
        return "Dynamic{" +
                "dId=" + dId +
                ", dName='" + dName + '\'' +
                ", dDate=" + dDate +
                ", dContent='" + dContent + '\'' +
                ", dImg='" + dImg + '\'' +
                ", tId=" + tId +
                ", uId=" + uId +
                ", smId=" + smId +
                ", comId=" + comId +
                ", status=" + status +
                '}';
    }

    public Integer getdId() {
        return dId;
    }

    public void setdId(Integer dId) {
        this.dId = dId;
    }

    public String getdName() {
        return dName;
    }

    public void setdName(String dName) {
        this.dName = dName == null ? null : dName.trim();
    }

    public Date getdDate() {
        return dDate;
    }

    public void setdDate(Date dDate) {
        this.dDate = dDate;
    }

    public String getdContent() {
        return dContent;
    }

    public void setdContent(String dContent) {
        this.dContent = dContent == null ? null : dContent.trim();
    }

    public String getdImg() {
        return dImg;
    }

    public void setdImg(String dImg) {
        this.dImg = dImg == null ? null : dImg.trim();
    }

    public Integer gettId() {
        return tId;
    }

    public void settId(Integer tId) {
        this.tId = tId;
    }

    public Integer getuId() {
        return uId;
    }

    public void setuId(Integer uId) {
        this.uId = uId;
    }

    public Integer getSmId() {
        return smId;
    }

    public void setSmId(Integer smId) {
        this.smId = smId;
    }

    public Integer getComId() {
        return comId;
    }

    public void setComId(Integer comId) {
        this.comId = comId;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }
}