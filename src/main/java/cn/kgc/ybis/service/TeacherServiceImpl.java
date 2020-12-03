package cn.kgc.ybis.service;

import cn.kgc.ybis.mapper.TeacherMapper;
import cn.kgc.ybis.pojo.Teacher;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * 于泽鹏
 */
@Service
public class TeacherServiceImpl implements  TeacherService {
    @Resource
    TeacherMapper teacherMapper;
    @Override
    public int teacheradd(Teacher teacher) {
        /**
         * 如果大于1 就录入成功
         */
        int list=teacherMapper.insertSelective(teacher);
        if (list>0){
            //录入成功
            return  list;
        }else
            {
                //录入失败
                return -1;
            }

    }
}
