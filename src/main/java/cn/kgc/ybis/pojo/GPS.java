package cn.kgc.ybis.pojo;

import com.alibaba.excel.annotation.ExcelIgnore;
import com.alibaba.excel.annotation.ExcelProperty;
import lombok.Data;

@Data
public class GPS {
    /**
     * 学生编号
     */
    @ExcelIgnore
    private Integer uId;
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
    @ExcelProperty("排名")
    private Integer rank;


}
