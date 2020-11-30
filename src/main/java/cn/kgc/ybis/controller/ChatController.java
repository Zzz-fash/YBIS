package cn.kgc.ybis.controller;

import cn.kgc.ybis.pojo.Class;
import cn.kgc.ybis.pojo.Contact;
import cn.kgc.ybis.pojo.Teacher;
import cn.kgc.ybis.pojo.User;
import cn.kgc.ybis.service.ChatService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.*;

/**
 * @author 郑佳良
 * @create 2020-11-26 9:43
 */
@Controller
public class ChatController {
    @Resource
    ChatService chatService;

    /**
     * 进入聊天，查询聊天对象，以及最后一条聊天记录
     * @param session
     * @return
     */
    @RequestMapping("contacts.do")
    public String selectContact(HttpSession session, Model model) {
        Class classes = (Class) session.getAttribute("class");
        //判断角色
        User user = (User) session.getAttribute("user");
        Teacher teacher = (Teacher) session.getAttribute("teacher");
        //查询所有接收聊天记录
        String phone = (String) session.getAttribute("phone");
        List<Contact> contacts = chatService.seacherContactByPhone(phone);
        //相关人员 (消息发送人)
        List<User> users = new ArrayList<User>();
        List<Teacher> teachers = new ArrayList<Teacher>();
        List<Contact> lastContent = new ArrayList<Contact>();
        if (user != null) {
            model.addAttribute("role", "user");
            teachers = chatService.searchTeacherByCid(classes.getcId());
            model.addAttribute("receiver", teachers);
            //最后一条消息
            for (Teacher t : teachers) {
                List<Contact> con = chatService.searchContactByOr(t.gettPhone(), phone);
                if (con != null && con.size() > 0) {
                    lastContent.add(con.get(con.size() - 1));
                } else {
                    Contact contact = new Contact();
                    contact.setContent("");
                    lastContent.add(contact);
                }
            }
            model.addAttribute("lastContent",lastContent);
        }
        if (teacher != null) {
            model.addAttribute("role", "teacher");
            users = chatService.searchUserByCid(classes.getcId());
            model.addAttribute("receiver", users);
            //最后一条消息
            for (User u : users) {
                List<Contact> con = chatService.searchContactByOr(u.getuPhone(), phone);
                if (con != null && con.size() > 0) {
                    lastContent.add(con.get(con.size() - 1));
                } else {
                    Contact contact = new Contact();
                    contact.setContent("");
                    lastContent.add(contact);
                }
            }
            model.addAttribute("lastContent", lastContent);
        }
        return "chat";
    }

    /**
     * 根据被选中用户phone,查询一对一聊天记录
     * @param phoneStr
     * @param session
     * @return
     */
    @RequestMapping("chat.do")
    @ResponseBody
    public Map<String,Object> chat(String phoneStr,HttpSession session) {
        Map<String,Object> map = new HashMap<String,Object>();
        //判断角色
        User user = (User)session.getAttribute("user");
        Teacher teacher = (Teacher)session.getAttribute("teacher");
        //获取使用用户phone，并根据聊天对象phone查询用户
        String phone = null;
        if (user != null) {
            phone = user.getuPhone();
            System.out.println("phone"+phone);
            List<Teacher> teachers = chatService.seacherTeacherByPhone(phoneStr);
            map.put("role","user");
            map.put("account",teachers.get(0));
        }
        if(teacher != null) {
            phone = teacher.gettPhone();
            List<User> users = chatService.searchUserByPhone(phoneStr);
            map.put("role","teacher");
            map.put("account",users.get(0));
        }
        //查询聊天记录
        List<Contact> contacts = chatService.searchContactByOr(phone, phoneStr);
        map.put("contacts",contacts);
        return map;
    }

    /**
     * 存储发送内容
     * @param content
     * @param rphone
     */
    @RequestMapping("addContent.do")
    public void addContent(String content,String rphone,HttpSession session){
        Date date = new Date();
        String sphone = (String)session.getAttribute("phone");
        Contact contact = new Contact(sphone,rphone,content,date,0);
        Integer result = chatService.insertContent(contact);
    }

    /**
     * 接收消息
     * @param sphone
     * @param time
     * @return
     */
    @RequestMapping("receivemessages.do")
    @ResponseBody
    public Map<String,Object> receivemessages(String sphone,String time,HttpSession session){
        Map<String,Object> map = new HashMap<String,Object>();
        System.out.println("sphone"+sphone);
        //查询聊天对象
        List<User> users = chatService.searchUserByPhone(sphone);
        List<Teacher> teachers = chatService.seacherTeacherByPhone(sphone);
        if (users != null && users.size() > 0) {
            map.put("account",users.get(0));
            map.put("role","user");
        }
        if (teachers != null && teachers.size() > 0) {
            map.put("account",teachers.get(0));
            map.put("role","teacher");
        }
        //查询接收到的最后一条记录
        String rphone = (String)session.getAttribute("phone");
        Contact contact = chatService.lastReceiveContact(sphone, rphone);
        if (contact == null){
            return null;
        }
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
        try {
            Date parse = simpleDateFormat.parse(time);
            System.out.println("time "+parse.getTime());
            System.out.println("time "+parse);
            System.out.println("time2 "+contact.getSendingtime().getTime());
            System.out.println("time2 "+contact.getSendingtime());
            if (contact.getSendingtime().getTime() - parse.getTime() > 0) {
                System.out.println("contact"+contact);
                map.put("contact",contact);
                return map;
            }
        } catch (ParseException e) {
            e.printStackTrace();
        }
        map.put("contact",null);
        return map;
    }
}
