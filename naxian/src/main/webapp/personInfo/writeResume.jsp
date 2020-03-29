<%@ page import="java.util.Calendar" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link rel="icon" href="${pageContext.request.contextPath}/images/top_logo.ico">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/layui/css/layui.css"  media="all">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/dist/css/bootstrap.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/dist/css/bootstrap-theme.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/writeresume.css" >
    <script src="${pageContext.request.contextPath}/js/jquery-3.4.1.js"></script>
    <script src="${pageContext.request.contextPath}/dist/js/bootstrap.js"></script>
    <script src="${pageContext.request.contextPath}/js/index.js"></script>
    <script src="${pageContext.request.contextPath}/layui/layui.js"></script>
    <script src="${pageContext.request.contextPath}/js/writeresume.js"></script>
    <title>简历编辑页面</title>
</head>
<body>
<script>

</script>
<!--上标题-->
<div class="top-second">
    <img src="${pageContext.request.contextPath}/images/logo.jpg" class="logo">
    <img src="${pageContext.request.contextPath}/images/logo2.jpg">
    <a href="" ><span>简历中心</span></a>
    <a href="" ><span>个人中心</span></a>
    <a href="${pageContext.request.contextPath}/resumeCenter/resumeCenter.jsp"><span>首页</span></a>

</div>
<!--主体-->
<div class="main ">

    <!--左侧-->
    <div class="nav" style="top: 0px; z-index: 9;">
        <div class="top_wrap" id="resume">
            <div class="nav_top">
                <p class="nkt">
                    <span class="name" id="resume_nameview">我的简历${writeVo.resumes.resumeId}</span>
                    <span class="ed_icon_blue icons" onclick="editResumeName()" event-type="1"><img src="${pageContext.request.contextPath}/images/plus.png"> </span>
                    <span class="ed_icon_yellow icons"></span>
                </p>

            </div>
            <div class="cupBox">
                <div class="cup">更新：<span id="resume_lastupdate"><fmt:formatDate value="${writeVo.resumes.resumeUpdatetime}" pattern="yyyy-MM-dd"/></span></div>
                <div class="cup dt">
                    公开：<span id="resume_openess">${writeVo.resumes.readStatus == 1? "公开":"私有"}</span>
                    <div class="hpBox h_open" float-on="false">
                        <div class="h_head">
                            <em id="openess_question" class="hp" track-type="trackButtonClick" event-type="2"></em>
                            <div class="h_arr"></div>
                        </div>
                        <div class="h_body">
                            <div class="h_top"></div>

                            <div class="h_btm"></div>
                        </div>
                    </div>
                </div>
                <div class="cup dt"><span class="n_star" id="resume_bstar"></span><span class="star s1_5" id="resume_star"></span>
                    <div class="hpBox h_star">
                        <div class="h_head">
                            <em id="star_question" class="hp" track-type="trackButtonClick" event-type="3"></em>
                            <div class="h_arr"></div>
                        </div>
                        <div class="h_body">
                            <div class="h_top"></div>

                            <div class="h_btm"></div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="btnbox">
                <span class="p_but " onclick="refreshResume()" track-type="trackButtonClickNew" track-cusparamtype="1" track-resumeid="396326258" event-type="5">刷新</span>
                <span class="p_but  geige" onclick="javascript:window.open('${pageContext.request.contextPath}/personInfo/exampleResume.jsp?resumeId = ${writeVo.resumes.resumeId}')" track-type="trackButtonClick" event-type="6">预览</span>
            </div>
        </div>
        <div class="nav_body">
            <a href="#Basic" class="on" id="base_index"><span class="left a"></span>基本信息<span id="base_complete" class="right y"></span><em></em></a>
            <a href="#Career" id="intention_index"><span class="left b"></span>求职意向<span id="intention_complete" class="right n"></span></a>
            <a href="#Work" id="work_index"><span class="left c"></span>工作经验<span id="work_complete" class="right n"></span></a>
            <a href="#Education" id="education_index"><span class="left e"></span>教育经历<span id="education_complete" class="right n"></span></a>
            <a href="#Skills" class="" id="skill_index"><span class="left g"></span>技能/语言特长<span id="skill_complete" class="right n"></span></a>

        </div>
    </div>

    <!--  右边 -->
    <div class="column Fm">
        <!-- 个人信息-->
        <div class="box">
            <div class="box mk top_wrap" id="basedetail">
                <div class="head" id="Basic">
                    <div class="face">
                        <img src="${pageContext.request.contextPath}/images/touxiang.png" alt="头像" width="85" height="85">
                    </div>
                    <div class="name "><span>${writeVo.persons.perName}</span></div>
                    <p class="at">现居住${writeVo.persons.perAddress} │ ${writeVo.persons.perGender == 1 ? "男":"女"} │<span id="age">${writeVo.persons.x}</span>岁 (<fmt:formatDate value="${writeVo.persons.perBirth}" pattern="yyyy年MM月dd日"/>) │ ${writeVo.resumes.personStatus == 0 ? "求职":"已有工作"}</p>
                    <div class="tab">
                        <span class="email icons at" title="1435404802@qq.com"><img src="${pageContext.request.contextPath}/images/email.png">${writeVo.persons.perEmail}</span>
                        <span class="tel icons"><img src="${pageContext.request.contextPath}/images/phone.png">${writeVo.persons.perTel}</span>
                    </div>
                </div>
                <span class="ed_icon_blue icons" id="basedetail_edit" onclick="editButton()"><img src="${pageContext.request.contextPath}/images/plus.png"> </span>
            </div>
            <div class="box mk top_wrap com" id="basedetail1">

                <div class=" head" id="Basic1">
                    <div class="face f2">
                        <img id="base_avatar" src="${pageContext.request.contextPath}/images/touxiang.png" alt="头像" >
                        <span class="esp" onclick="setAvatar();">修改</span>|
                        <span id="base_avatar_delete" class="esp clb" onclick="javascript:void(0);">删除</span>
                    </div>


                    <div id="">
                        <div class="con">
                            <!--姓名-->
                            <div class="c" >
                                <i>*</i>
                                <label>姓名见下）：</label>
                                <div  float-on="false" >
                                    <input placeholder="填写姓名" class="ef cursor" id="username" type="text" >
                                    <span class="ic i_block pointer" ></span>

                                </div>
                            </div>
                            <!--性别-->
                            <div class="c" >
                                <div><label >*性别（见下）：</label></div>
                                <form action="personInfo" method="post">
                                    <label><input name="gender" type="radio" value="1" checked> 男</label>
                                    <label><input name="gender" type="radio" value="0"> 女</label>
                                </form>


                            </div>
                            <!-- 出生日期-->
                            <div class="c" >
                                <div><label >*出生日期（见下）：</label></div>
                                <div  float-on="false" >
                                    <input id="birth" type="date" />
                                </div>



                            </div>
                            <!-- 手机号-->
                            <div class="c" >
                                <div><label >*手机号（见下）：</label></div>
                                <div  float-on="false" >
                                    <input  class="ef cursor"  id="mobile" type="text">
                                </div>


                            </div>

                            <!-- 求职状态-->
                            <div class="c" >
                                <div><label >*求职状态（见下）：</label></div>
                                <div  float-on="false" >
                                        <select id="personStatus">
                                            <option class="ef"  readonly="readonly" value="0" >求职</option>
                                            <option class="ef"  readonly="readonly" value="1" >已有工作</option>



                                        </select>
                                    </div>



                            </div>
                            <!-- 邮箱-->
                            <div class="c" >
                                <div><label >*邮箱（见下）：</label></div>
                                <div  float-on="false" >
                                    <input placeholder="填写/选择" class="ef cursor" id="email" type="text">
                                </div>


                            </div>
                            <!--  居住地-->
                            <div class="c" >
                                <div><label >*居住地（见下）：</label></div>
                                <div  float-on="false" >
                                    <input placeholder="填写/选择" class="ef cursor" id="area" type="text">
                                </div>


                            </div>



                            <div class="err"  style="display:none"><em class="icons"></em></div>




                        </div>
                    </div>
                    <div class="btnbox">
                        <input type="button"  id="p_but1"  class="p_but" value="保存" onclick="saveButton();"/>
                        <input type="button" id="cancel1" class="p_but gray" value="取消" onclick="cancelButton()"/>
                    </div>
                </div>
            </div>
        </div>
        <script>


            //将表单中的输入信息获取出来
            //给生日的value赋值
            $("#birth").change(function(){
                $("#birth").attr("value",$(this).val()); //赋值
            });


            //刷新（更新时间）
            //修改简历名






            function saveButton() {

                var div = document.getElementById("Basic1");
                var target = document.getElementById("Basic");
                div.style.display = "none";
                target.style.display="block";
                var username = $("#username").val();
                var birth = $("#birth").val();
                var mobile = $("#mobile").val();
                var email = $("#email").val();
                var area = $("#area").val();
                var personStatus = $("#personStatus option:selected").val();
                var gender = $('input[name="gender"]:checked').val();
                var resumeId = ${writeVo.resumes.resumeId};
                var resumeName = $("#resume_nameview").val();
                var readStatus = ${writeVo.resumes.readStatus};

            //算出age
                var birthday = birth.split("-");
                var d = new Date();
                var yearDiff = d.getFullYear()-birthday[0];
                var age = $("#age").text(yearDiff);
                console.log(yearDiff)
                console.log("resumeId:"+resumeId);
                //1. 创建XMLHttpRequest
                if(window.XMLHttpRequest){
                    xhr = new XMLHttpRequest(); //for ie7+,FireFox,Chorme,Opera,Safai...
                }else{
                    xhr = new ActiveXObject('Microsoft.XMLHTTP');//for ie6
                }
                //表单的异步请求
                if (xhr != null) {
                    //2. 连接服务器
                    xhr.open("POST", "${pageContext.request.contextPath}/personInfo/writePerson", true);
                    xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded;");
                    xhr.onreadystatechange = callfun;
                    var data = "username="+username+"&birth="+birth+"&mobile="+mobile+"&email="+email+"&area="+area+"&personStatus="+personStatus+"&gender="+gender+"&resumeId="+resumeId+"&resumeName="+resumeName+"&age="+yearDiff+"&readStatus="+readStatus;
                    xhr.send(data);
                    console.log(data);
                }

            }

            function callfun() {
                var resumeId = ${writeVo.resumes.resumeId};
                if (xhr.readyState == 4 && xhr.status == 200){
                    if (xhr.responseText == 0){//修改成功
                        window.location.href="${pageContext.request.contextPath}/personInfo/writeResume"

                    }
                }


            }
            function editButton() {
                var div = document.getElementById("Basic");
                var target =document.getElementById("Basic1");
                div.style.display = "none";
                target.style.display="block";
            }

            function cancelButton() {
                var div = document.getElementById("Basic1");
                var target = document.getElementById("Basic");
                div.style.display = "none";
                target.style.display="block";

            }
        </script>

        <!--  目前年收入-->
        <div class="box1">
            <div class="box m1 top_wrap" id="salary">
                <div class="hd">
                    <strong class="icons"><em class="e0 icons"></em>目前年收入</strong>
                    <span class="f16">${writeVo.resumes.currentIncome}万元</span>
                    <span class="f12">（包含基本工资）</span>
                </div>
                <span class="ed_icon_undel icons" id="salary_edit" onclick="editButton1()"><img src="${pageContext.request.contextPath}/images/plus.png"></span>
            </div>
            <div class="box top_wrap" id="salary1" >
                <div class="hd" >
                    <strong class="icons"><em class="e0 icons"></em>目前年收入</strong>
                    <span class="f12">（包含基本工资）</span>

                </div>
                <div class="bd com">
                    <div class="con">
                        <div class="h30 ">
                            <div class="c c3">
                                <label id="shouru">目前年收入（见下）：</label>
                                <div class="sh sl">
                                    <div class="txt">
                                        <input class="ef" maxlength="6" id="sal_salary" type="text" value="13">
                                    </div>
                                </div>
                                万元
                                <div class="err" id="sal_salary_warning" style="display:none"></div>
                            </div>

                        </div>


                    </div>
                    <div class="btnbox">
                        <span class="p_but" id="salary_save" onclick="saveButton1();">保存</span><span class="p_but gray" id="salary_cancel" onclick="cancelButton1()">取消</span>
                    </div>
                </div>
            </div>

        </div>
        <script>
            function saveButton1() {
                var div = document.getElementById("salary1");
                var target = document.getElementById("salary");
                div.style.display = "none";
                target.style.display="block";
                var currentIncome = $("#sal_salary").val();
                var resumeId = ${writeVo.resumes.resumeId};
                console.log(currentIncome);
                //1. 创建XMLHttpRequest
                if(window.XMLHttpRequest){
                    xhr = new XMLHttpRequest(); //for ie7+,FireFox,Chorme,Opera,Safai...
                }else{
                    xhr = new ActiveXObject('Microsoft.XMLHTTP');//for ie6
                }
                //表单的异步请求
                if (xhr != null) {
                    //2. 连接服务器
                    xhr.open("POST", "${pageContext.request.contextPath}/personInfo/writeSalary", true);
                    xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded;");
                    xhr.onreadystatechange = callfun;
                    var data = "currentIncome="+currentIncome+"&resumeId="+resumeId;

                    xhr.send(data);
                    console.log(data);
                }



            }
            function cancelButton1() {
                var div = document.getElementById("salary1");
                var target = document.getElementById("salary");
                div.style.display = "none";
                target.style.display="block";

            }
            function editButton1() {
                var div = document.getElementById("salary");
                var target =document.getElementById("salary1");
                div.style.display = "none";
                target.style.display="block";
            }

        </script>
        <!--   求职意向-->
        <div class="box2">
            <div class="box mk top_wrap" id="Career1">
                <div class="hd" >
                    <strong class="icons"><em class="e1 icons"></em>求职意向<span class="ed_icon_undel icons" id="career_edit" onclick="editButton2()"><img src="${pageContext.request.contextPath}/images/plus.png"></span></strong>


                </div>

                <div style="height: 120px">
                    <div class="bd">
                        <div class="con">

                            <div class="e e3">
                                <label>期望薪资</label><i>：</i>
                                <div><span>${writeVo.resumes.intenSalary}元/月</span></div>
                            </div>
                            <div class="e e3"style="float: left;margin-left: 71px;" >
                                <label >地点：</label>
                                <div>
                                    <span class="ong">${writeVo.resumes.intenJobarea}</span></div>
                            </div>
                            <br>
                            <div class="e e3 ">
                                <label >职能/职位</label><i>：</i>
                                <div>
                                    <span class="ong">${writeVo.resumes.intenFuntype}    ${writeVo.resumes.intenPosition}</span>
                                </div>
                            </div>
                            <br>
                            <div class="e e2" style="float: left;">
                                <label >工作类型:</label>
                                <div><span>${writeVo.resumes.intenJobterm == 1? "全职":"兼职"}</span></div>
                            </div>
                            <div class="clear"></div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="box mk top_wrap" id="Career">
                <div class="hd" style="">
                    <strong class="icons"><em class="e1 icons"></em>求职意向</strong>
                </div>



                <div class="careerwrite">
                    <div id="bd com">
                        <div class="con">
                            <!--期望薪资-->
                            <br>
                            <div class="c" >
                                <i>*</i>
                                <label>期望薪资(月薪)（见下）：</label>
                                <div class="h30">
                                    <div class="txt pointer" id="int_salarytype_list" float-on="false">
                                        <select>
                                            <option class="ef"  readonly="readonly" value="3000-5000" >3000-5000</option>
                                            <option class="ef"  readonly="readonly" value="5000-8000" >5000-8000</option>
                                            <option class="ef"  readonly="readonly" value="8000-10000" >8000-10000</option>
                                            <option class="ef"  readonly="readonly" value="10000-12000" >10000-12000</option>
                                            <option class="ef"  readonly="readonly" value="12000+" >12000+</option>


                                        </select>
                                    </div>


                                </div>
                            </div>

                            <!--地点-->
                            <div class="c" id="hope">
                                <div><label >*地点（见下）：</label></div>
                                <div  float-on="false" id="int_expectarea_div">
                                    <input placeholder="填写/选择" class="ef cursor" id="int_expectarea_input" type="text">
                                    <span class="ic i_block pointer" id="int_expectarea_click"></span>
                                    <div class="ul u3" id="int_expectarea_list"></div>
                                </div>


                            </div>
                            <!-- 职能-->
                            <div class="c" id="hope1">
                                <div><label >*职能（见下）：</label></div>
                                <div  float-on="false" >
                                    <input placeholder="填写/选择" class="ef cursor" id="hopezhineng" type="text">
                                    <span class="ic i_block pointer" ></span>
                                    <div class="ul u3" ></div>
                                </div>



                            </div>
                            <!-- 职位-->
                            <div class="c" >
                                <div><label >*职位（见下）：</label></div>
                                <div  float-on="false" >
                                    <input  class="ef cursor"  placeholder="填写" type="text" id="hopePosition">
                                    <span class="ic i_block pointer" ></span>

                                </div>


                            </div>

                            <!-- 行业-->
                            <div class="c" id="hope2">
                                <div><label >行业（见下）：</label></div>
                                <div  float-on="false" >
                                    <input placeholder="填写" class="ef cursor" id="hopefuntype" type="text">
                                    <span class="ic i_block pointer" ></span>
                                    <div class="ul u3" ></div>
                                </div>


                            </div>
                            <!-- 自我评价-->
                            <div class="c" >
                                <div><label >自我评价（见下）：</label></div>
                                <div  float-on="false" >
                                    <textarea name="txt" clos=",200" rows="5" warp="virtual" placeholder="介绍自己，说明自己的最大优势，让企业看到你的闪光点" class="w1"></textarea>
                                    <span class="ic i_block pointer" ></span>
                                    <div class="ul u3" ></div>
                                </div>


                            </div>



                            <div class="err" id="int_expectarea_warning" style="display:none"><em class="icons"></em></div>




                        </div>
                    </div>
                    <div class="btnbox">
                        <span class="p_but"  onclick="saveButton2();">保存</span><span class="p_but gray"  onclick="cancelButton2()">取消</span>
                    </div>
                </div>

            </div>
        </div>
        <script>
            function saveButton2() {
                var div = document.getElementById("Career");
                var target = document.getElementById("Career1");
                div.style.display = "none";
                target.style.display="block";
                var hopeSalary = $("#int_salarytype_list option:selected").val();
                var hopearea = $("#int_expectarea_input").val();
                var hopePosition = $("#hopePosition").val();
                var hopefuntype = $("#hopefuntype").val();
                var hopezhineng = $("#hopezhineng").val();
                var selfInfo = $(".w1").val();
                var resumeId = ${writeVo.resumes.resumeId};
                //1. 创建XMLHttpRequest
                if(window.XMLHttpRequest){
                    xhr = new XMLHttpRequest(); //for ie7+,FireFox,Chorme,Opera,Safai...
                }else{
                    xhr = new ActiveXObject('Microsoft.XMLHTTP');//for ie6
                }
                //表单的异步请求
                if (xhr != null) {
                    //2. 连接服务器
                    xhr.open("POST", "${pageContext.request.contextPath}/personInfo/hope", true);
                    xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded;");
                    xhr.onreadystatechange = callfun;
                    var data = "hopeSalary="+hopeSalary+"&hopearea="+hopearea+"&hopePosition="+hopePosition+"&hopefuntype="+hopefuntype+"&hopezhineng="+hopezhineng+"&selfInfo="+selfInfo+"&resumeId="+resumeId;
                    xhr.send(data);
                    console.log(data);
                }

            }

            function callfun() {
                var resumeId = ${writeVo.resumes.resumeId};
                if (xhr.readyState == 4 && xhr.status == 200){
                    if (xhr.responseText == 0){//修改成功
                        window.location.href="${pageContext.request.contextPath}/personInfo/writeResume"

                    }
                }


            }
            function cancelButton2() {
                var div = document.getElementById("Career");
                var target = document.getElementById("Career1");
                div.style.display = "none";
                target.style.display="block";

            }
            function editButton2() {
                var div = document.getElementById("Career1");
                var target =document.getElementById("Career");
                div.style.display = "none";
                target.style.display="block";
            }

        </script>

        <!--工作经验-->
        <div class="box3">

            <div class="box m1 top_wrap"  id="Work">
                <div class="hd">
                    <strong class="icons"><em class="e2 icons"></em>工作经验            </strong><a id="work_new" onclick="newButton3();" class="add icons">新增工作</a>
                </div>
                <div id="work11">
                    <div class="p" id="work_view_300142647" style=" height: 180px">
                        <div class=" box1">
                            <div class="sp">
                                <span><fmt:formatDate value="${writeVo.workexperience.workTimeStart}" pattern="yyyy-MM"/>/<fmt:formatDate value="${writeVo.workexperience.workTimeEnd}" pattern="yyyy-MM"/></span>
                                <div class="w280 at" title="312"><span>${writeVo.workexperience.workCompany}</span></div>
                                <div class="fbox">
                                    <span class="zhi at" title="">${writeVo.workexperience.workSubfunction}</span>
                                    <em>
                                    </em>
                                </div>
                            </div>
                            <br>
                            <p class="kdw" title="" style="float: left ;margin-left: 12px;">
                                ${writeVo.workexperience.workIndustrytype}  ${writeVo.workexperience.workCompany} ${writeVo.workexperience.workSubfunction}       </p>
                            <div class="e">
                                <label >工作描述</label><i>：</i>
                                <div>
                                <span>${writeVo.workexperience.workIntroduction}</span></div>
                            </div>
                            <div class="clear"></div>

                        </div>
                    </div>

                </div>
            </div>

            <div class="box top_wrap" id="Work1">
                <div class="box mk">
                    <div class="hd" style="">
                        <strong class="icons" ><em class="e2 icons" ></em>工作经验</strong>
                    </div>

                    <div  style=" color: #766666">
                        <div class="con">
                            <!--工作经历时间见下-->
                            <div class="c" >
                                <i>*</i>
                                <label>工作经历时间（见下）：</label>
                                <div >
                                    <label for="workstart"style="margin-top: 20px;font-weight: lighter;margin-left: 30px">*工作开始时间：</label><input id="workstart" type="date" value="2014-01-13"/>
                                    <label for="workend"style="margin-top: 20px;font-weight: lighter;margin-left: 30px">*工作结束时间：</label><input id="workend" type="date" value="2014-01-13"/></div></div>


                        </div>
                        <!--公司-->
                        <div class="c"  style="margin-left: 11px;">
                            <div><label  >*工作过的公司名称（见下）：</label></div>
                            <div  float-on="false" >
                                <input placeholder="填写" class="ef cursor" id="workCompany" type="text">
                                <span class="ic i_block pointer"></span>

                            </div>


                        </div>
                        <!-- 职位-->
                        <div class="c" style="margin-left: 11px">
                            <div><label >*工作过的职位（见下）：</label></div>
                            <div  float-on="false" >
                                <input  class="ef cursor"  id="subFunction" type="text" placeholder="填写" >
                                <span class="ic i_block pointer" ></span>
                                <div class="ul u3" ></div>
                            </div>


                        </div>

                        <!-- 行业-->
                        <div class="c" style="margin-left: 11px">
                            <div><label >*工作过的行业（见下）：</label></div>
                            <div  float-on="false" >
                                <input placeholder="填写" class="ef cursor"  id="industryType" type="text">
                                <span class="ic i_block pointer" ></span>
                            </div>


                        </div>
                        <!-- 工作过的工作描述-->
                        <div class="c" style="margin-left: 11px" >
                            <div><label >*工作描述（见下）：</label></div>
                            <div  float-on="false" >
                                <textarea name="txt" clos=",200" rows="5" id="workinfo" warp="virtual" placeholder="介绍工作经历，让企业看到你的闪光点" class="w1"></textarea>
                                <span class="ic i_block pointer" ></span>
                                <div class="ul u3" ></div>
                            </div>


                        </div>



                        <div class="err"  style="display:none"><em class="icons"></em></div>




                    </div>
                </div>
                <div class="btnbox">
                    <span class="p_but"  onclick="saveButton3();">保存</span><span class="p_but gray"  onclick="cancelButton3()">取消</span>
                </div>
            </div>




        </div>


        <script>
            $("#workstart").change(function(){
                $("#workstart").attr("value",$(this).val()); //赋值
            });
            $("#workend").change(function(){
                $("#workend").attr("value",$(this).val()); //赋值
            });
            function saveButton3() {
                var div = document.getElementById("Work1");
                var target = document.getElementById("Work");
                div.style.display = "none";
                target.style.display="block";
                var workstart = $("#workstart").val();
                var workend = $("#workend").val();
                var workCompany = $("#workCompany").val();
                var subFunction = $("#subFunction").val();
                var industryType = $("#industryType").val();
                var workinfo = $("#workinfo").val();
                var resumeId = $("#resume_openess").val();
                //1. 创建XMLHttpRequest
                if(window.XMLHttpRequest){
                    xhr = new XMLHttpRequest(); //for ie7+,FireFox,Chorme,Opera,Safai...
                }else{
                    xhr = new ActiveXObject('Microsoft.XMLHTTP');//for ie6
                }
                //表单的异步请求
                if (xhr != null) {
                    //2. 连接服务器
                    xhr.open("POST", "${pageContext.request.contextPath}/personInfo/workexperience", true);
                    xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded;");
                    xhr.onreadystatechange = callfun;
                    var data = "workstart="+workstart+"&workend="+workend+"&workCompany="+workCompany+"&subFunction="+subFunction+"&industryType="+industryType+"&workinfo="+workinfo+"&resumeId="+resumeId;
                    xhr.send(data);
                    console.log(data);
                }

            }

            function callfun() {
                var resumeId = ${writeVo.resumes.resumeId};
                if (xhr.readyState == 4 && xhr.status == 200){
                    if (xhr.responseText == 0){//修改成功
                        window.location.href="${pageContext.request.contextPath}/personInfo/writeResume"

                    }
                }


            }
            function cancelButton3() {
                var div = document.getElementById("Work");
                var target = document.getElementById("Work1");
                div.style.display = "none";
                target.style.display="block";

            }
            function newButton3() {
                var div = document.getElementById("Work");
                var target =document.getElementById("Work1");
                div.style.display = "none";
                target.style.display="block";
            }

        </script>

        <!--  教育经历-->
        <div class="box4">
            <div class="box top_wrap" id="Education">
                <div class="box mk">
                    <div class="hd" style="">
                        <strong class="icons" ><em class="e4 icons"></em>教育经历</strong>


                    </div>
                    <div  style=" color: #766666">
                        <div class="con">
                            <!--学习时间-->
                            <div class="c"  >
                                <i>*</i>
                                <label>时间（见下）：</label>

                                <div >
                                    <label for="studystart"style="margin-top: 20px;font-weight: lighter;margin-left: 30px">*开始时间：</label><input id="studystart" type="date" value="2014-01-13"/></div>
                                <label for="studyend"style="margin-top: 20px;font-weight: lighter;margin-left: 30px">*结束时间：</label><input id="studyend" type="date" value="2014-01-13"/></div>


                            <!--学校名称-->
                            <div class="c"  style="margin-left: 11px;">
                                <div><label  >*学校名称（见下）：</label></div>
                                <div  float-on="false" >
                                    <input placeholder="填写" class="ef cursor"  id="school" type="text">
                                    <span class="ic i_block pointer"></span>

                                </div>


                            </div>
                            <!--学历、学位-->
                            <div class="c"  style="margin-left: 11px;">
                                <div><label  >*学历/学位（见下）：</label></div>
                                <div  float-on="false" >
                                    <input placeholder="填写/选择" class="ef cursor" id="edu_degree" type="text">
                                    <span class="ic i_block pointer"></span>
                                    <span class="tz on" onclick="checkBoxClick('edu_isfulltime', this)"><em></em>全日制</span>

                                </div>


                            </div>
                            <!--专业-->
                            <div class="c"  style="margin-left: 11px;">
                                <div><label  >*专业（见下）：</label></div>
                                <div  float-on="false" >
                                    <input placeholder="填写" class="ef cursor" id="edu_sub_major" type="text">
                                    <span class="ic i_block pointer"></span>

                                </div>


                            </div>
                            <!-- 专业描述-->
                            <div class="c" style="margin-left: 11px" >
                                <div><label >专业描述（见下）：</label></div>
                                <div  float-on="false" >
                                    <textarea name="txt" clos=",200" rows="5" warp="virtual" placeholder="描述在校期间所学的专业，主要包括课程内容、毕业设计等" id="eduinfo" class="w1"></textarea>
                                    <span class="ic i_block pointer" ></span>
                                    <div class="ul u3" ></div>
                                </div>
                            </div
                        </div>
                    </div>
                    <div class="btnbox">
                        <span class="p_but"  onclick="saveButton4();">保存</span><span class="p_but gray"  onclick="cancelButton4()">取消</span>
                    </div>

                </div>
            </div>
            <div class="box top_wrap" id="Education1">
                <div class="box mk" >
                    <div class="hd" >
                        <strong class="icons" ><em class="e4 icons"></em>教育经历</strong>
                        <a id="education_new" onclick="newButton4();" class="add icons">新增教育</a>
                    </div>
                    <div class="con edi"  style="height: 200px">
                        <div class="sp">
                            <span><fmt:formatDate value="${writeVo.education.eduTimeStart}"/>/<fmt:formatDate value="${writeVo.education.eduTimeEnd}"/></span>
                            <strong class="fbox" >
                                <span class="at1" >${writeVo.education.eduSchool}</span>
                                <input type="hidden" value="0"><em></em>            </strong>
                            <strong class="w140 at" >${writeVo.education.eduSubMajor}</strong>
                            <span class="cl3 w140 at">${writeVo.education.eduDegree}</span>
                             <br>
                            <label  id="introduction">专业描述:</label>
                                <span>${writeVo.education.majorIntroduction}</span>
                        </div>
                        <div class="clear"></div>
                    </div>
                </div>
            </div>
        </div>
        <script>
            $("#studystart").change(function(){
                $("#studystart").attr("value",$(this).val()); //赋值
            });
            $("#studyend").change(function(){
                $("#studyend").attr("value",$(this).val()); //赋值
            });
            function saveButton4() {
                var div = document.getElementById("Education");
                var target = document.getElementById("Education1");
                div.style.display = "none";
                target.style.display="block";
                var resumeId = ${writeVo.resumes.resumeId};
                var studystart = $("#studystart").val();
                var studyend = $("#studyend").val();
                var school = $("#school").val();
                var edu_degree =$("#edu_degree").val();
                var edu_sub_major = $("#edu_sub_major").val();
                var eduinfo = $("#eduinfo").val();
                //1. 创建XMLHttpRequest
                if(window.XMLHttpRequest){
                    xhr = new XMLHttpRequest(); //for ie7+,FireFox,Chorme,Opera,Safai...
                }else{
                    xhr = new ActiveXObject('Microsoft.XMLHTTP');//for ie6
                }
                //表单的异步请求
                if (xhr != null) {
                    //2. 连接服务器
                    xhr.open("POST", "${pageContext.request.contextPath}/personInfo/writeEducation", true);
                    xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded;");
                    xhr.onreadystatechange = callfun;
                    var data = "studystart="+studystart+"&studyend="+studyend+"&school="+school+"&edu_degree="+edu_degree+"&edu_sub_major="+edu_sub_major+"&eduinfo="+eduinfo+"&resumeId="+resumeId;
                    xhr.send(data);
                    console.log(data);
                }
            }
            function callfun() {
                var resumeId = ${writeVo.resumes.resumeId};
                if (xhr.readyState == 4 && xhr.status == 200){
                    if (xhr.responseText == 0){//修改成功
                        window.location.href="${pageContext.request.contextPath}/personInfo/writeResume"

                    }
                }
            }
            function cancelButton4() {
                var div = document.getElementById("Education1");
                var target = document.getElementById("Education");
                div.style.display = "none";
                target.style.display="block";

            }
            function newButton4() {
                var div = document.getElementById("Education1");
                var target =document.getElementById("Education");
                div.style.display = "none";
                target.style.display="block";
            }

        </script>


        <!--技能特长-->
        <div class="box5">
            <div class="box top_wrap" id="Skills">
                <div class="box mk">
                    <div class="hd" style="">
                        <strong class="icons" ><em class="e6 icons"></em>技能/语言特长</strong><span class="f12">（包含语言能力、证书）</span>
                    </div>


                    <div  style=" color: #766666">
                        <div class="con">
                            <!--获得证书-->
                            <div class="c"  style="margin-left: 11px;">
                                <div><label  >*获得证书（见下）：</label></div>
                                <div  float-on="false" >
                                    <textarea name="txt" clos=",200" rows="5" warp="virtual" placeholder="获得过的证书" id="get_certificate" class="w1"></textarea>
                                    <span class="ic i_block pointer" ></span>
                                    <div class="ul u3" ></div>
                                </div>


                            </div>
                            <div class="c"  style="margin-left: 11px;">
                                <div><label  >*语言技能（见下）：</label></div>
                                <div  float-on="false" >
                                    <textarea name="txt" clos=",200" rows="5" warp="virtual" placeholder="语言技能描述" id="language" class="w1"></textarea>
                                    <span class="ic i_block pointer" ></span>
                                    <div class="ul u3" ></div>
                                </div>
                            </div>
                            <div class="btnbox">
                                <span class="p_but"  onclick="saveButton5();">保存</span><span class="p_but gray"  onclick="cancelButton5()">取消</span>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
            <div class="box top_wrap" id="Skills1">
                <div class="hd" style="">
                    <strong class="icons" ><em class="e6 icons"></em>技能/语言特长</strong><span class="f12">（包含语言能力、证书）</span>
                    <a id="skill_new" onclick="newButton5();" class="add icons">新增技能</a>
                </div>

                <div id="skill">
                    <div class="p" id="skill_view_300142647" style="height: 100px">
                        <div class="e">
                            <label >获得荣誉</label><i>：</i>
                            <div><span>
                                ${writeVo.education.getCertificate}
                            </span>
                                     </div>
                        </div>
                        <br>
                        <div class="e">
                            <label >语言技能</label><i>：</i>
                            <div>
                               <span>${writeVo.education.languageSkills}</span>        </div>
                        </div>
                        <div class="clear"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<script>
    function saveButton5() {
        var div = document.getElementById("Skills");
        var target = document.getElementById("Skills1");
        div.style.display = "none";
        target.style.display="block";
        var language = $("#language").val();
        var getCertificate = $("#get_certificate").val();
        var resumeId = ${writeVo.resumes.resumeId};
        //1. 创建XMLHttpRequest
        if(window.XMLHttpRequest){
            xhr = new XMLHttpRequest(); //for ie7+,FireFox,Chorme,Opera,Safai...
        }else{
            xhr = new ActiveXObject('Microsoft.XMLHTTP');//for ie6
        }
        //表单的异步请求
        if (xhr != null) {
            //2. 连接服务器
            xhr.open("POST", "${pageContext.request.contextPath}/personInfo/writeSkill", true);
            xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded;");
            xhr.onreadystatechange = callfun;
            var data = "language="+language+"&getCertificate="+getCertificate+"&resumeId="+resumeId;
            xhr.send(data);
            console.log(data);
        }

    }

    function callfun() {
        var resumeId = ${writeVo.resumes.resumeId};
        if (xhr.readyState == 4 && xhr.status == 200){
            if (xhr.responseText == 0){//修改成功
                window.location.href="${pageContext.request.contextPath}/personInfo/writeResume"

            }
        }

    }
    function cancelButton5() {
        var div = document.getElementById("Skills1");
        var target = document.getElementById("Skills");
        div.style.display = "none";
        target.style.display="block";

    }
    function newButton5() {
        var div = document.getElementById("Skills1");
        var target =document.getElementById("Skills");
        div.style.display = "none";
        target.style.display="block";
    }

</script>

<!--底部-->
<div class="bottom">
    <div class="bottom1">
        <li><strong>联系方式：1383838438</strong></li>
        <li>Email：NaXian.com（公司）</li>
        <li>13843843@qq.com（个人）</li>
    </div>
    <div class="bottom2">
        <ul>
            <li><strong>简介</strong></li>
            <li> 关于我们</li>
            <li> 服务声明</li>
            <li>媒体报道</li>
            <li> Investor Relations</li>
        </ul>
    </div>
    <div class="bottom3">
        <ul>
            <li><strong>合作</strong></li>
            <li> 加入我们</li>
            <li> 联系我们</li>
            <li>友情链接</li>
        </ul>

    </div>
    <div class="bottom4">

        <ul>
            <li><strong>帮助</strong></li>
            <li> 帮助中心</li>
            <li> 常见问题</li>
            <li>新手引导</li>
        </ul>
    </div>
    <div class="bottom5">

        <ul>
            <li><strong>导航</strong></li>
            <li> 网站地图</li>
            <li> 职位搜索</li>
            <li>简历中心</li>
            <li> 企业名录</li>
        </ul>
    </div>
    <div class="bottom6">
        <img src="${pageContext.request.contextPath}/images/NaXian.png">
        <p>服务号</p>
    </div>
</div>

<script>
    layui.use('laydate', function() {
        var laydate = layui.laydate;
        //年月选择器
        laydate.render({
            elem: '#test3'
            , type: 'month'
        });
    })
</script>
</body>


</html>