package cn.kgc.ybis.mapper;

import cn.kgc.ybis.pojo.Comment;
import cn.kgc.ybis.pojo.CommentExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * 评论表
 */
public interface CommentMapper {
    int countByExample(CommentExample example);

    int deleteByExample(CommentExample example);

    int deleteByPrimaryKey(Integer comId);

    int insert(Comment record);

    int insertSelective(Comment record);

    List<Comment> selectByExample(CommentExample example);

    Comment selectByPrimaryKey(Integer comId);

    int updateByExampleSelective(@Param("record") Comment record, @Param("example") CommentExample example);

    int updateByExample(@Param("record") Comment record, @Param("example") CommentExample example);

    int updateByPrimaryKeySelective(Comment record);

    int updateByPrimaryKey(Comment record);
}