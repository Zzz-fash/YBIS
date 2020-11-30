package cn.kgc.ybis.pojo;

public class Class {
    private Integer cId;

    private String cName;

    private Integer tmId;

    private Integer sId;

    private Integer status;

    public Integer getcId() {
        return cId;
    }

    public void setcId(Integer cId) {
        this.cId = cId;
    }

    public String getcName() {
        return cName;
    }

    public void setcName(String cName) {
        this.cName = cName == null ? null : cName.trim();
    }

    public Integer getTmId() {
        return tmId;
    }

    public void setTmId(Integer tmId) {
        this.tmId = tmId;
    }

    public Integer getsId() {
        return sId;
    }

    public void setsId(Integer sId) {
        this.sId = sId;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    @Override
    public String toString() {
        return "Class{" +
                "cId=" + cId +
                ", cName='" + cName + '\'' +
                ", tmId=" + tmId +
                ", sId=" + sId +
                ", status=" + status +
                '}';
    }
}