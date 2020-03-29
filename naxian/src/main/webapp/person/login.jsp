
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
<head lang="en">
    <meta charset="UTF-8">

    <title>招聘登录网页</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/layui/css/layui.css">
    <script src="${pageContext.request.contextPath}/js/jquery-3.4.1.js"></script>
    <script src="${pageContext.request.contextPath}/layui/layui.js"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/login.css">
</head>
<body>
<img src="${pageContext.request.contextPath}/images/reg-bg.png"
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
        <span class="t1"style="display:block;margin-right: 100px;font-size: 18px;">欢迎登录</span>
        <span class="t1"><a href="regist.jsp"style="font-size: 18px">去注册</a></span>
        <span class="t1"style="display:block;margin-left: 400px"><a href="${pageContext.request.contextPath}/indexAndSearch/index.jsp"style="font-size: 18px">首页</a></span>
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
                <span id="account" class="active" style="padding-right:175px;color: blueviolet">手机号登录</span>
                <div class="clear"></div>
            </div>
            <div class="accountlogin">
                <div class="item">
                    <input type="text" class="in mobile" onblur="checkMobile()" id="mobile"
                            placeholder="手机号" maxlength="40"><div id="mobile_prompt" style="color: red"></div>
                    <div class="username_msg msg"style="display: block">

                        <div class="clear"></div>
                        <div class="item">
                            <div class="slidecode" id="slidecode"></div>
                        </div>
                        <div class="item">
                            <td class="center"><input type="password" id="pwd" class="in pwd" onblur="checkPwd()
                            " placeholder="密码"></td>
                            <td><div id="pwd_prompt"style="color: red"></div></td>
                            <div class="password_msg msg" style="display: block;">

                                <div class="clear"></div>
                            </div>
                        </div>
                        <div class="item">
                            <p class="forgetpwd"><a class href="">忘记密码</a>
                                <a style=" margin-right: 20px"href="">账户申诉</a></p>
                            <button id="btn_account" class="btn" >登录</button>

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

<%--登陆--%>
<script type="text/javascript">
    // 手机号验证

    function checkMobile() {
        var mobile = $("#mobile").val();
        // console.log(mobile);
        var mobileId = $("#mobile_prompt").val();

        mobileId.innerHTML="";
        var reMobile = /^1(3|4|5|7|8)\d{9}$/;
        if(mobile == ''){
            mobileId.innerHTML = "手机号码不能为空！";
        }else if(mobile.length !=11){
            mobileId.innerHTML = "请输入有效的手机号码！";
        }else if(!reMobile.test(mobile)){
            mobileId.innerHTML = "请输入有效的手机号码！";
        }else{
            return true;
        }

    }
// 对密码验证
    function checkPwd(){
        var pwd = $("#pwd").val();

        var pwdId = $("#pwd_prompt").val();
        pwdId.innerHTML="";
        //正则表达式
        var reg = /^[a-zA-Z0-9]{6,16}$/;
        if(!reg.test(pwd)){
            pwdId.innerHTML = "密码不能含有非法字符，长度在6-16之间";

        }else {
            return true;


        }

    }




    $("#btn_account").click(function(){
        var btn = document.querySelectorAll("#btn_account");
        // var tel = btn.parentElement.parentElement.parentElement.children[0].innerHTML;
        // var psw = btn.parentElement.parentElement.children[0].children[0].innerHTML;
        var tel = $("#mobile").val();
        var pwd = $("#pwd").val();
        tel = parseInt(tel);
        pwd = parseInt(pwd);  /*从页面获取数据*/


        if (tel !="" && pwd!=""){
            jQuery.ajax({
                url: "${pageContext.request.contextPath}/person/login",
                type: "POST",
                data: "perTel="+tel+"&password="+pwd,//将数据传输到服务器
                dataType: "json",
                success:function (result){

                    if (result.code != 0) {
                        console.log(result);

                        window.location.href = "${pageContext.request.contextPath}/indexAndSearch/index.jsp"
                    }else {
                        alert("用户不存在，请前往注册");
                    }
                }
            })
        }
    });


</script>
</body>
</html>


