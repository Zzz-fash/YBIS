package cn.kgc.ybis.mapper;

import cn.kgc.ybis.pojo.Dynamic_chek;
import cn.kgc.ybis.pojo.Dynamic_chekExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * 动态检查表
 */
public interface Dynamic_chekMapper {
    int countByExample(Dynamic_chekExample example);

    int deleteByExample(Dynamic_chekExample example);

    int deleteByPrimaryKey(Integer dcId);

    int insert(Dynamic_chek record);

    int insertSelective(Dynamic_chek record);

    List<Dynamic_chek> selectByExample(Dynamic_chekExample example);

    Dynamic_chek selectByPrimaryKey(Integer dcId);

    int updateByExampleSelective(@Param("record") Dynamic_chek record, @Param("example") Dynamic_chekExample example);

    int updateByExample(@Param("record") Dynamic_chek record, @Param("example") Dynamic_chekExample example);

    int updateByPrimaryKeySelective(Dynamic_chek record);

    int updateByPrimaryKey(Dynamic_chek record);
}