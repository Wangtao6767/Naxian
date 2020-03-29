package com.naxian.controller.company;

import com.naxian.pojo.Company;
import com.naxian.service.company.CompanyService;
import com.naxian.util.JsonResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import javax.servlet.http.HttpServletRequest;

/**
 * Created by Administrator on 2019/10/8.
 */
@Controller
public class CompanyController {
    @Autowired
    private CompanyService companyService;

    //根据公司id获得公司信息
    @GetMapping("company/{companyId}")
    public ModelAndView getByCompanyId(@PathVariable("companyId") int companyId ,HttpServletRequest request){
        Company company = companyService.getById(companyId);
        System.out.println("com:"+company);
        ModelAndView mav = new ModelAndView();
        mav.addObject("company",company);
        mav.setViewName("company/companyIndex");
        if (company != null){
            request.getSession().setAttribute("company",company);
        }
        return mav;
    }


    //登录
    @RequestMapping("company/login")
    @ResponseBody
    public JsonResult loginByUserAndPwd(Long companyTelno, String pwd, HttpServletRequest request) {
        System.out.println("你输入的companyTelno=" + companyTelno);
        System.out.println("你输入的pwd=" + pwd);
        Company company =  companyService.loginByTelno(companyTelno, pwd);
        if(company !=null) {
            request.getSession().setAttribute("company",company );
            return  new JsonResult(1,"登录成功",company);
        }else
            return  new JsonResult(0,"登录失败","企业登录账号信息有误，请重新输入");

    }
}
