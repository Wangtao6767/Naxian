package com.naxian.controller.recruit;


import com.naxian.pojo.Company;
import com.naxian.pojo.Recruit;

import com.naxian.service.index.IndexService;
import com.naxian.service.recruit.ReleaseRecruitService;
import com.naxian.util.JsonResult;
import com.naxian.vo.index.IndexVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.List;


/**
 * Created by Administrator on 2019/10/8.
 */
@Controller
public class ReleaseRecruitController {
    @Autowired
    private ReleaseRecruitService releaseRecruitService;
    @Autowired
    private IndexService indexService;
   //获得同一公司的招聘信息和公司信息
    @GetMapping("recruit/{recruitId}")
        public ModelAndView indexGet(@PathVariable("recruitId") int recruitId,HttpServletRequest request){
            List<Recruit>  recruitList= releaseRecruitService.getRecruitByRecruitId(recruitId);
            Company company = releaseRecruitService.getCompanyByRecruitId(recruitId);
            System.out.println("re = " + recruitList.toString());
            ModelAndView modelAndView = new ModelAndView();
            modelAndView.addObject("recruitList",recruitList);
            modelAndView.addObject("company",company);
            modelAndView.setViewName("indexAndSearch/company");
            return modelAndView;
        }



    //根据招聘id获得公司的招聘信息和公司信息
    @GetMapping("search/recruit/{recruitId}")
    public ModelAndView getRecruitInfoByRecruitId(@PathVariable("recruitId") int recruitId,HttpServletRequest request){
        Recruit recruit= releaseRecruitService.getByRecruitId(recruitId);
        Company company = releaseRecruitService.getCompanyByRecruitId(recruitId);
        System.out.println("re = " + recruit.toString());
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("recruit",recruit);
        modelAndView.addObject("company",company);
        modelAndView.setViewName("indexAndSearch/jobApplication");
        return modelAndView;
    }


//添加招聘
    @PostMapping("/addRecruit")
    public ModelAndView add(HttpServletRequest request){
        //接受jsp里面的数据input里面的
        String x = request.getParameter("jobname");
        System.out.println("------------"+x);
        String neednum = request.getParameter("jobneednum");
        System.out.println("*********"+neednum);
        Integer jobneednum = Integer.valueOf(neednum);
        String salary = request.getParameter("Salary");
        String workAddress = request.getParameter("WorkAddress");
        String keyWord = request.getParameter("KeyWord");
        String experience = request.getParameter("experience");
        String study = request.getParameter("study");
        String desc = request.getParameter("desc");
        Recruit recruit = new Recruit();
       /* recruit.setIndustryId(id);*/
        recruit.setX(x);  //x = jobname
        recruit.setRecPerNum(jobneednum);
        recruit.setRecJobSalary(salary);
        recruit.setRecJobAddress(workAddress);
        recruit.setKwd(keyWord);
        recruit.setRecJobExperience(experience);
        recruit.setEducation(study);
        recruit.setJobIntroduction(desc);
        System.out.println(recruit);
        releaseRecruitService.add(recruit);
        ModelAndView mav = new ModelAndView();

        mav.setViewName("company/companyIndex");
        return mav;
    }


}
