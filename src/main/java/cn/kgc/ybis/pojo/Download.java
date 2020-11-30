package cn.kgc.ybis.pojo;

public class Download {
    private Long downId;

    private String tTitle;

    private String downPath;

    public Long getDownId() {
        return downId;
    }

    public void setDownId(Long downId) {
        this.downId = downId;
    }

    public String gettTitle() {
        return tTitle;
    }

    public void settTitle(String tTitle) {
        this.tTitle = tTitle == null ? null : tTitle.trim();
    }

    public String getDownPath() {
        return downPath;
    }

    public void setDownPath(String downPath) {
        this.downPath = downPath == null ? null : downPath.trim();
    }
}