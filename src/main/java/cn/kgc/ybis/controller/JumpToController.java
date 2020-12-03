package cn.kgc.ybis.controller;

import cn.kgc.ybis.pojo.Notice;
import cn.kgc.ybis.service.NoticeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;
import java.util.stream.Stream;

/**
 * @author 张通
 * @time 2020年11月27日14:57:22
 * 页面跳转
 */
@Controller
public class JumpToController {
    @Autowired
    NoticeService noticeService;
    //每次跳转页面 mian的时候 都需要带有各种信息
    @RequestMapping("main.do")
    public String toMian(HttpSession session, HttpServletRequest request){
        //mian页面公告信息的显示
        //模拟数据
        Integer tId=null;
        Integer smId=1;
        Integer status=1;
        //根据steam流将notice进行根据时间排序
        List<Notice> notices = noticeService.selectByExampleByschool(smId, status);
        //新建一个list 取最新3条数据显示到main页面
        ArrayList<Notice> notices_main = new ArrayList<>();
        for(int j=0;j<3;j++){
            notices_main.add(notices.get(j));
        }
        request.setAttribute("notices_main",notices_main);

        return "main";
    }
    @RequestMapping("indexTwo.do")
    public String toIndexTwo(){
        return "indexTwo";
    }
    //-----------------页面跳转-------------

    @RequestMapping("form_file_upload.do")
    public String to_form_file_upload(){
        return "form_file_upload";
    }

}
