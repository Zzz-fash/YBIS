package cn.kgc.ybis.controller;

import cn.kgc.ybis.pojo.*;
import cn.kgc.ybis.pojo.Class;
import cn.kgc.ybis.service.ReportService;
import com.github.pagehelper.PageInfo;
import com.sun.deploy.net.HttpResponse;
import org.apache.commons.io.FilenameUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Random;

@Controller
public class ReportController {
    @Autowired
    ReportService reportService;
    private SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd hh-mm-ss");
    @RequestMapping("/selectClass")
    public String selectClass( Model model,HttpSession session){
        List<Class> classes = reportService.selectClass(1);
        session.setAttribute("classes",classes);
        return "teacherReport";
    }
    @RequestMapping("/isTM")
    public String isTM(Model model,Integer cId,HttpSession session){
        Boolean tm = reportService.isTeacherManager(1, cId);
        session.setAttribute("tm",tm);
        session.setAttribute("cId",cId);
        return "forward:page";
    }
    @RequestMapping("/page")
    public String page(String likename,Model model,Integer pageNum,Integer pageSize,HttpSession session){
        Integer cId = (Integer) session.getAttribute("cId");
        String likename1 ="";
        if (likename!=null){
            likename1 = likename;
            model.addAttribute("likename",likename1);
        }
        Integer pageNum1 =1;
        if (pageNum!=null){
            pageNum1 = pageNum;
        }
        Integer pageSize1 = 3;
        if (pageSize!=null){
            pageSize1 = pageSize;
        }
        PageInfo<Download> pageInfo = reportService.reportPage(cId, likename1, pageNum1, pageSize1);
        if (pageInfo.getList()==null || pageInfo.getList().size()<=0){
            model.addAttribute("msg","对不起，没有符合条件的查询");
        }
        model.addAttribute("cId",cId);
        model.addAttribute("pageInfo",pageInfo);
        return "reportAll";
    }
    @RequestMapping("/add")
    public String add(Model model, String title, Integer cId, MultipartFile idpic, HttpSession session){
        //获取文件上传路径
        String realPath = session.getServletContext().getRealPath("/excel/");
        //获取上传文件原名
        String oldName = idpic.getOriginalFilename();
        //获取文件拓展名
        String extension = FilenameUtils.getExtension(oldName);
        //验证文件格式
        List<String> prefixs = new ArrayList<>();
        prefixs.add("xlsx");
        if (prefixs.contains(extension)==false){
            model.addAttribute("uploadFileError"," * 上传图片格式不正确");
            return "forward:page";
        }
        //生成文件新名称
        String newName = "createTime_"+simpleDateFormat.format(new Date())+"_"+new Random().nextInt(100000)+"_cId_"+cId+"_"+title+"."+ extension;
        //封装File对象
        File file = new File(realPath,newName);
        //实现上传
        try {
            idpic.transferTo(file);
            model.addAttribute("msg","文件上传成功");
            model.addAttribute("newName",newName);
        } catch (IOException e) {
            e.printStackTrace();
        }
        return "forward:write?newName="+newName;
    }
    //下载模板
    //并更新
    @RequestMapping("copy")
    @ResponseBody
    public void copy(HttpServletRequest request,HttpServletResponse response,Integer cId){
        String fileName = "模板.xlsx";
        //获取文件路径
        String realPath = request.getServletContext().getRealPath("excel/");
        //修改模板
        reportService.excelTemplate(cId,realPath+fileName);
        //封装File对象
        File file = new File(realPath,fileName);
        //设置响应类型  ==》 告诉浏览器当前是下载操作，我要下载东西
        response.setContentType("application/x-msdownload");//文件HTML类型可改
        //设置下载时文件的显示类型(即文件名称-后缀)   ex：txt为文本类型
        response.setHeader("Content-Disposition", "attachment;filename=" +fileName);
        //下载文件：将一个路径下的文件数据转到一个输出流中，也就是把服务器文件通过流写(复制)到浏览器端
        try {
            Files.copy(file.toPath(),response.getOutputStream());
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
    //excel成绩写入数据库
    @RequestMapping("/write")
    public String write(HttpServletRequest request,HttpSession session,String newName,String title){
        //获取文件上传路径
        String realPath = session.getServletContext().getRealPath("excel/");
        String pathAll = realPath + newName;
        reportService.write(pathAll,title);
        Boolean tm = (Boolean) session.getAttribute("tm");

        return "forward:page?tm="+tm;
    }
    //批量删除
    @RequestMapping("deleteAll")
    public String deleteAll(String idstr,Model model){
        String[] split = idstr.split(",");
        List<Integer> list = new ArrayList<>();
        for (String s : split) {
            System.out.println( s );
            list.add(Integer.parseInt(s));
        }
        Boolean deleteAll = reportService.deleteAll(list);
        if (!deleteAll){
            model.addAttribute("msg","删除失败");
        }
        return "forward:page";
    }
    //ajax模糊查询学生姓名
    @RequestMapping("ajaxUserName")
    @ResponseBody
    public List<User> ajaxUserName(String name,HttpSession session){
        Integer cId = (Integer) session.getAttribute("cId");
        UserExample example = new UserExample();
        example.createCriteria().andCIdEqualTo(cId).andUNameLike(name);
        List<User> users = reportService.ajaxUserName(example);
        return users;
    }
}
