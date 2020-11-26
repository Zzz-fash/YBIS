package cn.kgc.ybis.controller;

import cn.kgc.ybis.service.ReportService;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
public class test {
    @Autowired
    ReportService reportService;
    @RequestMapping("login.do")
    public String loginJump(){
        return "denglu";
    }
}
