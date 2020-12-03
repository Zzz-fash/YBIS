package cn.kgc.ybis;


import cn.kgc.ybis.mapper.ClassMapper;
import cn.kgc.ybis.pojo.Class;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.util.List;

public class Test01 {

    @Test
    public void test01(){
        ApplicationContext applicationContext = new ClassPathXmlApplicationContext("classpath:applicationContext.xml");
        ClassMapper classMapper = (ClassMapper) applicationContext.getBean("classMapper");

        List<Class> classes = classMapper.selectByExample(null);
        for (Class aClass : classes) {
            System.out.println(aClass.toString());
        }

    }
}
