<%-- Created by IntelliJ IDEA. --%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title>企业注册网页</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/layui/css/layui.css">
    <script src="${pageContext.request.contextPath}/js/jquery-3.4.1.js"></script>
    <script src="${pageContext.request.contextPath}/layui/layui.js"></script>
    <link rel="stylesheet"href="${pageContext.request.contextPath}/css/regist.css">
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

<!--登录导航栏   和logo  欢迎注册  首页  +   帮助-->
<div class="header">
    <div class="top-nav">

        <a href="">
            <img class="logo" width="90"height="40"src="${pageContext.request.contextPath}/images/main.jpg">
        </a>
        <img class="slogen" width="162" height="17"src="https://img05.51jobcdn.com/im/2016/header/slogen.png" alt="好工作尽在前程无忧">
        <span class="gp"style="display:block;"></span>
        <span class="t1" style="display:block;font-size: 18px">企业注册</span>
        <span class="t1"style="font-size: 18px;margin-left: 100px">注册会员</span>
        <span class="t1"style="display:block;margin-left: 400px;font-size: 18px"><a href="https://www.51job.com/">首页</a></span>
    </div>

</div>

<!--登录主要部分整体-->
<div class="pay-main"style="width: 100%;height:1000px;background-color: #ffffff">

    <div class="details-title"style="margin-left: 150px;padding-top:50px "><h1>企业注册套餐（招聘通用</h1></div>
    <div class="details-title"style="margin-left: 150px;padding-top:5px ">全方位推广灵活招聘</div>
    <!--    <div class="price"style="margin-left: 150px;margin-top:30px;"><span class="price-num"style="font-size: 36px;color: red;font-family: DIN-Bold">6180</span>元</div>-->

    <div ><img src="${pageContext.request.contextPath}/images/youshi.png"style="width: 800px;height:500px;margin-left: 150px;">
        <img src="${pageContext.request.contextPath}/images/xianyu.jpg" style="width: 320px;margin-left: 100px;"></div>
    <div class="advantage"style="font-size: 20px;margin-top: 30px;margin-left: 150px;">选择产品</div>

    <form  class="layui-form" action ="release.jsp" onsubmit="return formSubmit()" style="height: 500px">
        <div class="layui-form-item">
            <label class="layui-form-label"style="margin-left: 150px">套餐选择:</label>
            <div class="layui-input-block"style="padding-left: 50px">
                <input type="checkbox" name="like[write]" title="299元/月">
                <input type="checkbox" name="like[read]" title="599元/季度">
                <input type="checkbox" name="like[dai]" title="999元/年">
                <input type="checkbox" name="like[dai]" title="1499元/2年">
                <input type="checkbox" name="like[dai]" title="1999元/3年">
            </div>
        </div>
        <div class="alipay"style="margin-left: 150px">
            <h2>套餐支付：</h2>
            <img src="${pageContext.request.contextPath}/images/alipay.svg"style="margin-left: 100px">
            <input type="radio" name="sex" value="nan" title="支付宝">
        </div>
        <div class="btn"style="float:right;margin-right: 500px;">
            <button type="button"style="background-color: orangered;width: 150px;height: 50px;color: #ffffff;font-size: 20px">去付款</button>
        </div>
    </form>

</div>
<script>
    //Demo
    layui.use('form', function(){
        var form = layui.form;

        //监听提交
        form.on('submit(formDemo)', function(data){
            layer.msg(JSON.stringify(data.field));
            return false;
        });
    });
</script>
</body>
</html>
