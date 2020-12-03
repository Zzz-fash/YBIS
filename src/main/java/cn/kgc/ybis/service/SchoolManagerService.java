package cn.kgc.ybis.service;

import cn.kgc.ybis.mapper.School_managerMapper;
import cn.kgc.ybis.pojo.School_manager;
import com.github.pagehelper.PageInfo;

import java.util.List;

public interface SchoolManagerService {
    /**
     * 根据学校编号查找
     * @return
     */
    PageInfo<School_manager> selectSchool(String smPhone);

public  int add(School_manager school_manager);
}
