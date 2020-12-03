package cn.kgc.ybis.controller;

import cn.kgc.ybis.pojo.School_manager;
import cn.kgc.ybis.service.SchoolManagerService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;

@Controller
@RequestMapping("/yu")
public class SchoolManagerController {

    @Resource
    SchoolManagerService schoolManagerService;
    @RequestMapping("/schoolmanager")
    public String standardsSelectAll(
            @RequestParam(value = "pageNum", defaultValue = "1", required = false) Integer pageNum,
            @RequestParam(value = "smPhone", defaultValue = "", required = false)  String smPhone,
            Model model
    ) {
        PageHelper.startPage(pageNum,3);
        PageInfo<School_manager> pageInfo=schoolManagerService.selectSchool(smPhone);
        model.addAttribute("pageInfo",pageInfo);
        model.addAttribute("smPhone",smPhone);
        return "schoolmanager";
    }


}
