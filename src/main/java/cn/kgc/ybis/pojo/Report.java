package cn.kgc.ybis.pojo;

import java.util.Date;

public class Report {
    private Long rId;

    private Long tType;

    private Long uId;

    private Integer rScore;

    private Long tId;

    private Date tCreationTime;

    private String tTitle;

    private Integer tRank;

    public Long getrId() {
        return rId;
    }

    public void setrId(Long rId) {
        this.rId = rId;
    }

    public Long gettType() {
        return tType;
    }

    public void settType(Long tType) {
        this.tType = tType;
    }

    public Long getuId() {
        return uId;
    }

    public void setuId(Long uId) {
        this.uId = uId;
    }

    public Integer getrScore() {
        return rScore;
    }

    public void setrScore(Integer rScore) {
        this.rScore = rScore;
    }

    public Long gettId() {
        return tId;
    }

    public void settId(Long tId) {
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