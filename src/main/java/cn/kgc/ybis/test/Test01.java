package cn.kgc.ybis.test;

import cn.kgc.ybis.service.ReportService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@ContextConfiguration("classpath:applicationContext.xml")
@RunWith(SpringJUnit4ClassRunner.class)
public class Test01 {
    @Autowired
    ReportService reportService;
    @Test
    public void test01(){
        reportService.excelTemplate(1,"郭鹏生第一次生成excel");
    }
}
