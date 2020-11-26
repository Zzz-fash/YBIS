package cn.kgc.ybis.mapper;

import cn.kgc.ybis.pojo.SchoolManager;
import cn.kgc.ybis.pojo.SchoolManagerExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface SchoolManagerMapper {
    int countByExample(SchoolManagerExample example);

    int deleteByExample(SchoolManagerExample example);

    int deleteByPrimaryKey(Integer smId);

    int insert(SchoolManager record);

    int insertSelective(SchoolManager record);

    List<SchoolManager> selectByExample(SchoolManagerExample example);

    SchoolManager selectByPrimaryKey(Integer smId);

    int updateByExampleSelective(@Param("record") SchoolManager record, @Param("example") SchoolManagerExample example);

    int updateByExample(@Param("record") SchoolManager record, @Param("example") SchoolManagerExample example);

    int updateByPrimaryKeySelective(SchoolManager record);

    int updateByPrimaryKey(SchoolManager record);
}