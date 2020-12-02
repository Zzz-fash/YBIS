package cn.kgc.ybis.service;

import cn.kgc.ybis.pojo.Dynamic;

import java.util.List;

/**
 * @author 张通
 * 动态查询
 * @time 2020年11月30日19:22:28
 */
public interface DynamicService {
    //查询动态
    public List<Dynamic> selectDynamicByExample(Dynamic dynamic);
    //插入一条动态
    public boolean insertDynamicByExample(Dynamic dynamic);
    //真实删除一条动态
    public boolean deleteDynamicByExample(Integer dId);
    //修改一条状态
    public boolean updateDynamicByExampleForDelete(Integer dId);
}
