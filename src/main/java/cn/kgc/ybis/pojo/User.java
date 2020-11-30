package cn.kgc.ybis.pojo;

import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

public class User {
    private Integer uId;

    private String uName;

    private String uPassword;

    private String uPhone;

    private String uAddress;

    private Integer cId;

    private String status;
@DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date uDate;

    private String uPath;
    private  Class aClass;

    public Class getaClass() {
        return aClass;
    }

    public void setaClass(Class aClass) {
        this.aClass = aClass;
    }

    public Integer getuId() {
        return uId;
    }

    public void setuId(Integer uId) {
        this.uId = uId;
    }

    public String getuName() {
        return uName;
    }

    public void setuName(String uName) {
        this.uName = uName == null ? null : uName.trim();
    }

    public String getuPassword() {
        return uPassword;
    }

    public void setuPassword(String uPassword) {
        this.uPassword = uPassword == null ? null : uPassword.trim();
    }

    public String getuPhone() {
        return uPhone;
    }

    public void setuPhone(String uPhone) {
        this.uPhone = uPhone == null ? null : uPhone.trim();
    }

    public String getuAddress() {
        return uAddress;
    }

    public void setuAddress(String uAddress) {
        this.uAddress = uAddress == null ? null : uAddress.trim();
    }

    public Integer getcId() {
        return cId;
    }

    public void setcId(Integer cId) {
        this.cId = cId;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status == null ? null : status.trim();
    }

    public Date getuDate() {
        return uDate;
    }

    public void setuDate(Date uDate) {
        this.uDate = uDate;
    }

    public String getuPath() {
        return uPath;
    }

    public void setuPath(String uPath) {
        this.uPath = uPath == null ? null : uPath.trim();
    }
}