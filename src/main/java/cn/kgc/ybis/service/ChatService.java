package cn.kgc.ybis.service;

import cn.kgc.ybis.pojo.Contact;
import cn.kgc.ybis.pojo.ContactExample;

import java.util.List;

/**
 * @author shkstart
 * @create 2020-11-26 9:44
 */
public interface ChatService {
    List<Contact> searchContactByOr(String uPhone,String tPhone);

    List<Contact> seacherByContactPhone(String phone);
}
