package cn.kgc.ybis.mapper;

import cn.kgc.ybis.pojo.Class;
import cn.kgc.ybis.pojo.ClassExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * 班级表
 */
public interface ClassMapper {
    int countByExample(ClassExample example);

    int deleteByExample(ClassExample example);

    int deleteByPrimaryKey(Integer cId);

    int insert(Class record);

    int insertSelective(Class record);

    List<Class> selectByExample(ClassExample example);

    Class selectByPrimaryKey(Integer cId);

    int updateByExampleSelective(@Param("record") Class record, @Param("example") ClassExample example);

    int updateByExample(@Param("record") Class record, @Param("example") ClassExample example);

    int updateByPrimaryKeySelective(Class record);

    int updateByPrimaryKey(Class record);
    /**
     * 于泽鹏  这是在学生表里查询Class_id 找name
     */
    public  List<Class> selectClass();

}