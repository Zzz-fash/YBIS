package cn.kgc.ybis.test;

import cn.kgc.ybis.service.ReportService;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;


import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Random;

@ContextConfiguration("classpath:applicationContext.xml")
@RunWith(SpringJUnit4ClassRunner.class)
public class Test01 {
    @Autowired
    ReportService reportService;
    SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd hh-mm-ss");
    @Test
    public void test01(){
        Object o = "[1,2,3]";
        String s = (String) o;
        String substring = s.substring(1, s.length() - 1);
        String[] split = substring.split(",");
        for (String s1 : split) {
            System.out.println(s1);
        }

    }
    @Test
    public void test02(){
        String s = "createTime_"+simpleDateFormat.format(new Date())+"_"+ new Random().nextInt(100000) + "_cId_" + 1 + "_" + 1 + ".xlsx";
        reportService.excelTemplate(1,s);
    }
}
