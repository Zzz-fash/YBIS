package cn.kgc.ybis.controller;

import cn.kgc.ybis.pojo.*;
import cn.kgc.ybis.pojo.Class;
import cn.kgc.ybis.service.ChatService;
import cn.kgc.ybis.service.TeacherService;
import cn.kgc.ybis.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;
import java.util.stream.Stream;

/**
 * @author 郑佳良
 * @create 2020-11-26 9:43
 */
@Controller
public class ChatController {
    @Resource
    ChatService chatService;
    @Resource
    UserService userService;
    @Resource
    TeacherService teacherService;

    /**
     * 进入聊天，查询聊天对象，以及最后一条聊天记录
     *
     * @param session
     * @return
     */
    @RequestMapping("contacts.do")
    public String selectContact(HttpSession session, Model model) {
        //判断角色
        User user = (User) session.getAttribute("user");
        Teacher teacher = (Teacher) session.getAttribute("teacher");
        //查询所有接收聊天记录
        String phone = (String) session.getAttribute("phone");
        List<Contact> contacts = chatService.seacherByContactPhone(phone);
        //相关人员 (消息发送人)
        List<User> users = new ArrayList<User>();
        List<Teacher> teachers = new ArrayList<Teacher>();
        List<Contact> lastContent = new ArrayList<Contact>();
        if (user != null) {
            model.addAttribute("role","user");
            for (Contact contact : contacts) {
                teachers.add(teacherService.seacherByPhone(contact.getSenderId()).get(0));
            }
            teachers = teachers.stream().distinct().collect(Collectors.toList());
            model.addAttribute("receiver",teachers);
            //最后一条消息
            for (Teacher t : teachers) {
                List<Contact> con = chatService.searchContactByOr(t.gettPhone(), phone);
                lastContent.add(con.get(0));
            }
        }
        if (teacher != null) {
            model.addAttribute("role","teacher");
            Class classes = (Class)session.getAttribute("class");
            for (Contact contact : contacts) {
                users.add(userService.searchByPhone(contact.getSenderId()).get(0));
            }
            //去重
            users = users.stream().distinct().collect(Collectors.toList());
            model.addAttribute("receiver",users);
            System.out.println(users);
            //最后一条消息
            System.out.println("classes.getcId()"+classes.getcId());
            for (User u : users) {
                System.out.println("u.getcID"+u.getcId());
                if (u.getcId() == classes.getcId()) {
                    List<Contact> con = chatService.searchContactByOr(u.getuPhone(), phone);
                    lastContent.add(con.get(0));
                }
            }
            System.out.println("kuhasfk"+lastContent);
            model.addAttribute("lastContent",lastContent);
        }
        return "chat";
    }
}
