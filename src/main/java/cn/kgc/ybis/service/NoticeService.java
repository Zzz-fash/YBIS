package cn.kgc.ybis.service;

import cn.kgc.ybis.pojo.Notice;

import java.util.List;

/**
 * @author zt
 * 公告的功能
 * @time 2020年11月26日14:20:46
 */
public interface NoticeService {
    //根据条件查看公告查看所有公告
    public List<Notice> selectByExample(Integer tId,Integer smId,Integer status);
    //添加公告
    public Boolean insertNotice(Notice notice);

}
