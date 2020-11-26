package cn.kgc.ybis.pojo;

import java.util.Date;

public class Report {
    private Integer rId;

    private Integer tType;

    private Integer uId;

    private Integer rScore;

    private Integer tId;

    private Date tCreationTime;

    private String tTitle;

    private Integer tRank;

    public Integer getrId() {
        return rId;
    }

    public void setrId(Integer rId) {
        this.rId = rId;
    }

    public Integer gettType() {
        return tType;
    }

    public void settType(Integer tType) {
        this.tType = tType;
    }

    public Integer getuId() {
        return uId;
    }

    public void setuId(Integer uId) {
        this.uId = uId;
    }

    public Integer getrScore() {
        return rScore;
    }

    public void setrScore(Integer rScore) {
        this.rScore = rScore;
    }

    public Integer gettId() {
        return tId;
    }

    public void settId(Integer tId) {
        this.tId = tId;
    }

    public Date gettCreationTime() {
        return tCreationTime;
    }

    public void settCreationTime(Date tCreationTime) {
        this.tCreationTime = tCreationTime;
    }

    public String gettTitle() {
        return tTitle;
    }

    public void settTitle(String tTitle) {
        this.tTitle = tTitle == null ? null : tTitle.trim();
    }

    public Integer gettRank() {
        return tRank;
    }

    public void settRank(Integer tRank) {
        this.tRank = tRank;
    }
}