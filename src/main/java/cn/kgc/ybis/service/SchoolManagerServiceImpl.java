package cn.kgc.ybis.service;

import cn.kgc.ybis.mapper.School_managerMapper;
import cn.kgc.ybis.pojo.School_manager;
import cn.kgc.ybis.pojo.School_managerExample;
import com.github.pagehelper.PageInfo;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class SchoolManagerServiceImpl implements  SchoolManagerService {
@Resource
    School_managerMapper school_managerMapper;

    @Override
    public PageInfo<School_manager> selectSchool(String smPhone) {
        PageInfo<School_manager> pageInfo=null;
        if (smPhone!=null){
            School_managerExample example=new School_managerExample();
            School_managerExample.Criteria criteria=example.createCriteria();
            criteria.andSmPhoneLike("%"+smPhone+"%");
            List<School_manager> list=school_managerMapper.selectByExample(example);
            pageInfo=new PageInfo<>(list);
            return pageInfo;
        }else {
            List<School_manager> list= school_managerMapper.selectByExample(null);
            pageInfo=new PageInfo<>(list);
            return pageInfo;
        }
    }

    @Override
    public int add(School_manager school_manager) {
        return school_managerMapper.insertSelective(school_manager);
    }
}
