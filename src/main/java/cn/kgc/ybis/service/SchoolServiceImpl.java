package cn.kgc.ybis.service;

import cn.kgc.ybis.mapper.SchoolMapper;
import cn.kgc.ybis.mapper.School_managerMapper;
import cn.kgc.ybis.pojo.School;
import cn.kgc.ybis.pojo.School_manager;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
@Service
public class SchoolServiceImpl implements SchoolService {
    @Resource
    SchoolMapper schoolMapper;
    @Override
    public int add(School school) {
        int i = schoolMapper.insertSelective(school);
        return 0;
    }


}
