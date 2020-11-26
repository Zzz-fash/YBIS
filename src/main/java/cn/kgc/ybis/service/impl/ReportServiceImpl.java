package cn.kgc.ybis.service.impl;

import cn.kgc.ybis.mapper.*;
import cn.kgc.ybis.pojo.*;
import cn.kgc.ybis.pojo.Class;
import cn.kgc.ybis.service.ReportService;

import com.alibaba.excel.EasyExcel;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Random;

@Service("reportService")
public class ReportServiceImpl implements ReportService {
    @Autowired
    ReportMapper reportMapper;
    @Autowired
    ClassMapper classMapper;
    @Autowired
    UserMapper userMapper;
    @Autowired
    TeacherClassMapper teacherClassMapper;
    @Autowired
    DownloadMapper downloadMapper;
    //查询成绩表，根据学生编号、成绩创建时间查询学生在一次考试中的所有成绩集合（家长端）
    @Override
    public List<Report> select(Integer uId, Date tCreationTime) {
        ReportExample example = new ReportExample();
        example.createCriteria().andUIdEqualTo(uId).andTCreationTimeEqualTo(tCreationTime);
        return reportMapper.selectByExample(example);
    }
    //增加成绩（后期加入生成excel表格，需要使用延时加载）
    //生成一张excel表格，表格内包含学生名称，成绩类型（教师端）
    @Override
    public Boolean add(Report report) {
        return null;
    }
    //3.excel模板生成
    @Override
    public void excelTemplate(Integer cId,String tTitle) {
        List<GPS> gps = new ArrayList<>();
        UserExample userExample = new UserExample();
        userExample.createCriteria().andCIdEqualTo(cId);
        List<User> users = userMapper.selectByExample(userExample);
        for (int i = 0; i < users.size(); i++) {
            GPS gps1 = new GPS();
            gps1.setUId(users.get(i).getuId());
            gps1.setUName(users.get(i).getuName());
            gps.add(gps1);
        }
        //增加生成excel记录
        Download download = new Download();
        download.settTitle(tTitle);
        String downPath =new Random().nextInt(1000)+"_cId_"+cId+"_"+tTitle+".xlsx";
        download.setDownPath(downPath);
        downloadMapper.insertSelective(download);
        //生成excel
        EasyExcel.write(downPath, GPS.class).sheet().doWrite(gps);
    }
    //修改学生成绩(（拿到创建时间），利用ajax模糊查询学生姓名，获取学生全名和头像，确定学生（拿到u_id），选择需要修改的成绩类型（拿到类型编号），进行修改)
    @Override
    public Boolean update(Report report) {
        return null;
    }

    //2.判断是否为班主任（1.班主任：创建成绩单，2.普通老师：查看成绩单）
    @Override
    public Boolean isTeacherManager(Integer tId,Integer cId) {
        ClassExample classExample = new ClassExample();
        classExample.createCriteria().andTmIdEqualTo(tId);
        List<Class> classes = classMapper.selectByExample(classExample);
        return classes.get(0).getcId()==cId;
    }
    //1.查看老师名下的班级
    @Override
    public List<Class> selectClass(Integer tId) {
        TeacherClassExample teacherClassExample = new TeacherClassExample();
        teacherClassExample.createCriteria().andTIdEqualTo(tId);
        List<TeacherClass> teacherClasses = teacherClassMapper.selectByExample(teacherClassExample);
        List<Integer> cId = new ArrayList<>();
        for (TeacherClass teacherClass : teacherClasses) {
            Integer getcId = teacherClass.getcId();
            cId.add(getcId);
        }
        ClassExample classExample = new ClassExample();
        classExample.createCriteria().andCIdIn(cId);
        List<Class> classes = classMapper.selectByExample(classExample);
        return classes;
    }
}
