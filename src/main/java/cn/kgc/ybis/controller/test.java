package cn.kgc.ybis.controller;

import cn.kgc.ybis.mapper.ContactMapper;
import cn.kgc.ybis.pojo.Teacher;
import cn.kgc.ybis.pojo.User;
import cn.kgc.ybis.pojo.Class;
import cn.kgc.ybis.service.ChatService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

@Controller
public class test {
    @Resource
    ContactMapper contactMapper;
    @Resource
    ChatService chatService;

    @RequestMapping("login2.do")
    public String loginJump(HttpSession session){
        Class c = new  Class();
        c.setcId(1);
        Teacher teacher = new Teacher();
        teacher.settPhone("1");
        teacher.settName("张三1");
        teacher.settPath("1");
        session.setAttribute("teacher",teacher);
        session.setAttribute("phone","1");
        session.setAttribute("class",c);
        return "forward:/contacts.do";
    }

    @RequestMapping("login1.do")
    public String login2(HttpSession session){
        Class c = new  Class();
        c.setcId(1);
        User user = new User();
        user.setuPhone("2");
        user.setuName("郭鹏生2");
        user.setuPath("1");
        session.setAttribute("user",user);
        session.setAttribute("phone","2");
        session.setAttribute("class",c);
        return "forward:/contacts.do";
    }

//    @RequestMapping("lll.do")
//    public void lll(){
//        ContactExample example = new ContactExample();
//        example.or().andReceiverIdEqualTo(1);
//        example.or().andSenderIdEqualTo(1);
//        System.out.println(chatService.selectByExample(example));
//    }

    @RequestMapping("index2.do")
    public String test02(){
        return "index";
    }

    @RequestMapping("index3.do")
    public String test03(){
      return "superManager";
    }

}
