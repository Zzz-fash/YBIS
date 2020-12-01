package cn.kgc.ybis.service.impl;

import cn.kgc.ybis.mapper.DynamicMapper;
import cn.kgc.ybis.pojo.Dynamic;
import cn.kgc.ybis.pojo.DynamicExample;
import cn.kgc.ybis.service.DynamicService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import java.util.List;
@Controller
public class DynamicServiceImpl implements DynamicService {
    @Autowired
    DynamicMapper dynamicMapper;

    @Override
    public List<Dynamic> selectDynamicByExample(Dynamic dynamic) {
        DynamicExample dynamicExample = new DynamicExample();
        dynamicExample.createCriteria().andSmIdEqualTo(dynamic.getSmId());
        List<Dynamic> dynamics = dynamicMapper.selectByExample(dynamicExample);
        return dynamics;
    }

    @Override
    public boolean insertDynamicByExample(Dynamic dynamic) {
        int i = dynamicMapper.insertSelective(dynamic);
        return i>0?true:false;
    }
}
