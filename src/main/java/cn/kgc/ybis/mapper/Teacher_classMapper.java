package cn.kgc.ybis.mapper;

import cn.kgc.ybis.pojo.Teacher_class;
import cn.kgc.ybis.pojo.Teacher_classExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * 老师班级连接表
 */
public interface Teacher_classMapper {
    int countByExample(Teacher_classExample example);

    int deleteByExample(Teacher_classExample example);

    int deleteByPrimaryKey(Integer tcId);

    int insert(Teacher_class record);

    int insertSelective(Teacher_class record);

    List<Teacher_class> selectByExample(Teacher_classExample example);

    Teacher_class selectByPrimaryKey(Integer tcId);

    int updateByExampleSelective(@Param("record") Teacher_class record, @Param("example") Teacher_classExample example);

    int updateByExample(@Param("record") Teacher_class record, @Param("example") Teacher_classExample example);

    int updateByPrimaryKeySelective(Teacher_class record);

    int updateByPrimaryKey(Teacher_class record);
}