package com.naxian.controller.person;

import com.naxian.common.GetMsgCode;
import com.naxian.pojo.Persons;

import com.naxian.service.person.PersonService;
import com.naxian.util.JsonResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;

@Controller
public class PersonalController {
    @Autowired
    private PersonService personService;

    @GetMapping("person/{personalId}")
    public Persons getById(@PathVariable("personalId") Integer personalId) {
        Persons person = (Persons) personService.getById(personalId);
        return person;
    }

    @RequestMapping("person/login")
    @ResponseBody
    public JsonResult loginByUserAndPwd(Long perTel, String password, HttpServletRequest request) {
        System.out.println("你输入的perTel=" + perTel);
        System.out.println("你输入的password=" + password);
        JsonResult jsonResult = personService.loginByTelno(perTel, password);

        Persons person = (Persons) jsonResult.getData();

//        if (person != null) {
//           request.getSession().setAttribute("loginPer",person);
//        }
            if (jsonResult.getCode() == 0) {  //3.用户名不存在
                System.out.println("sdafa");
                return jsonResult;
            } else {  //2. 用户名存在
                System.out.println("agwgergre");
                request.getSession().setAttribute("loginPerId",person.getPerId());
                request.getSession().setAttribute("loginPerName",person.getPerName());
                request.getSession().setAttribute("loginPerTel", person.getPerTel());
                request.getSession().setAttribute("loginPerson", person);
                System.out.println(person.getPerTel());
                return new JsonResult(1, "用户存在，可以跳转", jsonResult);

            }

        }

    /**
     * 判断是否已登录
     * @param request
     * @return
     */
    @PostMapping("login/index")
        @ResponseBody
        public JsonResult longinBackIndex(HttpServletRequest request){
          Persons persons = (Persons) request.getSession().getAttribute("loginPerson");
          System.out.println(persons);
        return new JsonResult(1,"已经登陆",persons);//登陆之后把用户的信息传过去

        }

///**/注册验证码请求
    @PostMapping("person/getRegistCode")
    @ResponseBody
    public JsonResult getRegistCode(Long perTel) {

        JsonResult jsonResult = personService.getByTelno(perTel);
        if (jsonResult.getCode() == 0) { //用户存在 提醒用户登录
            System.out.println("用户存在，不能注册");
            return jsonResult;
        } else {
            System.out.println("用户不存在，可以注册，发送验证码"); //用户不存在 可以注册 发送验证码
            //2. 发送验证码
            GetMsgCode getMsgCode = new GetMsgCode();
            String codeMsg = null;
            String perTel1 = String.valueOf(perTel);//把long类型的数据改成String类型的
            try {
                codeMsg = getMsgCode.execute(perTel1);
            } catch (Exception e) {
                e.printStackTrace();
            }
            return new JsonResult(1, "用户不存在可以注册", codeMsg);
        }
    }

    /**
     * 注册方法
     * @param perTel
     * @param pwd
     * @return
     */
    @PostMapping("persons/regist")
    @ResponseBody
    public JsonResult regist(Long perTel, String pwd , HttpServletRequest request) {
        System.out.println(perTel);
        Persons persons = new Persons(perTel, pwd);
        Boolean insert = personService.insert(persons);
        if (insert == true){
            request.getSession().setAttribute("registPerName", persons.getPerName());
            request.getSession().setAttribute("registPerTel", persons.getPerTel());
            request.getSession().setAttribute("registPerson", persons);
            System.out.println(persons.getPerTel());
            return new JsonResult(0, "注册成功", persons);
        }else{
            return new JsonResult(1, "注册失败", null);
        }
    }


//    /**
//     * 数据传输，注册信息进一步编写的页面
//     * @param request 手机号注册以后返回的数据
//     * @return  返回给进一步页面的数据
//     */
//    @PostMapping("regist/second")
//    @ResponseBody
//    public JsonResult registSecond(HttpServletRequest request){
//        Long perTel =(Long) request.getSession().getAttribute("registPerTel");
//        JsonResult persons = personService.getByTelno(perTel);
//        System.out.println(persons);
//        return new JsonResult(1,"数据传输成功",persons);
//    }


//    @RequestMapping("person/login{perTel}")
//    public ModelAndView login(@PathVariable Long perTel,HttpServletRequest request) {
//
//        ModelAndView modelAndView = new ModelAndView();
//        JsonResult jsonResult = personService.getByTelno(perTel);

//
//        Persons persons = (Persons) jsonResult.getData();
//        if (persons != null) {
//            request.getSession().setAttribute("loginUserName", persons.getPerName());
//            request.getSession().setAttribute("loginUserId", persons.getPerId());
//            request.getSession().setAttribute("loginUser", persons);
//        }
//
//        modelAndView.setViewName("index"); // /index.jsp
//        return modelAndView;
//    }
}
