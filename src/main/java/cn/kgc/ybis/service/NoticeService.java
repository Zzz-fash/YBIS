package cn.kgc.ybis.service;

import cn.kgc.ybis.pojo.Notice;

import java.util.List;

/**
 * @author zt
 * 公告的功能
 * @time 2020年11月26日14:20:46
 */
public interface NoticeService {
    //根据smId条件查看学校公告
    public List<Notice> selectByExampleByschool(Integer smId,Integer status);
    //根据条件查询本班级所有的公告
    public List<Notice> selectByExampleByClass(Integer tId,Integer status);
    //添加公告
    public Boolean insertNotice(Notice notice);

}
