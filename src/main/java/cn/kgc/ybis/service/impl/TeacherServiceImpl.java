package cn.kgc.ybis.service.impl;

import cn.kgc.ybis.mapper.TeacherMapper;
import cn.kgc.ybis.pojo.Teacher;
import cn.kgc.ybis.pojo.TeacherExample;
import cn.kgc.ybis.service.TeacherService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * @author shkstart
 * @create 2020-11-26 10:13
 */
@Service
public class TeacherServiceImpl implements TeacherService {
    @Resource
    TeacherMapper teacherMapper;

    @Override
    public List<Teacher> seacherByPhone(String phone) {
        TeacherExample teacherExample = new TeacherExample();
        teacherExample.createCriteria().andTPhoneEqualTo(phone);
        return teacherMapper.selectByExample(teacherExample);
    }
}
