package cn.kgc.ybis.pojo;

import com.alibaba.excel.annotation.ExcelIgnore;
import com.alibaba.excel.annotation.ExcelIgnoreUnannotated;
import com.alibaba.excel.annotation.ExcelProperty;
import com.alibaba.excel.annotation.write.style.ColumnWidth;
import lombok.Data;
@ExcelIgnoreUnannotated
@ColumnWidth(30)
public class GPS {
    /**
     * 学生家长联系方式
     */
    @ExcelProperty("家长联系方式")
    private String uPhone;
    /**
     * 学生姓名
     */
    @ExcelProperty("学生名称")
    private String uName;
    /**
     * 语文成绩
     */
    @ExcelProperty("语文成绩")
    private Integer chinese;
    /**
     * 数学成绩
     */
    @ExcelProperty("数学成绩")
    private Integer math;
    /**
     * 英语成绩
     */
    @ExcelProperty("英语成绩")
    private Integer english;
    /**
     * 总分
     */
    @ExcelProperty("总分")
    private Integer scoreAll;
    /**
     * 排名
     */
    @ExcelProperty("班级排名")
    private Integer rank;
    public String getuPhone() {
        return uPhone;
    }

    public void setuPhone(String uPhone) {
        this.uPhone = uPhone;
    }

    public String getuName() {
        return uName;
    }

    public void setuName(String uName) {
        this.uName = uName;
    }

    public Integer getChinese() {
        return chinese;
    }

    public void setChinese(Integer chinese) {
        this.chinese = chinese;
    }

    public Integer getMath() {
        return math;
    }

    public void setMath(Integer math) {
        this.math = math;
    }

    public Integer getEnglish() {
        return english;
    }

    public void setEnglish(Integer english) {
        this.english = english;
    }

    public Integer getScoreAll() {
        return scoreAll;
    }

    public void setScoreAll(Integer scoreAll) {
        this.scoreAll = scoreAll;
    }

    public Integer getRank() {
        return rank;
    }

    public void setRank(Integer rank) {
        this.rank = rank;
    }

    @Override
    public String toString() {
        return "GPS{" +
                "uPhone='" + uPhone + '\'' +
                ", uName='" + uName + '\'' +
                ", chinese=" + chinese +
                ", math=" + math +
                ", english=" + english +
                ", scoreAll=" + scoreAll +
                ", rank=" + rank +
                '}';
    }
}
