<%-- Created by IntelliJ IDEA. --%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">

    <title>企业登录网页</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/layui/css/layui.css">
    <script src="${pageContext.request.contextPath}/js/jquery-3.4.1.js"></script>
    <script src="${pageContext.request.contextPath}/layui/layui.js"></script>
    <link rel="stylesheet"href="${pageContext.request.contextPath}/css/login.css">
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
                    perName = sms;
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
<body>
<img src="${pageContext.request.contextPath}/images/company-bg.jpg"
     id="bg" style="position: absolute;width: 100%;height: 100%;
        top:0;left: 0">
<!--登录导航栏   和logo  欢迎登录  首页  +   帮助-->
<div class="header">
    <div class="top-nav">

        <a href="">
            <img class="logo" width="90"height="40"src="${pageContext.request.contextPath}/images/main.jpg">
        </a>
        <img class="slogen" width="162" height="50"src="${pageContext.request.contextPath}/images/logo2.jpg" style="margin-top: 8px" alt="好工作尽在纳贤招聘">
        <span class="gp"style="display:block;"></span>
        <span class="t1" style="display:block;font-size: 18px">企业登录</span>
        <span class="t1" style="display:block; margin-left: 60px;font-size: 18px"><a href="${pageContext.request.contextPath}/company/companyRegist.jsp">去注册</a></span>
        <p class="nlink n2">
            <a href="${pageContext.request.contextPath}/indexAndSearch/index.jsp"style="font-size: 18px">首页</a>
        </p>
    </div>
</div>
<!--登录主要部分整体-->
<div class="main">
    <div class="login-box">
        <div class="pop_head">
            <img class="main-logo" src="${pageContext.request.contextPath}/images/main.jpg">
        </div>
        <div class="passwordlogin" style="display: block">
            <div class="change">
                <span id="account" class="active">账户密码登录</span>

                <div class="clear"></div>
            </div>
            <div class="accountlogin">
                <div class="item">
                    <input type="text" name="username"id="username"
                           placeholder="账户名"maxlength="40">
                    <div class="username_msg msg"style="display: block">
                        <span class="username_msgtext">您还没有输入账户名</span>
                        <div class="clear"></div>
                        <div class="item">
                            <div class="slidecode" id="slidecode"></div>
                        </div>
                        <div class="item">
                            <input type="password"name="password" id="password"
                                   placeholder="密码" autocomplete="new-password"
                                   maxlength="16">
                            <div class="password_msg msg" style="display: block;">
                                <span class="password_msgtext">密码太短,最少6位</span>
                                <div class="clear"></div>
                            </div>
                        </div>
                        <div class="item">
                            <p class="forgetpwd"><a class href="">忘记密码</a>
                                <a style="margin-right: 20px"href="">账户申诉</a></p>
                            <a href="${pageContext.request.contextPath}/company/companyIndex.jsp">   <button id="btn_account" class="btn">企业登录</button></a>
                            <div class="protocol">登录即同意<a target="_blank"href="">《纳贤招聘网使用协议》</a>&<a target="_blank"
                                                                                                    href="">《隐私政策》</a></div>
                        </div>
                        <div class="item third">
                            <a href=""class="qq">
                                <img src="${pageContext.request.contextPath}/images/qq.png">QQ登录</a>
                            <a href="" class="weChat">
                                <img src="${pageContext.request.contextPath}/images/weixin.png">微信登录 </a>
                            <a href="" class="weChat">
                                <img src="${pageContext.request.contextPath}/images/weibo.png">微博登录 </a>
                            <div class="clear"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

</body>
</html>
