<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2019/9/9
  Time: 18:33
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title>招聘注册网页</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/layui/css/layui.css">
    <script src="${pageContext.request.contextPath}/js/jquery-3.4.1.js"></script>
    <script src="${pageContext.request.contextPath}/layui/layui.js"></script>
    <link rel="stylesheet"href="${pageContext.request.contextPath}/css/regist.css">
    <script src="${pageContext.request.contextPath}/dist/css/bootstrap.css"></script>
</head>

<body>
<img src="https://img.58cdn.com.cn/ui6/my/images/reg-bg.png"
     id="bg" style="position: absolute;width: 100%;height: 100%;
        top:0;left: 0">
<!--登录导航栏   和logo  欢迎注册  首页  +   帮助-->
<div class="header">
    <div class="top-nav">

        <a href="">
            <img class="logo" width="90"height="40"src="${pageContext.request.contextPath}/images/main.jpg">
        </a>
        <img class="slogen" width="162" height="50"src="${pageContext.request.contextPath}/images/logo2.jpg" style="margin-top: 8px" alt="好工作尽在纳贤招聘">
        <span class="gp"style="display:block;"></span>
        <span class="t1" style="display:block;margin-right: 100px;font-size: 18px">欢迎注册</span>
        <span class="t1"style="font-size: 18px"><a href="login.jsp">去登录</a></span>

        <span class="t1"style="display:block;margin-left: 400px;font-size: 18px"><a href="${pageContext.request.contextPath}/indexAndSearch/index.jsp">首页</a></span>

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

                <div class="clear"></div>
            </div>
            <div class="accountlogin">
                <div class="item">
                    <input type="text" class="perTel" onblur="checkMobile()" id="perTel"
                           placeholder="手机号" maxlength="40"><div id="mobile_prompt" style="color: red"></div>
                    <input style="text-align: center;" class="btn btn-default" id="btn_code" name="btn_code"  value="发送验证码">
                    <%--<button type="button" class="ui_btn ui_org_btn" id="tel_btn"--%>
                            <%--style="height: 40px;float: right">获取验证码</button>--%>
                    <%--<input  type="button" class="btn-dtm btn-getdtm" id="btn" value="获取验证码"/>--%>
                    <div class="username_msg msg" style="display: block"></div>
                        <div class="clear"></div>
                        <div class="item">
                            <div class="slidecode" id="slidecode"></div>
                        </div>
                        <div class="item">
                            <input type="password" name="code" id="code" class="code"
                                   placeholder="验证码" onblur="checkCode()" autocomplete="new-password"
                                   maxlength="16">
                            <div class="password_msg " style="display: block;">
                                <span class="password_msgtext"></span>
                                <div class="clear"></div>
                            </div>
                        </div>
                        <div class="item">
                            <td class="center"><input type="password" id="pwd" class="in" onblur="checkPwd()
                            " placeholder="密码"></td>
                            <td><div id="pwd_prompt"style="color: red"></div></td>
                            <div class="password_msg msg" style="display: block;">

                                <div class="clear"></div>
                            </div>
                        </div>
                        <div class="item">

                            <td class="center"><input type="password" id="repwd" class="in" onblur="checkRepwd()"placeholder="确认密码"></td>
                            <td><div id="repwd_prompt"style="color: red"></div></td>
                            <div class="password_msg msg" style="display: block;">

                                <div class="clear"></div>
                            </div>
                        </div>
                        <div class="item">
                            <p class="forgetpwd"><a class href="">忘记密码</a>
                                <a style="margin-right: 20px"href="">账户申诉</a></p>
                            <button id="btn_account" class="btn_account">注册</button>
                            <div class="protocol">注册即同意<a target="_blank"href="">《纳贤招聘网使用协议》</a>&<a target="_blank"
                                                                                                    href="">《隐私政策》</a></div>
                        </div>
                        <div class="item third">

                            <div class="clear"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<script language="JavaScript">
    // function $(elementId){
    //     return document.getElementById(elementId).value;
    // }
    // function divId(elementId){
    //     return document.getElementById(elementId);
    // }

    // 密码验证
    var perTel = ""; //用户输入的手机号
    var pwd = "";  //用户输入的密码
    var code = ""; //用户输入的验证码
    var sms = "" ;//发送的验证码
    function checkPwd(){
         pwd = $("#pwd").val();
        var reg = /^[a-zA-Z0-9]{6,16}$/;
        if(reg.test(pwd)==false){
            $("#repwd_prompt").html("密码不能含有非法字符，长度在6-16之间");
            return false;
        }
        $("#repwd_prompt").html("");
        return true;
    }
    function checkRepwd(){
        var repwd = $("#repwd").val();
        var pwd = $("#pwd").val();
        if(pwd!=repwd){
            $("#repwd_prompt").html("两次密码不一致，请重新输入");
            return false;
        }
        $("#repwd_prompt").html("");
        return true;
    }

    //      手机号验证
    function checkMobile() {
        perTel = $("#perTel").val();

        var reMobile = /^1\d{10}$/;
        if (reMobile.test(perTel)==false){
          $("#mobile_prompt").html("手机号格式不正确，请重新输入");
            return false;
        }
          $("#mobile_prompt").html("");
        return true;
    }
    // 注册功能
    //发送验证码
    $("#btn_code").click(function() {
        perTel = $("#perTel").val();

        console.log(perTel);
        if (perTel != "") {
            var InterValObj; //timer变量，控制时间
            var count = 60; //间隔函数，1秒执行
            var curCount;//当前剩余秒数


            $.ajax({
                url : "${pageContext.request.contextPath}/person/getRegistCode",  //发送请求  目标地址
                type : "post",  //POST方式传输
                data : {  //发送到服务器的数据
                    "perTel":perTel
                },

                success : function(result) {
                    sms = result.data;
                    if(sms.perTel!=null){
                        alert("当前手机号已经注册，请直接登陆")

                    }else {
                        //验证码计时器
                        curCount = count;
                        $("#btn_code").attr("disabled", "true");//发送验证码
                        $("#btn_code").val(curCount + "秒后可重新发送");
                        InterValObj = window.setInterval(SetRemainTime, 1000); //启动计时器，1秒执行一次请求后台发送验证码 TODO

                        //timer处理函数
                        function SetRemainTime() {
                            if (curCount == 0) {
                                window.clearInterval(InterValObj);//停止计时器
                                $("#btn_code").removeAttr("disabled");//启用按钮
                                $("#btn_code").val("重新发送验证码");
                            } else {
                                curCount--;
                                $("#btn_code").val(curCount + "秒后可重新发送");
                            }
                        }
                    }
                    console.log(sms)
                }
            });


        } else {
            alert("请输入手机号");
            return false;
        }
    });

    //验证验证码
    function checkCode(){
        code = $("#code").val();
        // console.log(code);
        // console.log(sms);
        if (code ==""){
            alert("请输入验证码");

            return false;
        } else {
            if (sms == code) {

                return true;
            } else {
                alert("验证码错误，请核对之后重新输入")
                return false;
            }
        }
    }
    //点击注册
    $("#btn_account").click(function () {
        var perTel = $("#perTel").val();
        var Pwd = $("#pwd").val();
        var code = $("#btn_code").val();

        console.log(perTel);
        console.log(Pwd);


        console.log(sms)
        console.log("code :" + code);
        if (code == ""){
            alert("请输入验证码");
        } else {
            if (checkPwd() == true && checkRepwd() == true && checkCode() == true){
                console.log("密码和确认密码都正确")
                $.ajax({
                    url:"${pageContext.request.contextPath}/persons/regist",
                    type:"post",
                    data:{   //数据传输到服务器
                        "perTel" : perTel,
                        "pwd" : Pwd
                    },
                    dataType:"json",
                    success:function (result) {
                        console.log("result.code:" +result.code);
                        if (result.code == 0){
                            alert("注册成功");
                            window.location.href = "${pageContext.request.contextPath}/person/login.jsp"
                        }
                    }
                })

            } else {
                alert("验证码错误")
            }
        }
    });








</script>
</body>
</html>

