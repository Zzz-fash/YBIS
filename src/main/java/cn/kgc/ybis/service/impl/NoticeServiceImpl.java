package cn.kgc.ybis.service.impl;

import cn.kgc.ybis.mapper.NoticeMapper;
import cn.kgc.ybis.pojo.Notice;
import cn.kgc.ybis.pojo.NoticeExample;
import cn.kgc.ybis.service.NoticeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;

@Service
public class NoticeServiceImpl implements NoticeService{
    @Autowired
    NoticeMapper nm;
    @Override
    public List<Notice> selectByExample(Integer tId, Integer smId,Integer status) {
        NoticeExample noticeExample = new NoticeExample();
        if(tId!=null&&smId!=null&&status==1){
            noticeExample.createCriteria().andTIdEqualTo(tId).andSmIdEqualTo(smId);
        }
        if(tId==null||tId==0){
            if(status==1){
                noticeExample.createCriteria().andSmIdEqualTo(smId);
            }
        }
        List<Notice> notices = nm.selectByExample(noticeExample);
        return notices;
    }

    @Override
    public Boolean insertNotice(Notice notice) {
        int i = nm.insertSelective(notice);
        return i>0?true:false;
    }
}
