package cn.kgc.ybis.mapper;

import cn.kgc.ybis.pojo.DynamicChek;
import cn.kgc.ybis.pojo.DynamicChekExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface DynamicChekMapper {
    int countByExample(DynamicChekExample example);

    int deleteByExample(DynamicChekExample example);

    int deleteByPrimaryKey(Integer dcId);

    int insert(DynamicChek record);

    int insertSelective(DynamicChek record);

    List<DynamicChek> selectByExample(DynamicChekExample example);

    DynamicChek selectByPrimaryKey(Integer dcId);

    int updateByExampleSelective(@Param("record") DynamicChek record, @Param("example") DynamicChekExample example);

    int updateByExample(@Param("record") DynamicChek record, @Param("example") DynamicChekExample example);

    int updateByPrimaryKeySelective(DynamicChek record);

    int updateByPrimaryKey(DynamicChek record);
}