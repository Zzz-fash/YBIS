package cn.kgc.ybis.service.impl;

import cn.kgc.ybis.mapper.UserMapper;
import cn.kgc.ybis.pojo.User;
import cn.kgc.ybis.pojo.UserExample;
import cn.kgc.ybis.service.UserService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * @author shkstart
 * @create 2020-11-26 14:40
 */
@Service
public class UserServiceImpl implements UserService {
    @Resource
    UserMapper userMapper;

    @Override
    public List<User> searchByPhone(String phone) {
        UserExample userExample = new UserExample();
        userExample.createCriteria().andUPhoneEqualTo(phone);
        return userMapper.selectByExample(userExample);
    }
}
