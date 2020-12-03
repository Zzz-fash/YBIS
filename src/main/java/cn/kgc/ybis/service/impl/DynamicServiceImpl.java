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
    //查询全校的动态
    @Override
    public List<Dynamic> selectDynamicByExample(Dynamic dynamic) {
        DynamicExample dynamicExample = new DynamicExample();
        dynamicExample.createCriteria().andSmIdEqualTo(dynamic.getSmId());
        List<Dynamic> dynamics = dynamicMapper.selectByExample(dynamicExample);
        return dynamics;
    }
    //查询全班的动态
    public List<Dynamic> selectDynamicByExampleByClass(Dynamic dynamic){
        DynamicExample dynamicExample = new DynamicExample();
        dynamicExample.createCriteria().andTIdEqualTo(dynamic.gettId());
        List<Dynamic> dynamics = dynamicMapper.selectByExample(dynamicExample);
        return dynamics;
    }

    @Override
    public boolean insertDynamicByExample(Dynamic dynamic) {
        int i = dynamicMapper.insertSelective(dynamic);
        return i>0?true:false;
    }

    @Override
    public boolean deleteDynamicByExample(Integer dId) {
        int i = dynamicMapper.deleteByPrimaryKey(dId);
        return i>0?true:false;
    }
    //修改状态，0为删除，1为存在
    @Override
    public boolean updateDynamicByExampleForDelete(Integer dId) {
        Dynamic dynamic = dynamicMapper.selectByPrimaryKey(dId);
        dynamic.setStatus(0);
        int i = dynamicMapper.updateByPrimaryKey(dynamic);
        return i>0?true:false;
    }
}
