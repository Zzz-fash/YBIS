package cn.kgc.ybis.controller;

import cn.kgc.ybis.pojo.School;
import cn.kgc.ybis.pojo.School_manager;
import cn.kgc.ybis.service.SchoolManagerService;
import cn.kgc.ybis.service.SchoolService;
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

@Controller
@RequestMapping("/yu")
public class SchoolController {
    @Resource
    SchoolService schoolService;
    @Resource
    SchoolManagerService schoolManagerService;
        @RequestMapping("/addschools")
    public  String addschool(
                @RequestParam(value = "sName",required = false)String sName,
                @RequestParam(value = "sAddress",required = false)String sAddress,
                @RequestParam(value = "smPhone",required = false)String smPhone,
                @RequestParam(value = "smEmail",required = false)String smEmail,
                @RequestParam(value="filename",required=false) MultipartFile idPic, HttpServletRequest request
    ){
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
            //teacher.settPath(fileName);
           // @RequestParam(value = "smPath",required = false)String smPath,
        School school=new School();
        school.setsName(sName);
        school.setsAddress(sAddress);
        School_manager school_manager=new School_manager();
        school_manager.setSmPhone(smPhone);
        school_manager.setSmEmail(smEmail);
        school_manager.setSmPath(fileName);
        schoolManagerService.add(school_manager);
      school.setSmId(school_manager.getSmId());
        schoolService.add(school);
       return  "redirect:/yu/schoolmanager";
    }
@RequestMapping("/loginschool")
    public  String loginschool(){
            return  "loginschool";
}
}
