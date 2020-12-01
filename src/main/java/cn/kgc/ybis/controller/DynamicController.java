package cn.kgc.ybis.controller;

import cn.kgc.ybis.pojo.Dynamic;
import cn.kgc.ybis.service.DynamicService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.Date;

@Controller
public class DynamicController {
    @Autowired
    DynamicService dynamicService;
    @RequestMapping("")
    public String selectDynamicByExample(){

        return "";
    }
    @RequestMapping("")
    public String insertDynamicByExample(HttpServletRequest request, HttpServletResponse response, HttpSession session){
        Dynamic dynamic = new Dynamic();
        dynamic.settId(1);
        dynamic.setComId(1);
        dynamic.setuId(1);
        dynamic.setdImg("暂时不加");
        dynamic.setdContent("第一条数据添加");
        dynamic.setdDate(new Date());
        dynamic.setdName("张通");
        boolean b = dynamicService.insertDynamicByExample(dynamic);
        return "";
    }

}
