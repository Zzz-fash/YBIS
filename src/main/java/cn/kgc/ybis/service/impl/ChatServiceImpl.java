package cn.kgc.ybis.service.impl;

import cn.kgc.ybis.mapper.ContactMapper;
import cn.kgc.ybis.pojo.Contact;
import cn.kgc.ybis.pojo.ContactExample;
import cn.kgc.ybis.service.ChatService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * @author shkstart
 * @create 2020-11-26 9:44
 */
@Service
public class ChatServiceImpl implements ChatService {
    @Resource
    ContactMapper contactMapper;

    @Override
    public List<Contact> searchContactByOr(String uPhone, String tPhone) {
        ContactExample contactExample = new ContactExample();
        contactExample.createCriteria().andSenderIdEqualTo(uPhone).andReceiverIdEqualTo(tPhone);
        ContactExample.Criteria criteria = contactExample.createCriteria();
        criteria.andReceiverIdEqualTo(uPhone).andSenderIdEqualTo(tPhone);
        contactExample.or(criteria);
        contactExample.setOrderByClause("sendingtime desc");
        return contactMapper.selectByExample(contactExample);
    }

    @Override
    public List<Contact> seacherByContactPhone(String phone) {
        ContactExample example = new ContactExample();
        example.createCriteria().andReceiverIdEqualTo(phone);
        return contactMapper.selectByExample(example);
    }

}
