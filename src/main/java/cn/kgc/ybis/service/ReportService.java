package cn.kgc.ybis.service;

/**
 * 作者：郭鹏生
 */

import cn.kgc.ybis.pojo.Class;
import cn.kgc.ybis.pojo.Report;
import cn.kgc.ybis.pojo.User;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;
public interface ReportService {
    //查询成绩表，根据学生编号、成绩创建时间查询学生在一次考试中的所有成绩集合（家长端）
    List<Report> select(Integer uId, Date tCreationTime);
    //增加成绩（后期加入生成excel表格，需要使用延时加载）
    //生成一张excel表格，表格内包含学生名称，成绩类型（教师端）
    Boolean add(Report report);
    //excel模板生成
    void excelTemplate(Integer cId,String tTitle);
    //修改学生成绩(（拿到创建时间），利用ajax模糊查询学生姓名，获取学生全名和头像，确定学生（拿到u_id），选择需要修改的成绩类型（拿到类型编号），进行修改)
    Boolean update(Report report);
    //根据标题查询成绩单（学生端）

    //判断是否为班主任（1.班主任：创建成绩单，2.普通老师：查看成绩单）
    Boolean isTeacherManager(Integer tId,Integer cId);
    //查看老师名下的班级
    List<Class> selectClass(Integer tId);

}
