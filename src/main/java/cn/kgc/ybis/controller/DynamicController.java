package cn.kgc.ybis.controller;

import cn.kgc.ybis.pojo.Dynamic;
import cn.kgc.ybis.service.DynamicService;
import org.apache.commons.io.FilenameUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.List;
import java.util.Random;

@Controller
public class DynamicController {
    @Autowired
    DynamicService dynamicService;
    @RequestMapping("")
    public String selectDynamicByExample(){

        return "";
    }
    //添加一条动态
    @RequestMapping("DynamicInsert.do")
    public String insertDynamicByExample(HttpServletRequest request, @RequestParam("dImg") MultipartFile dImg, HttpServletResponse response, HttpSession session){
        //模拟数据
        Dynamic dynamic = new Dynamic();
        //需要从session中获取判断
        dynamic.settId(1);
        dynamic.setuId(1);
        dynamic.setComId(1);
        dynamic.setSmId(1);
        dynamic.setdContent(request.getParameter("dContent"));
        dynamic.setdDate(new Date());
        dynamic.setdName(request.getParameter("dName"));
        dynamic.setStatus(1);
        //上传文件
        String realPath = session.getServletContext().getRealPath("images/upload_dynamic");
        String oldName = dImg.getOriginalFilename();
        String extension = FilenameUtils.getExtension(oldName);
        String newName = System.currentTimeMillis() + new Random().nextInt(1000) + "_dImg." + extension;
        File file = new File(realPath, newName);
        try {
            dImg.transferTo(file);
            request.setAttribute("msg","文件上传成功！");
            dynamic.setdImg(newName);
            request.setAttribute("dImg",newName);
        } catch (IOException e) {
            e.printStackTrace();
        }
        boolean b = dynamicService.insertDynamicByExample(dynamic);
        return "Dynamic";
    }
    //跳转首页
    @RequestMapping("Dynamic.do")
    public String toDynamic(){
        return "Dynamic";
    }
    //跳转到全部动态列表
    @RequestMapping("blog-grid-all.do")
    public String blog(HttpServletRequest request){
        Dynamic dynamic = new Dynamic();
        dynamic.setSmId(1);
        List<Dynamic> dynamics = dynamicService.selectDynamicByExample(dynamic);
        System.out.println(dynamics.size()+"---------------------------------------------------------------");
        request.setAttribute("dynamics",dynamics);
        return "blog-grid-all";
    }
    //跳转班级动态列表
    @RequestMapping("blog-grid-class.do")
    public String blog_class(HttpServletRequest request){
       //模拟数据
        Dynamic dynamic = new Dynamic();
        dynamic.settId(1);

        List<Dynamic> dynamics = dynamicService.selectDynamicByExampleByClass(dynamic);
        System.out.println(dynamics.size()+"---------------------------------------------------------------");
        request.setAttribute("dynamics",dynamics);
        return "blog-grid-class";
    }

    //删除动态
    @RequestMapping("Dynamic-delete.do")
    public String dynamicDelete(int dId, HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
        System.out.println(dId);
        boolean b = dynamicService.updateDynamicByExampleForDelete(dId);
        if (b){
            request.getRequestDispatcher("blog-grid-all.do").forward(request,response);
        }
        return "blog-grid-all";
    }


}
