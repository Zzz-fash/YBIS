package cn.kgc.ybis.service;

import cn.kgc.ybis.pojo.Teacher;
import cn.kgc.ybis.pojo.TeacherExample;

import java.util.List;

/**
 * @author shkstart
 * @create 2020-11-26 10:13
 */
public interface TeacherService {
    List<Teacher> seacherByPhone(String phone);
}
