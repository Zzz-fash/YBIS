package cn.kgc.ybis.pojo;

public class SuperAdmin {
    private Integer saId;

    private String saName;

    private String saPassword;

    public Integer getSaId() {
        return saId;
    }

    public void setSaId(Integer saId) {
        this.saId = saId;
    }

    public String getSaName() {
        return saName;
    }

    public void setSaName(String saName) {
        this.saName = saName == null ? null : saName.trim();
    }

    public String getSaPassword() {
        return saPassword;
    }

    public void setSaPassword(String saPassword) {
        this.saPassword = saPassword == null ? null : saPassword.trim();
    }
}