<%-- Created by IntelliJ IDEA. --%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<!DOCTYPE html>
<html>
<head lang="en">

    <meta charset="UTF-8">
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link href="${pageContext.request.contextPath}/css/jobApplication.css" rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/dist/css/bootstrap.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/dist/css/bootstrap-theme.css">
    <script src="${pageContext.request.contextPath}/js/jquery-3.4.1.js"></script>
    <script src="${pageContext.request.contextPath}/dist/js/bootstrap.js"></script>

    <script src="${pageContext.request.contextPath}/layui/layui.js" charset="utf-8"></script>

    <title>简历中心</title>

</head>
<script>

    function iframe(){
        var sms = "";//接收session中的信息
        var perName = $("#perName").val();
        console.log(perName)
        $.ajax({
            url: "${pageContext.request.contextPath}/login/index",
            type: "post",
            data:{   //数据传输到服务器

            },
            dataType:"json",

            success:function (result) {
                sms = result.data;
                console.log(sms);
                if(sms != null){
                    alert("欢迎登陆");
                    perName = sms.perName;
                    console.log(perName);
                    $(".dropbtn").children(":first").children(":last-child").hide();
                    var perName1 = $(".dropbtn").append($(".dropbtn").children(":first").children(":first").text());
                    console.log(perName1);
                    perName1.text(perName)
                    // perName1.html(regist)

                }else {
                    $(".dropdown").children(":last-child").hide();
                    $(".dropdown").children(":first").children(":first").children("img").hide();
                }

            }


        })
    }
</script>
<body onload="iframe()">

<div class="row first-div">
    <div class="col-md-1"></div>
    <div class="col-md-10">
        <div class="row second-div">
            <div class="col-md-6">
                <div class="top-text">
                    <img src="${pageContext.request.contextPath}/images/top_logo.png">
                    <span>纳贤招聘</span>
                </div>
            </div>
            <div class="col-md-2">
                <div class="dropdown">
                    <div class="dropbtn"><span><a  style="padding-bottom: 10px;" id="perName" class="perName" name="perName" href="${pageContext.request.contextPath}/person/login.jsp"> 登录/注册</a>
                         <img class="imgxiala" id="imgxiala" name="imgxiala" src="${pageContext.request.contextPath}/images/xiasanjiao.svg" ></span>
                    </div>
                    <div class="dropdown-content">
                        <a href="${pageContext.request.contextPath}/resumeCenter/personCenter.jsp">我的Job</a>
                        <a href="${pageContext.request.contextPath}/resumeCenter/resumeCenter.jsp">简历中心</a>
                        <a href="${pageContext.request.contextPath}/resumeCenter/resumeBrowsed.jsp">谁看过我</a>
                        <a href="${pageContext.request.contextPath}/resumeCenter/userSet.jsp">我的申请</a>
                        <a href="${pageContext.request.contextPath}/person/login.jsp">退出账号</a>
                    </div>
                </div>
            </div>
            <div class="col-md-2">
                <p>招聘信息</p>
            </div>
            <div class="col-md-2">
                <p>企业服务</p>
            </div>
        </div>
    </div>
    <div class="col-md-1"></div>
</div>

<div class="top-second">
    <img src="${pageContext.request.contextPath}/images/logo.jpg" class="logo">
    <img src="${pageContext.request.contextPath}/images/logo2.jpg" class="logo2">
    <span class="first-text">首页</span>
    <span><a href="${pageContext.request.contextPath}/indexAndSearch/searchCenter.jsp">职位搜索</a></span>
    <span>地区频道</span>
    <span>简历信息</span>
    <span>谁看过我</span>
    <div class="top-down"></div>
</div>

<div class="tCompanyPage"style="background-color: #ffffff;width:100%;height: 2000px ">
    <img src="${pageContext.request.contextPath}/images/job-top.jpg" style="margin-left: 100px">
    <div class="tCompany_centet clearfix">
        <div class="tHeader tHjob" style="display: block">
            <div class="in">
                <div class="cn" style="margin-left: -155px">
                    <h1 >${recruit.recName}</h1>
                    <strong>${recruit.recJobSalary}</strong>
                    <p class="cname">
                        <a href="" target="_blank"class="catn" >${company.companyName}
                            <em class="icon_b_i_link"></em></a>
                        <a track-type="jobsButtonClick"event-type="2"class="i_house"href=""
                           target="_blank">查看所有职位</a>
                    </p>
                    <p class="msg ltype" title="苏州-高新区&nbsp;&nbsp;|&nbsp;&nbsp;5-7年经验&nbsp;&nbsp;|&nbsp;&nbsp;大专&nbsp;&nbsp;|&nbsp;&nbsp;招若干人&nbsp;&nbsp;|&nbsp;&nbsp;09-21发布">${company.compayAddress}&nbsp;&nbsp;<span>|</span>&nbsp;&nbsp;${recruit.recJobExperience}&nbsp;&nbsp;<span>|</span>&nbsp;&nbsp;${recruit.education}&nbsp;&nbsp;<span>|</span>&nbsp;&nbsp;招若${recruit.recPerNum}&nbsp;&nbsp;<span>|</span>&nbsp;&nbsp;<fmt:formatDate value="${recruit.recCreateTime}" pattern="yyyy-MM-dd"/>发布</p>
                    <div class="jtag">
                        <div class="t1">
                            <span class="sp4">五险一金</span><span class="sp4">餐饮补贴</span><span class="sp4">年终奖金</span>                                        <div class="clear"></div>
                        </div>
                    </div>
                </div>
                <div class="op">
                    <div class="op" style="border-color: #00a0e9">
                        <select>
                            <option class="ef"  readonly="readonly" value="申请职位" >申请职位</option>
                            <option class="ef"  readonly="readonly" value="我的简历1" >我的简历1</option>
                            <option class="ef"  readonly="readonly" value="我的简历2" >我的简历2</option>
                        </select>
                        <a  class="icon_b i_collect" >收藏</a>
                        <div class="clear"></div>
                    </div>
                </div>
            </div>
        </div>
        <div class="line1" style="background-color: #636985;height: 1px;width: 1100px;margin-top: 170px;margin-left: 90px;"></div>
        <!--职位信息-->

    </div>
    <div class="tCompany_main">
        <div class="tBorderTop_box"style="background-color: #f5f5f5;width: 666px;">
            <h2><span class="bname">职位信息</span></h2>
            <div class="bmsg job_msg inbox">
               ${recruit.jobIntroduction}
                <br>
                <p>任职要求</p>
                ${recruit.jobDemand}
            </div>
        </div>
        <div class="tBorderTop_box"style="background-color: #f5f5f5;width: 666px;height: 130px">
            <h2>
                <span class="bname">联系方式</span>
            </h2>
            <div class="bmsg inbox">
                <p class="fp">
                    <span class="label">上班地址:</span>
                    ${recruit.recJobAddress}
                </p>
                <a href="${pageContext.request.contextPath}/indexAndSearch/address.jsp">查看地图</a>
            </div>
        </div>
        <!--公司详细信息-->
        <div class="tBorderTop_box"style="background-color: #f5f5f5;width: 666px;margin-left: 2px">
            <h2><span class="bname"style="float: left">&nbsp;公司信息</span></h2>
            <div class="tmsg inbox">
                ${company.companyIntroduction}
            </div>
        </div>
    </div>
    <!--右侧公司框-->
    <div class="tCompany_sidebar">
        <div class="tBorderTop_box">
            <span class="bname"> 公司信息</span>

            <a class="com_name himg" target="_blank">
                <img src="${pageContext.request.contextPath}/images/job-company.gif" width="63" height="63" alt="" >
                <p title="苏州云格信息科技有限公司"style="margin-top: -40px">${company.companyName}</p></a>
            <br><br>
            <div class="com_tag">
                <p class="at" title="民营公司">${company.companyType}</p>
                <p class="at" title="少于50人">${company.companySize}</p>
                <p class="at" >

                   ${company.websiteCompany}
                </p>
            </div>
            <a href="${pageContext.request.contextPath}/indexAndSearch/company.jsp" class="icon_b i_house"  target="_blank">查看所有职位</a>
        </div>
    </div>
</div>





<div class="main-bottom"></div>
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





</body>
</html>

