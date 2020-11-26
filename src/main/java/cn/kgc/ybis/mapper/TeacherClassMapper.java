package cn.kgc.ybis.mapper;

import cn.kgc.ybis.pojo.TeacherClass;
import cn.kgc.ybis.pojo.TeacherClassExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface TeacherClassMapper {
    int countByExample(TeacherClassExample example);

    int deleteByExample(TeacherClassExample example);

    int deleteByPrimaryKey(Integer tcId);

    int insert(TeacherClass record);

    int insertSelective(TeacherClass record);

    List<TeacherClass> selectByExample(TeacherClassExample example);

    TeacherClass selectByPrimaryKey(Integer tcId);

    int updateByExampleSelective(@Param("record") TeacherClass record, @Param("example") TeacherClassExample example);

    int updateByExample(@Param("record") TeacherClass record, @Param("example") TeacherClassExample example);

    int updateByPrimaryKeySelective(TeacherClass record);

    int updateByPrimaryKey(TeacherClass record);
}