package cn.kgc.ybis.mapper;

import cn.kgc.ybis.pojo.Report;
import cn.kgc.ybis.pojo.ReportExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * 成绩表
 */
public interface ReportMapper {
    int countByExample(ReportExample example);

    int deleteByExample(ReportExample example);

    int deleteByPrimaryKey(Long rId);

    int insert(Report record);

    int insertSelective(Report record);

    List<Report> selectByExample(ReportExample example);

    Report selectByPrimaryKey(Long rId);

    int updateByExampleSelective(@Param("record") Report record, @Param("example") ReportExample example);

    int updateByExample(@Param("record") Report record, @Param("example") ReportExample example);

    int updateByPrimaryKeySelective(Report record);

    int updateByPrimaryKey(Report record);
}