package cn.kgc.ybis.mapper;

import cn.kgc.ybis.pojo.Super_admin;
import cn.kgc.ybis.pojo.Super_adminExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * 超级管理员
 */
public interface Super_adminMapper {
    int countByExample(Super_adminExample example);

    int deleteByExample(Super_adminExample example);

    int deleteByPrimaryKey(Integer saId);

    int insert(Super_admin record);

    int insertSelective(Super_admin record);

    List<Super_admin> selectByExample(Super_adminExample example);

    Super_admin selectByPrimaryKey(Integer saId);

    int updateByExampleSelective(@Param("record") Super_admin record, @Param("example") Super_adminExample example);

    int updateByExample(@Param("record") Super_admin record, @Param("example") Super_adminExample example);

    int updateByPrimaryKeySelective(Super_admin record);

    int updateByPrimaryKey(Super_admin record);
}