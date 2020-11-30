package cn.kgc.ybis.mapper;

import cn.kgc.ybis.pojo.School_manager;
import cn.kgc.ybis.pojo.School_managerExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * 学校管理员编号
 */
public interface School_managerMapper {
    int countByExample(School_managerExample example);

    int deleteByExample(School_managerExample example);

    int deleteByPrimaryKey(Integer smId);

    int insert(School_manager record);

    int insertSelective(School_manager record);

    List<School_manager> selectByExample(School_managerExample example);

    School_manager selectByPrimaryKey(Integer smId);

    int updateByExampleSelective(@Param("record") School_manager record, @Param("example") School_managerExample example);

    int updateByExample(@Param("record") School_manager record, @Param("example") School_managerExample example);

    int updateByPrimaryKeySelective(School_manager record);

    int updateByPrimaryKey(School_manager record);
}