package cn.kgc.ybis.controller;

import cn.kgc.ybis.pojo.Teacher;
import cn.kgc.ybis.service.TeacherService;
import org.apache.commons.io.FilenameUtils;
import org.apache.commons.lang.math.RandomUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;

/**
 * 于泽鹏
 */
@Controller
@RequestMapping("/yu")
public class TeacherController {
    /**
     * 调用TeacherService的类
     * @return
     */
    @Resource
    TeacherService teacherService;
    /*
    录入老师信息跳转页面
     */
    @RequestMapping("/toteacheradd")
    public  String toadd(){
        return  "teacheradd";
    }

    /**
     * 正式录入老师信息
     */
    @RequestMapping("/teacheradd")
    public String addteacher(Teacher teacher, @RequestParam(value="filename",required=false) MultipartFile idPic, HttpServletRequest request){
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
        teacher.settPath(fileName);
        System.out.println(fileName);
        teacherService.teacheradd(teacher);
        return  "teachersuccess";
    }
}
