package cn.kgc.ybis.service;

import cn.kgc.ybis.pojo.User;
import cn.kgc.ybis.pojo.UserExample;

import java.util.List;

/**
 * @author shkstart
 * @create 2020-11-26 14:39
 */
public interface UserService {
    List<User> searchByPhone(String phone);
}
