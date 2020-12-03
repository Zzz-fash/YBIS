package cn.kgc.ybis.service;

import cn.kgc.ybis.mapper.ClassMapper;
import cn.kgc.ybis.mapper.UserMapper;
import cn.kgc.ybis.pojo.Class;
import cn.kgc.ybis.pojo.User;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * 于泽鹏
 */
@Service
public class UserServiceImpl implements UserService {
    /**
     * 录入学员信息
     *
     * @param user
     * @return
     */
    @Resource
    UserMapper userMapper;
    @Resource
    ClassMapper classMapper;

    @Override
    public int addUser(User user) {

        // 增加学员信息
        int i = userMapper.insertSelective(user);
        //判断如果i大于0就录入信息成功
        if (i > 0) {
            return i;
        } else {
            //0就是录入信息失败了
            return 0;
        }

    }

    /**
     * 查询班级信息 Class表
     * @return
     */
    @Override
    public List<Class> selectClass() {
        return classMapper.selectClass();
    }


}
