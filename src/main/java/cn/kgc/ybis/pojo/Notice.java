package cn.kgc.ybis.pojo;

import java.util.Date;

public class Notice {
    private Integer nId;

    private String nName;

    private Date nDate;

    private String nContent;

    private Integer tId;

    private Integer smId;

    private Integer status;

    public Notice() {
    }

    public Notice(Integer nId, String nName, Date nDate, String nContent, Integer tId, Integer smId, Integer status) {
        this.nId = nId;
        this.nName = nName;
        this.nDate = nDate;
        this.nContent = nContent;
        this.tId = tId;
        this.smId = smId;
        this.status = status;
    }

    @Override
    public String toString() {
        return "Notice{" +
                "nId=" + nId +
                ", nName='" + nName + '\'' +
                ", nDate=" + nDate +
                ", nContent='" + nContent + '\'' +
                ", tId=" + tId +
                ", smId=" + smId +
                ", status=" + status +
                '}';
    }

    public Integer getnId() {
        return nId;
    }

    public void setnId(Integer nId) {
        this.nId = nId;
    }

    public String getnName() {
        return nName;
    }

    public void setnName(String nName) {
        this.nName = nName == null ? null : nName.trim();
    }

    public Date getnDate() {
        return nDate;
    }

    public void setnDate(Date nDate) {
        this.nDate = nDate;
    }

    public String getnContent() {
        return nContent;
    }

    public void setnContent(String nContent) {
        this.nContent = nContent == null ? null : nContent.trim();
    }

    public Integer gettId() {
        return tId;
    }

    public void settId(Integer tId) {
        this.tId = tId;
    }

    public Integer getSmId() {
        return smId;
    }

    public void setSmId(Integer smId) {
        this.smId = smId;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }
}