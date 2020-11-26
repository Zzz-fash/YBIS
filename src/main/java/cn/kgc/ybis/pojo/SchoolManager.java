package cn.kgc.ybis.pojo;

public class SchoolManager {
    private Integer smId;

    private String smPhone;

    private String smPassword;

    private Integer status;

    private String smEmail;

    private String smPath;

    public Integer getSmId() {
        return smId;
    }

    public void setSmId(Integer smId) {
        this.smId = smId;
    }

    public String getSmPhone() {
        return smPhone;
    }

    public void setSmPhone(String smPhone) {
        this.smPhone = smPhone == null ? null : smPhone.trim();
    }

    public String getSmPassword() {
        return smPassword;
    }

    public void setSmPassword(String smPassword) {
        this.smPassword = smPassword == null ? null : smPassword.trim();
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public String getSmEmail() {
        return smEmail;
    }

    public void setSmEmail(String smEmail) {
        this.smEmail = smEmail == null ? null : smEmail.trim();
    }

    public String getSmPath() {
        return smPath;
    }

    public void setSmPath(String smPath) {
        this.smPath = smPath == null ? null : smPath.trim();
    }
}