<%@ page import="java.util.Calendar" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<!DOCTYPE html>
<html>
<head lang="en">

    <meta charset="UTF-8">
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link href="${pageContext.request.contextPath}/css/company.css" rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/dist/css/bootstrap.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/dist/css/bootstrap-theme.css">
    <script src="${pageContext.request.contextPath}/js/jquery-3.4.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/dist/js/bootstrap.js"></script>
    <script src="${pageContext.request.contextPath}/zhaoPinJs/naxianjs.js"></script>
    <script src="${pageContext.request.contextPath}/layui/layui.js" charset="utf-8"></script>
    <link rel="icon" href="${pageContext.request.contextPath}/images/top_logo.ico">

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
    <img src="${pageContext.request.contextPath}/images/logo2.jpg">
    <a href="${pageContext.request.contextPath}/resumeCenter/resumeCenter.jsp"><span class="first-text">首页</span></a>
    <span><a href="${pageContext.request.contextPath}/resumeCenter/resumeCenter.jsp">职位搜索</a></span>
    <span>地区频道</span>
    <span>简历信息</span>
    <span>谁看过我</span>
    <div class="top-down"></div>
</div>

<div class="main">
    <br>
    <div class="top-images"></div>

    <div class="top-images-right">

        <ul>
            <li> 多读两年书工资差2000?</li>
            <li>  面试后这样做，入职率增加8成</li>
            <li>  专家答疑-心仪的面试如何把握？</li>
            <li>  好老板和好公司，你选哪个</li>
        </ul>

    </div>

    <div class="main-introduce">
        <br> <br> <br> <br> <br> <br>
        <h3><b>${company.companyName}</b></h3>
        <ul>
            <li style="font-size: 16px;">${company.companyType}</li>
            <li style="font-size: 16px;">${company.companySize}</li>
            <li style="font-size: 16px;">公司邮箱：${company.companyEmail}</li>
        </ul>
        <br><br>
        <span style="font-size: 16px;">营业执照：${company.companyName}</span>
        <div class="tips"> <img src="${pageContext.request.contextPath}/images/notepad.png"><span style="font-size: 16px;">下方为本公司的所需职位</span></div>
    </div>
    <div class="main-line"><br></div>
    <div class="main-text">
        <h3>公司简介：<img src="${pageContext.request.contextPath}/images/companyintroduce.png"></h3>
        <p style="font-size: 16px;">  ${company.companyIntroduction}</p>
    </div>
    <img src="${pageContext.request.contextPath}/images/company1.jpg">
    <div class="main-line">  <p></p></div>
    <br>公司地址：${company.compayAddress}<br>
    <br> 地图公司官网：<a href="${company.websiteCompany}" style="  text-decoration: none;">${company.websiteCompany}</a>

    <div class="tlc">
        <br>
        <div class="on">
            <div class="main-height"></div>
            <h4 style="font-size:16px;line-height: 3px; margin-left:10px; "><b>公司所需的职位</b></h4>
        </div>
        <c:forEach items="${recruitList}" var="r">
            <div class="on">
            <span><a href="#">${r.recName}</a></span>
            <span class="title1">${r.recJobSalary}</span>
            <span class="title2">${r.recJobAddress}</span>
            <span class="title3">工作${r.recJobExperience}| ${r.education} | 招${r.recPerNum}人</span>
            <input type="hidden" id="cruid" value="${r.recId}">
            </div>
        </c:forEach>


    </div>

    <div class="image">
        <img src="${pageContext.request.contextPath}/images/companycard1.jpg">
        <img src="${pageContext.request.contextPath}/images/companycard2.jpg">
        <img src="${pageContext.request.contextPath}/images/companycard3.jpg">
        <img src="${pageContext.request.contextPath}/images/companycard4.jpg">
        <img src="${pageContext.request.contextPath}/images/companycard5.jpg">

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
