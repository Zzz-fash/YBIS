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

    private String dUname;

    private Class aClass;

    private Teacher teacher;

    public Teacher getTeacher() {
        return teacher;
    }

    public void setTeacher(Teacher teacher) {
        this.teacher = teacher;
    }

    public Class getaClass() {
        return aClass;
    }

    public void setaClass(Class aClass) {
        this.aClass = aClass;
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
        java.sql.Date date = new java.sql.Date(dDate.getTime());
        this.dDate = date;
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

    public String getdUname() {
        return dUname;
    }

    public void setdUname(String dUname) {
        this.dUname = dUname == null ? null : dUname.trim();
    }
}