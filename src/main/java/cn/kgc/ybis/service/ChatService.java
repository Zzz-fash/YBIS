package cn.kgc.ybis.service;

import cn.kgc.ybis.pojo.Contact;
import cn.kgc.ybis.pojo.ContactExample;
import cn.kgc.ybis.pojo.Teacher;
import cn.kgc.ybis.pojo.User;

import java.util.Date;
import java.util.List;

/**
 * @author shkstart
 * @create 2020-11-26 9:44
 */
public interface ChatService {
    List<Contact> searchContactByOr(String uPhone,String tPhone);

    List<Contact> seacherContactByPhone(String phone);

    List<Teacher> seacherTeacherByPhone(String phone);

    List<User> searchUserByPhone(String phone);

    List<User> searchUserByCid(Integer cid);

    List<Teacher> searchTeacherByCid(Integer cid);

    Integer insertContent(Contact contact);

    Contact lastReceiveContact(String sphone,String rphone);
}
