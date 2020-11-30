package cn.kgc.ybis.service.impl;

import cn.kgc.ybis.mapper.ContactMapper;
import cn.kgc.ybis.pojo.ContactExample;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @author shkstart
 * @create 2020-11-26 10:21
 */
@Service
public class test {
    @Autowired
    ContactMapper contactMapper;

//    @Test
//    public void test(){
//        ContactExample example = new ContactExample();
//        example.or().andSenderIdEqualTo(1).andReceiverIdEqualTo(1);
////        System.out.println(contactMapper.selectByExample(example));
//        System.out.println(contactMapper);
//    }
}
