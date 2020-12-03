package cn.kgc.ybis.service.impl;

import cn.kgc.ybis.mapper.*;
import cn.kgc.ybis.pojo.*;
import cn.kgc.ybis.pojo.Class;
import cn.kgc.ybis.service.ReportService;
import com.alibaba.excel.EasyExcel;
import com.alibaba.excel.EasyExcelFactory;
import com.alibaba.excel.metadata.Sheet;
import com.alibaba.excel.read.metadata.ReadWorkbook;
import com.alibaba.excel.write.builder.ExcelWriterBuilder;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Service;

import java.io.*;
import java.text.SimpleDateFormat;
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
    SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd hh-mm-ss");
    //查询成绩表，根据学生编号、成绩创建时间查询学生在一次考试中的所有成绩集合（家长端）
    @Override
    public List<Report> select(Integer uId, Date tCreationTime) {
        ReportExample example = new ReportExample();
        example.createCriteria().andUIdEqualTo(uId).andTCreationTimeEqualTo(tCreationTime);
        return reportMapper.selectByExample(example);
    }
    //3.excel模板生成(填入学生姓名)
    @Override
    public String excelTemplate(Integer cId,String downPath) {
        List<GPS> gps = new ArrayList<>();
        UserExample userExample = new UserExample();
        userExample.createCriteria().andCIdEqualTo(cId);
        List<User> users = userMapper.selectByExample(userExample);
        for (int i = 0; i < users.size(); i++) {
            GPS gps1 = new GPS();
            gps1.setuPhone(users.get(i).getuPhone());
            gps1.setuName(users.get(i).getuName());
            gps.add(gps1);
        }
        //生成excel
//        String downPath ="createTime_"+simpleDateFormat.format(new Date())+"_"+new Random().nextInt(100000)+"_cId_"+cId+"_"+tTitle+".xlsx";
        EasyExcel.write(downPath,GPS.class).sheet().doWrite(gps);
        //增加生成excel记录
//        Download download = new Download();
//        downloadMapper.insertSelective(download);
        return  downPath;
    }

    /**
     * 没完成功能
     * @param report
     * @return
     */
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
    //查看所有成绩单分页
    @Override
    public PageInfo<Download> reportPage(Integer cId,String likename, Integer pageNum, Integer pageSize) {
        DownloadExample downloadExample = new DownloadExample();
        downloadExample.createCriteria().andDownPathLike("%"+"cId_"+cId+"%").andTTitleLike("%"+likename+"%");
        List<Download> downloads = downloadMapper.selectByExample(downloadExample);
        PageHelper.startPage(pageNum,pageSize);
        PageHelper.orderBy("down_id desc");
        PageInfo<Download> pageInfo = new PageInfo<>(downloads);
        return pageInfo;
    }

    @Override
    public void write(String downPath,String title) {
        List<GPS> list = new ArrayList<>();
        Date date = new Date();
        File file = new File(downPath);
//        EasyExcel.read(downPath,GPS.class,new GpsListen()).sheet().doRead();
        Sheet sheet = new Sheet(1,1);
        try {
            InputStream in = new FileInputStream(file);
            List<Object> read = EasyExcelFactory.read(in, sheet);
            //每一行
            for (int i = 0; i < read.size(); i++) {
                List<String> readOne = new ArrayList<>();
                readOne = (List<String>) read.get(i);
                String phone = readOne.get(0);
                String name = readOne.get(1);
                //根据电话和名字查询学生，得到学生id,班级id
                //根据班级id得到所有科目老师id
                String chinese = readOne.get(2);
                String math = readOne.get(3);
                String english = readOne.get(4);
                //调用readAll方法实现增加成绩
                readAll(phone,name,title,Integer.parseInt(chinese),Integer.parseInt(math),Integer.parseInt(english));
            }
            Download download = new Download();
            download.setDownPath(downPath);
            download.settTitle(title);
            downloadMapper.insertSelective(download);
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        }

    }

    @Override
    public void readAll(String uPhone, String name,String title,Integer chinese,Integer math,Integer english) {
        UserExample userExample = new UserExample();
        userExample.createCriteria().andUPhoneEqualTo(uPhone).andUNameEqualTo(name);
        List<User> users = userMapper.selectByExample(userExample);
        Report report = new Report();
        report.settTitle(title);
        report.settCreationTime(new Date());
        report.setuId(users.get(0).getuId());
        TeacherClassExample teacherClassExample = new TeacherClassExample();
        teacherClassExample.createCriteria().andCIdEqualTo(users.get(0).getcId());
        List<TeacherClass> teacherClasses = teacherClassMapper.selectByExample(teacherClassExample);
        for (int i = 0; i < teacherClasses.size(); i++) {
            String typeStr = teacherClasses.get(i).getTeacher().gettDesc();
            if (typeStr.equals("语文")){
                report.settType(1);
                report.settId(teacherClasses.get(i).getTeacher().gettId());
                report.setrScore(chinese);
            }
            if (typeStr.equals("数学")){
                report.settType(2);
                report.settId(teacherClasses.get(i).getTeacher().gettId());
                report.setrScore(math);
            }
            if (typeStr.equals("英语")){
                report.settType(3);
                report.settId(teacherClasses.get(i).getTeacher().gettId());
                report.setrScore(english);
            }
            reportMapper.insertSelective(report);
        }

    }

    @Override
    public Boolean deleteAll(List<Integer> list) {
        DownloadExample example = new DownloadExample();
        example.createCriteria().andDownIdIn(list);
        return downloadMapper.deleteByExample(example)>0?true:false;
    }

    @Override
    public List<User> ajaxUserName(UserExample example) {
        List<User> users = userMapper.selectByExample(example);
        return users;
    }
}
