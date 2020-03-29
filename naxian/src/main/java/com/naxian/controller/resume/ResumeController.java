package com.naxian.controller.resume;

import com.naxian.mapper.EducationMapper;
import com.naxian.mapper.PersonsMapper;
import com.naxian.mapper.ResumesMapper;
import com.naxian.mapper.WorkexperienceMapper;
import com.naxian.pojo.*;
import com.naxian.service.person.ResumesService;
import com.naxian.service.resumeWrite.WriteService;
import com.naxian.util.DateUtil;
import com.naxian.util.JsonResult;
import com.naxian.vo.writeResume.WriteVo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.text.ParseException;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class ResumeController {
    @Autowired
    private ResumesService resumesService;
    @Autowired
    private WriteService writeService;
    @Autowired
    private PersonsMapper personsMapper;
    @Autowired
    private ResumesMapper resumesMapper;
    @Autowired
    private WorkexperienceMapper workexperienceMapper;
    @Autowired
    private EducationMapper educationMapper;
    //查看简历信息
    @GetMapping("resume/in/{resumeId}")
    public ModelAndView getByResumeId(@PathVariable("resumeId") int resumeId, HttpServletResponse response){
        WriteVo writeVo = writeService.getByResumeId(resumeId);
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("writeVo",writeVo);
        modelAndView.setViewName("personInfo/writeResume");
        return modelAndView;

    }
    @GetMapping("resume/all/{resumeId}")
    public ModelAndView getByResume(@PathVariable("resumeId") int resumeId, HttpServletResponse response) {
        WriteVo writeVo = writeService.getByResumeId(resumeId);
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("writeVo", writeVo);
        modelAndView.setViewName("personInfo/exampleResume");
        return modelAndView;
    }

    //修改基本信息
    @PostMapping("personInfo/writePerson")
    @ResponseBody
    public   boolean   updateResume(HttpServletRequest request) throws ParseException {
        //1.接受页面的参数
        String username = request.getParameter("username");//获得姓名
        String birth =  request.getParameter("birth");//获得生日
        Date birthday = DateUtil.stringToDate(birth,DateUtil.PATTEREN_ONE);
        Long mobile = Long.valueOf(request.getParameter("mobile")); //获得手机号
        String email = request.getParameter("email");//获得email
        String area = request.getParameter("area");//获得居住地
        Integer  personStatus = Integer.valueOf(request.getParameter("personStatus"));//获得个人就业情况
        Integer gender = Integer.valueOf(request.getParameter("gender")); //获得性别
        String resumeName = request.getParameter("resumeName");//简历名称
        Integer age = Integer.valueOf(request.getParameter("age"));
        String ages = String.valueOf(age);
        Integer readStatus =Integer.valueOf(request.getParameter("readStatus")) ;
        //2.获得session中的resumeId
        Integer resumeId = Integer.valueOf(request.getParameter("resumeId"));
      //  Integer personId = (Integer) request.getSession().getAttribute("perId") ;
      //假设查询的用户id为1001，简历id3001
        Integer personId = 1001;
        Persons persons = personsMapper.selectByPrimaryKey(1001);
        Resumes resumes = new Resumes(resumeId,personId,personStatus);
        persons.setPerName(username);
        persons.setPerGender(gender);
        persons.setPerBirth(birthday);
        persons.setPerTel(mobile);
        persons.setPerEmail(email);
        persons.setPerAddress(area);
        resumes.setDeliveryStatus(0);
        resumes.setReadStatus(readStatus);
        resumes.setResumeName(resumeName);
        persons.setX(ages);
        //将页面参数存放到writeVo中
        WriteVo writeVo = new WriteVo(resumes,persons);
        boolean row = writeService.updateResume(writeVo);
        return  row;

    }

    //修改目前年收入
    @PostMapping("personInfo/writeSalary")
    @ResponseBody
    public boolean updateSalary(HttpServletRequest request){
        //1.接受页面的参数
        Integer currentIncome = Integer.valueOf(request.getParameter("currentIncome"));//目前工资
        //2.获得session中的resumeId

        Integer resumeId = Integer.valueOf(request.getParameter("resumeId"));
        System.out.println("//////////////////////////resumeId" + resumeId);
        //  Integer personId = (Integer) request.getSession().getAttribute("perId") ;
        //假设查询的用户id为1001，简历id3001
        Integer personId = 1001;
        Persons persons = personsMapper.selectByPrimaryKey(1001);
        Resumes resumes = resumesMapper.selectByPrimaryKey(resumeId);
        resumes.setCurrentIncome(currentIncome);
        //将页面参数存放到writeVo中
        WriteVo writeVo = new WriteVo(resumes,persons);
        boolean row = writeService.updateResume(writeVo);
        return  row;


    }

//修改求职意向
    @PostMapping("personInfo/hope")
    @ResponseBody
    public boolean updateHope(HttpServletRequest request){
        //1.接受页面的参数
        String hopeSalary = request.getParameter("hopeSalary");//期望薪资

        String hopearea = request.getParameter("hopearea");//期望地点
        String hopezhineng = request.getParameter("hopezhineng") ;//期望职能
        String  hopefuntype =request.getParameter("hopefuntype"); //期望行业
        String hopePosition = request.getParameter("hopePosition");//期望职业
        String selfInfo = request.getParameter("selfInfo"); //个人评价
        //2.获得session中的resumeId
        Integer resumeId = Integer.valueOf(request.getParameter("resumeId"));
        System.out.println("//////////////////////////resumeId" + resumeId);
        //  Integer personId = (Integer) request.getSession().getAttribute("perId") ;
        //假设查询的用户id为1001，简历id3001
        Integer personId = 1001;
        Persons persons = personsMapper.selectByPrimaryKey(1001);
        Resumes resumes = resumesMapper.selectByPrimaryKey(resumeId);
        //set
        resumes.setIntenSalary(hopeSalary);
        resumes.setIntenJobarea(hopearea);
        resumes.setIntenFuntype(hopezhineng);
        resumes.setIntenIndustry(hopefuntype);
        resumes.setIntenPosition(hopePosition);
        resumes.setIntroductionSelf(selfInfo);
        //将页面参数存放到writeVo中
        WriteVo writeVo=new WriteVo(resumes,persons);
        boolean rows = writeService.updateHope(writeVo);
        return  rows;
    }
//修改工作经验
    @PostMapping("personInfo/workexperience")
    @ResponseBody
    public boolean updateWork(HttpServletRequest request){
        //1.接受页面的参数
        String  workstart = request.getParameter("workstart"); //工作开始时间
        Date workStart = DateUtil.stringToDate(workstart,DateUtil.PATTEREN_ONE);
        String  workend = request.getParameter("workend");//工作结束时间
        Date workEnd = DateUtil.stringToDate(workend,DateUtil.PATTEREN_ONE);
        String workCompany =request.getParameter("workCompany"); //工作过的公司
        String subFunction = request.getParameter("subFunction");//工作过的职位
        String industryType = request.getParameter("industryType");//工作过的行业
        String workinfo = request.getParameter("workinfo");//工作介绍
        //2.获得session中的resumeId
        Integer resumeId = Integer.valueOf(request.getParameter("resumeId"));
        System.out.println("//////////////////////////resumeId" + resumeId);
        //  Integer personId = (Integer) request.getSession().getAttribute("perId") ;
        //假设查询的用户id为1001，简历id3001
        Integer personId = 1001;
        Integer workId = 0;
        Persons persons = personsMapper.selectByPrimaryKey(1001);
        //已知外键获得workexperience的主键
        WorkexperienceExample workexperienceExample = new WorkexperienceExample();
        WorkexperienceExample.Criteria workExperienceCriteria = workexperienceExample.createCriteria();
        workExperienceCriteria.andResumeIdEqualTo(resumeId);
        List<Workexperience> workexperienceList = workexperienceMapper.selectByExample(workexperienceExample);
        System.out.println(workexperienceList);
        for (Workexperience w:workexperienceList){
            workId = w.getExperienceId();
        }

        //根据主键查询
        Workexperience workexperience = workexperienceMapper.selectByPrimaryKey(workId);
        //set
        workexperience.setWorkTimeStart(workStart);
        workexperience.setWorkTimeEnd(workEnd);
        workexperience.setWorkCompany(workCompany);
        workexperience.setWorkSubfunction(subFunction);
        workexperience.setWorkIndustrytype(industryType);
        workexperience.setWorkIntroduction(workinfo);
        //将页面参数存放到writeVo中
        Resumes resumes = resumesMapper.selectByPrimaryKey(resumeId);
        WriteVo writeVo = new WriteVo(resumes,persons,workexperience);
        boolean rows = writeService.updateWorkexperience(writeVo);
        return rows;
    }
//修改教育经历
    @PostMapping("personInfo/writeEducation")
    @ResponseBody
    public boolean updateEdu(HttpServletRequest request) {
        //1.接受页面的参数
        String studystart = request.getParameter("studystart");//学校开始时间
        Date eduStart = DateUtil.stringToDate(studystart,DateUtil.PATTEREN_ONE);
        String studyend = request.getParameter("studyend");//学校离校时间
        Date eduEnd = DateUtil.stringToDate(studyend,DateUtil.PATTEREN_ONE);
        String school = request.getParameter("school");//学校名称
        String eduDegree = request.getParameter("edu_degree");//学历
        String eduMajor = request.getParameter("edu_sub_major");//获得专业
        String eduinfo = request.getParameter("eduinfo");//专业介绍
        //2.获得session中的resumeId
        Integer resumeId = Integer.valueOf(request.getParameter("resumeId"));
        System.out.println("..........................resumeId!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!" + resumeId);
        //  Integer personId = (Integer) request.getSession().getAttribute("perId") ;
        //假设查询的用户id为1001，简历id3001
        Integer personId = 1001;
        Integer eduId = 0;
        Persons persons = personsMapper.selectByPrimaryKey(1001);
        //已知外键获得education的主键
        EducationExample educationExample = new EducationExample();
        EducationExample.Criteria skillCriteria = educationExample.createCriteria();
        skillCriteria.andResumeIdEqualTo(resumeId);
        List<Education> educationList = educationMapper.selectByExample(educationExample);
        for (Education e: educationList){
            eduId = e.getEduId();
        }
        //根据主键查询
        Education education = educationMapper.selectByPrimaryKey(eduId);
        //set
        education.setEduTimeStart(eduStart);
        education.setEduTimeEnd(eduEnd);
        education.setEduSchool(school);
        education.setEduDegree(eduDegree);
        education.setEduSubMajor(eduMajor);
        education.setMajorIntroduction(eduinfo);
        //将页面参数存放到writeVo中
        Resumes resumes = resumesMapper.selectByPrimaryKey(resumeId);
        WriteVo writeVo = new WriteVo(resumes,persons,education);
        boolean rows = writeService.updateSkill(writeVo);
        return  rows;


    }
    //修改技能
    @PostMapping("personInfo/writeSkill")
    @ResponseBody
    public boolean updateSkill(HttpServletRequest request){
        //1.接受页面的参数
        String language = request.getParameter("language");
        String getCertificate = request.getParameter("getCertificate");
        //2.获得session中的resumeId
        Integer resumeId = Integer.valueOf(request.getParameter("resumeId"));
        System.out.println("..........................resumeId!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!" + resumeId);
        //  Integer personId = (Integer) request.getSession().getAttribute("perId") ;
        //假设查询的用户id为1001，简历id3001
        Integer personId = 1001;
        Integer eduId = 0;
        Persons persons = personsMapper.selectByPrimaryKey(1001);
        //已知外键获得education的主键
        EducationExample educationExample = new EducationExample();
        EducationExample.Criteria skillCriteria = educationExample.createCriteria();
        skillCriteria.andResumeIdEqualTo(resumeId);
        List<Education> educationList = educationMapper.selectByExample(educationExample);
        for (Education e: educationList){
            eduId = e.getEduId();
        }
        //根据主键查询
       Education education = educationMapper.selectByPrimaryKey(eduId);
        //set
        education.setGetCertificate(getCertificate);
        education.setLanguageSkills(language);
        //将页面参数存放到writeVo中
        Resumes resumes = resumesMapper.selectByPrimaryKey(resumeId);
        WriteVo writeVo = new WriteVo(resumes,persons,education);
        boolean rows = writeService.updateSkill(writeVo);
        return  rows;
    }
    @PostMapping("resumeCenter/rendering")
    @ResponseBody
    public JsonResult getByPerName( HttpServletRequest request){
        Integer perId =(Integer) request.getSession().getAttribute("loginPerId");
        System.out.println("简历详情页面接收到的用户id"+perId);
        List<Resumes> resumesList = resumesService.getByPerId(perId);//根据登陆传输的用户id查询个人简历
        System.out.println("简历详情页面接收到的简历集合"+resumesList);

        return new JsonResult(1,"查询到简历信息",resumesList);

    }
}
