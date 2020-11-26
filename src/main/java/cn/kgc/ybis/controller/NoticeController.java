package cn.kgc.ybis.controller;

import cn.kgc.ybis.pojo.Notice;
import cn.kgc.ybis.service.NoticeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.Date;

/**
 * @author zt
 * 公告控制器
 * @time 2020年11月26日16:22:52
 */
@Controller
public class NoticeController {
    @Autowired
    NoticeService noticeService;
    //发送公告
    @RequestMapping("notice_send.do")
    public String notice_send(HttpSession session, Notice notice, HttpServletRequest request, HttpServletResponse response){
        notice.settId(1);
        notice.setnDate(new Date());
        notice.setSmId(1);
        String n_name = request.getParameter("n_name");
        notice.setnName(n_name);
        notice.setnContent(request.getParameter("n_content"));
        Boolean aBoolean = noticeService.insertNotice(notice);
        System.out.println(notice.toString());
        if(aBoolean){
            request.setAttribute("sendMsg","发送成功！");
            return "notice_index";
        }else{
            request.setAttribute("sendMsg","发送失败，请检查网络，或者联系老板：13053873107！");
            return "notice_index";
        }

    }

    //-----------------页面跳转-------------
    @RequestMapping("notice_index.do")
    public String to_notice_index(){
        return "notice_index";
    }
}
