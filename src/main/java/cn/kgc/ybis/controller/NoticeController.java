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
import java.util.List;

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
        //调用发送公告的方法
        Boolean aBoolean = noticeService.insertNotice(notice);
        //发送成功之后分别查询出来，前三条
        if(aBoolean){
            request.setAttribute("sendMsg","发送成功！");
            return "notice_index";
        }else{
            request.setAttribute("sendMsg","发送失败，请检查网络，或者联系老板：13053873107！");
            return "notice_index";
        }

    }
    //发送公告页面，显示已发送公告信息
    @RequestMapping("notice_index.do")
    public String to_notice_index(HttpSession session, Notice notice, HttpServletRequest request, HttpServletResponse response){
        //学校公告
        //模拟数据从session中获取
        List<Notice> schoolNotices = noticeService.selectByExampleByschool(1, 1);
        //发送到前端
        request.setAttribute("schoolNotices",schoolNotices);
        //班级公告
        List<Notice> classNotices = noticeService.selectByExampleByClass(1, 1);
        //发送到前端
        request.setAttribute("classNotices",classNotices);
        //我的公告==班级公告
        return "notice_index";
    }



}
