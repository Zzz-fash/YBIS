package cn.kgc.ybis.service;

import cn.kgc.ybis.pojo.Report;
import cn.kgc.ybis.pojo.ReportExample;

/**
 * 作者：郭鹏生
 */
import java.util.List;

public interface ReportService {
    //查询成绩表，根据学生编号、成绩创建时间查询学生在一次考试中的所有成绩集合（家长端）
    List<Report> select(ReportExample example);
    //增加成绩（后期加入生成excel表格，需要使用延时加载）
    //生成一张excel表格，表格内包含学生名称，成绩类型（教师端）
    Boolean add(Report report);
    //查询班级学生名称（根据班主任的id）(为了实现表格生成)（教师端）
    List<Report> selectUserName(ReportExample example);
    //修改学生成绩(（拿到创建时间），利用ajax模糊查询学生姓名，获取学生全名和头像，确定学生（拿到u_id），选择需要修改的成绩类型（拿到类型编号），进行修改)
    Boolean update(Report report);
}
