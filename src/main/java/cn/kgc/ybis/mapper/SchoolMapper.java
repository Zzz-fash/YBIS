package cn.kgc.ybis.mapper;

import cn.kgc.ybis.pojo.School;
import cn.kgc.ybis.pojo.SchoolExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface SchoolMapper {
    int countByExample(SchoolExample example);

    int deleteByExample(SchoolExample example);

    int deleteByPrimaryKey(Integer sId);

    int insert(School record);

    int insertSelective(School record);

    List<School> selectByExample(SchoolExample example);

    School selectByPrimaryKey(Integer sId);

    int updateByExampleSelective(@Param("record") School record, @Param("example") SchoolExample example);

    int updateByExample(@Param("record") School record, @Param("example") SchoolExample example);

    int updateByPrimaryKeySelective(School record);

    int updateByPrimaryKey(School record);
}