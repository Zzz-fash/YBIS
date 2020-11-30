package cn.kgc.ybis.service.impl;

import cn.kgc.ybis.mapper.ContactMapper;
import cn.kgc.ybis.mapper.TeacherMapper;
import cn.kgc.ybis.mapper.Teacher_classMapper;
import cn.kgc.ybis.mapper.UserMapper;
import cn.kgc.ybis.pojo.*;
import cn.kgc.ybis.service.ChatService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * @author shkstart
 * @create 2020-11-26 9:44
 */
@Service
public class ChatServiceImpl implements ChatService {
    @Resource
    ContactMapper contactMapper;
    @Resource
    TeacherMapper teacherMapper;
    @Resource
    UserMapper userMapper;
    @Resource
    Teacher_classMapper teacher_classMapper;


    /**
     * 根据双方手机号查询所有聊天记录
     * @param uPhone
     * @param tPhone
     * @return
     */
    @Override
    public List<Contact> searchContactByOr(String uPhone, String tPhone) {
        ContactExample contactExample = new ContactExample();
        contactExample.createCriteria().andSenderIdEqualTo(uPhone).andReceiverIdEqualTo(tPhone);
        ContactExample.Criteria criteria = contactExample.createCriteria();
        criteria.andReceiverIdEqualTo(uPhone).andSenderIdEqualTo(tPhone);
        contactExample.or(criteria);
        contactExample.setOrderByClause("sendingtime");
        return contactMapper.selectByExample(contactExample);
    }

    /**
     * 根据单个手机号查询接受者聊天记录
     * @param phone
     * @return
     */
    @Override
    public List<Contact> seacherContactByPhone(String phone) {
        ContactExample example = new ContactExample();
        example.createCriteria().andReceiverIdEqualTo(phone);
        return contactMapper.selectByExample(example);
    }

    /**
     * 根据手机号查老师
     * @param phone
     * @return
     */
    @Override
    public List<Teacher> seacherTeacherByPhone(String phone) {
        TeacherExample teacherExample = new TeacherExample();
        teacherExample.createCriteria().andTPhoneEqualTo(phone);
        return teacherMapper.selectByExample(teacherExample);
    }

    /**
     * 根据手机号查用户
     * @param phone
     * @return
     */
    @Override
    public List<User> searchUserByPhone(String phone) {
        UserExample userExample = new UserExample();
        userExample.createCriteria().andUPhoneEqualTo(phone);
        return userMapper.selectByExample(userExample);
    }

    /**
     * 根据班级号查用户
     * @param cid
     * @return
     */
    @Override
    public List<User> searchUserByCid(Integer cid) {
        UserExample example = new UserExample();
        example.createCriteria().andCIdEqualTo(cid);
        return userMapper.selectByExample(example);
    }

    /**
     * 根据班级号查老师
     * @param cid
     * @return
     */
    @Override
    public List<Teacher> searchTeacherByCid(Integer cid) {
        List<Teacher> teachers = new ArrayList<Teacher>();
        Teacher_classExample example = new Teacher_classExample();
        example.createCriteria().andCIdEqualTo(cid);
        List<Teacher_class> teacher_classes = teacher_classMapper.selectByExample(example);
        for (Teacher_class teacher_class : teacher_classes) {
            teachers.add(teacherMapper.selectByPrimaryKey(teacher_class.gettId()));
        }
        return teachers;
    }

    /**
     * 添加记录
     * @param contact
     * @return
     */
    @Override
    public Integer insertContent(Contact contact) {
        return contactMapper.insertSelective(contact);
    }

    /**
     * 查询数据库中接收到的最后一条消息
     * @param sphone
     * @param rphone
     * @return
     */
    @Override
    public Contact lastReceiveContact(String sphone, String rphone) {
        ContactExample example = new ContactExample();
        example.createCriteria().andSenderIdEqualTo(sphone).andReceiverIdEqualTo(rphone);
        example.setOrderByClause("sendingtime desc");
        List<Contact> contacts = contactMapper.selectByExample(example);
        if(contacts != null && contacts.size() > 0){
            return contacts.get(0);
        }
        return null;
    }

}
