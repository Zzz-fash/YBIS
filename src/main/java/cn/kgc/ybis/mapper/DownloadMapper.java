package cn.kgc.ybis.mapper;

import cn.kgc.ybis.pojo.Download;
import cn.kgc.ybis.pojo.DownloadExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * 成绩下载表
 */
public interface DownloadMapper {
    int countByExample(DownloadExample example);

    int deleteByExample(DownloadExample example);

    int deleteByPrimaryKey(Long downId);

    int insert(Download record);

    int insertSelective(Download record);

    List<Download> selectByExample(DownloadExample example);

    Download selectByPrimaryKey(Long downId);

    int updateByExampleSelective(@Param("record") Download record, @Param("example") DownloadExample example);

    int updateByExample(@Param("record") Download record, @Param("example") DownloadExample example);

    int updateByPrimaryKeySelective(Download record);

    int updateByPrimaryKey(Download record);
}