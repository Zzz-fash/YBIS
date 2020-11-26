package cn.kgc.ybis.mapper;

import cn.kgc.ybis.pojo.SuperAdmin;
import cn.kgc.ybis.pojo.SuperAdminExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface SuperAdminMapper {
    int countByExample(SuperAdminExample example);

    int deleteByExample(SuperAdminExample example);

    int deleteByPrimaryKey(Integer saId);

    int insert(SuperAdmin record);

    int insertSelective(SuperAdmin record);

    List<SuperAdmin> selectByExample(SuperAdminExample example);

    SuperAdmin selectByPrimaryKey(Integer saId);

    int updateByExampleSelective(@Param("record") SuperAdmin record, @Param("example") SuperAdminExample example);

    int updateByExample(@Param("record") SuperAdmin record, @Param("example") SuperAdminExample example);

    int updateByPrimaryKeySelective(SuperAdmin record);

    int updateByPrimaryKey(SuperAdmin record);
}