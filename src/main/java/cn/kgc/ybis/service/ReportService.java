package cn.kgc.ybis.service;

/**
 * 作者：郭鹏生
 */

import cn.kgc.ybis.pojo.*;
import cn.kgc.ybis.pojo.Class;
import com.github.pagehelper.PageInfo;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;
public interface ReportService {
    //查询成绩表，根据学生编号、成绩创建时间查询学生在一次考试中的所有成绩集合（家长端）
    List<Report> select(Integer uId, Date tCreationTime);
    //excel模板生成
    String excelTemplate(Integer cId,String downPath);
    //修改学生成绩(（拿到创建时间），利用ajax模糊查询学生姓名，获取学生全名和头像，确定学生（拿到u_id），选择需要修改的成绩类型（拿到类型编号），进行修改)
    Boolean update(Report report);
    //根据标题查询成绩单（学生端）

    //判断是否为班主任（1.班主任：创建成绩单，2.普通老师：查看成绩单）
    Boolean isTeacherManager(Integer tId,Integer cId);
    //查看老师名下的班级
    List<Class> selectClass(Integer tId);
    //查看所有成绩单分页
    PageInfo<Download> reportPage(Integer cId,String likename, Integer pageNum, Integer pageSize);
    //excel成绩读出
    void write(String downPath,String title);
    //读入数据库并且增加下载记录
    void readAll(String uPhone, String name,String title,Integer chinese,Integer math,Integer english);
    //批量删除
    Boolean deleteAll(List<Integer> list);
    //ajax模糊查询学生姓名
    List<User> ajaxUserName(UserExample example);
}
