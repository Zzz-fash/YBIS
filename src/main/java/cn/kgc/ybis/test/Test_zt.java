package cn.kgc.ybis.test;

import cn.kgc.ybis.pojo.Notice;
import cn.kgc.ybis.service.NoticeService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

/**
 * @author zt
 * @time 2020年11月26日14:59:12
 * 测试功能类
 */
@ContextConfiguration(locations = "classpath:applicationContext.xml")
@RunWith(SpringJUnit4ClassRunner.class)
public class Test_zt {
    @Autowired
    NoticeService noticeService;
   //查询功能
    @Test
    public void noticeTest01(){
        List<Notice> notices = noticeService.selectByExample(null, 1,1);
        for (Notice notice : notices) {
            System.out.println(notice.toString());
        }
    }

}
