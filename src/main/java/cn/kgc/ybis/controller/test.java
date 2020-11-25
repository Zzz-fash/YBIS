package cn.kgc.ybis.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
public class test {
    @RequestMapping("login.do")
    public String loginJump(){
        return "denglu";
    }

}
