package cn.kgc.ybis.controller;

import cn.kgc.ybis.pojo.Class;
import cn.kgc.ybis.pojo.User;
import cn.kgc.ybis.service.UserService;
import org.apache.commons.io.FilenameUtils;
import org.apache.commons.lang.math.RandomUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.util.List;

@Controller
@RequestMapping("yu")
public class UserController {
    @Resource
    UserService userService;

    /**
     * 录入学生信息跳转页面
     * @return
     */
    @RequestMapping("/toaadd")
    public  String toadduser(Model model){
        List<Class> classes = userService.selectClass();
        model.addAttribute("classs",classes);
        return "useradd";
    }

    /**
     * 跳转页面之后就开始录入学员信息
     * @param user
     * @return
     */
    @RequestMapping("/add")
    public  String userAdd(User user, @RequestParam(value="filename",required=false) MultipartFile idPic, HttpServletRequest request){
        String fileName ="";
        if (idPic!=null) {
            //获取上传路径
            String path = request.getSession().getServletContext().getRealPath("static"+ File.separator+"upload");
            //获取原文件名
            String oldFileName=idPic.getOriginalFilename();
            //获取扩展名
            String prefix= FilenameUtils.getExtension(oldFileName);//原文件后缀
            //生成新文件名
            fileName = System.currentTimeMillis()+ RandomUtils.nextInt(1000000)+"_Personal."+prefix;
            //封装文件对象
            File targetFile = new File(path, fileName);
            try {
                //实现上传
                idPic.transferTo(targetFile);
            } catch (IllegalStateException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            } catch (IOException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
        }
        user.setuPath(fileName);
        System.out.println(fileName);
        userService.addUser(user);
        return  "useraddsuccess";
    }
}
