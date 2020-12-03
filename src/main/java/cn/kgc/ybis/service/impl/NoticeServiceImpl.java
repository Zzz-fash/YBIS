package cn.kgc.ybis.service.impl;

import cn.kgc.ybis.mapper.NoticeMapper;
import cn.kgc.ybis.pojo.Notice;
import cn.kgc.ybis.pojo.NoticeExample;
import cn.kgc.ybis.service.NoticeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;
import java.util.stream.Collectors;

/**
 * @author zt
 * 公告的功能
 * @time 2020年11月27日14:40:28
 */
@Service
public class NoticeServiceImpl implements NoticeService{
    @Autowired
    NoticeMapper nm;
    //根据smId条件查看学校公告
    @Override
    public List<Notice> selectByExampleByschool( Integer smId,Integer status) {
        NoticeExample noticeExample = new NoticeExample();
        noticeExample.createCriteria().andSmIdEqualTo(smId).andStatusEqualTo(status);
        List<Notice> notices = nm.selectByExample(noticeExample);
        List<Notice> noticeList = notices.stream().sorted((e1, e2) -> {
                    int compareTo = e1.getnDate().compareTo(e2.getnDate());
                    return -compareTo;
                }
        ).collect(Collectors.toList());
        return noticeList;
    }
    //根据tId条件查询本班级所有的公告
    @Override
    public List<Notice> selectByExampleByClass(Integer tId, Integer status) {
        NoticeExample noticeExample = new NoticeExample();
        noticeExample.createCriteria().andTIdEqualTo(tId).andStatusEqualTo(status);
        List<Notice> notices = nm.selectByExample(noticeExample);
        List<Notice> noticeList = notices.stream().sorted((e1, e2) -> {
                    int compareTo = e1.getnDate().compareTo(e2.getnDate());
                    return -compareTo;
                }
        ).collect(Collectors.toList());
        return noticeList;
    }

    //添加一条公告
    @Override
    public Boolean insertNotice(Notice notice) {
        int i = nm.insertSelective(notice);
        return i>0?true:false;
    }
}
