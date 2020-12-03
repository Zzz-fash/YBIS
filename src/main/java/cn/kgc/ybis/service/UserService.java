package cn.kgc.ybis.service;

import cn.kgc.ybis.pojo.Class;
import cn.kgc.ybis.pojo.User;

import java.util.List;

/**
 * 于泽鹏
 */
public interface UserService {
    /**
     * 录入学生
     */
    public  int addUser(User user);
/***
 * 查询class表的c_name
 */
public List<Class> selectClass();


}
