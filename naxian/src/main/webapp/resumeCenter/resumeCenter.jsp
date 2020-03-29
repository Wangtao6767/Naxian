<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title>简历中心</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/dist/css/bootstrap.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/dist/css/bootstrap-theme.css">
    <!-- <script src="dist/js/bootstrap.js"></script>
     <script src="dist/js/bootstrap.js"></script>
     -->
    <script src="${pageContext.request.contextPath}/js/jquery-3.4.1.js"></script>
    <script src="${pageContext.request.contextPath}/layui/layui.all.js"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/layui/css/layui.css"  media="all">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/resumeCenter.css"/>

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
                console.log(sms);//输出相应的登陆的用户信息
                if(sms != null){

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
        //渲染简历信息
        $.ajax({
            url:"${pageContext.request.contextPath}/resumeCenter/rendering",//调用方法查询到简历信息
            type:"post",
            data:{

            },
            dataType:"json",
            success:function (result1) {
                var temp = result1.data;
                // var temp2 = $(".resumesChange");
                var resumeName = ""; //简历名
                var resumeStatus = ""//简历公开状态
                console.log(temp);//输出查询到的简历集合

                var el = "<div id=\"resume_396326258\" class=\"rli\" special-type=\"\">\n" +
                    "                <input type=\"hidden\" name=\"resumetype\" value=\"0\">\n" +
                    "                <form class=\"layui-form\" action=\"\">\n" +
                    "                    <ul class=\"clearfix\">\n" +
                    "                        <li class=\"l1\">\n" +
                    "                            <a title=\"我的简历1\" href=\"\">简历1</a>\n" +
                    "                        </li>\n" +
                    "                        <li class=\"l2 selt\">\n" +
                    "                            <div class=\"layui-form-item\">\n" +
                    "                                <div class=\"layui-input-block\">\n" +
                    "                                    <select name=\"interest\" lay-filter=\"aihao\">\n" +
                    "                                        <option value=\"2\" selected=\"\"></option>\n" +
                    "                                        <option value=\"\">对招贤网公开</option>\n" +
                    "                                        <option value=\"1\" >对所有公开</option>\n" +
                    "                                        <option value=\"2\">完全保密</option>\n" +
                    "                                    </select>\n" +
                    "                                </div>\n" +
                    "                            </div>\n" +
                    "                        </li>\n" +
                    "                        <li class=\"l2\"><em class=\"off\" track-type=\"trackButtonClick\" event-type=\"2\">\n" +
                    "                            <!--layui-->\n" +
                    "                            <form class=\"layui-form\">\n" +
                    "                                <div class=\"layui-form-item\">\n" +
                    "\n" +
                    "                                    <div class=\"layui-input-block\">\n" +
                    "                                        <input type=\"checkbox\" name=\"close\" lay-skin=\"switch\" lay-text=\"开|关\">\n" +
                    "                                    </div>\n" +
                    "                                </div>\n" +
                    "                            </form>\n" +
                    "                        </em></li>\n" +
                    "                        <li class=\"l3\">\n" +
                    "                            <a class=\"a\" onclick=\"editor()\" href=\"\">编辑</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a class=\"a\" track-type=\"trackButtonClick\" event-type=\"4\" href=\"javascript:void(0);\">复制</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a class=\"a\" href=\"javascript:void(0);\">删除</a>\n" +
                    "                        </li>\n" +
                    "                    </ul>\n" +
                    "                </form>\n" +
                    "            </div>";
                for(var i = 0; i < temp.length;i++){

                     resumeName = temp[i].resumeName;
                    console.log(resumeName);
                    resumeStatus = temp[i].readStatus;
                    console.log(resumeStatus);







                    $(".resumesChange").append(el);//动态渲染简历


                        var resumeNameText = ($(".resumesChange").children(":last-child").children(":first").next().children(":first").children(":first").text(resumeName));


                    var stm = "";
                    if(resumeStatus == null) {
                        stm = "对所有人公开";
                    }else if(resumeStatus == 0){
                        stm = "对招贤网公开"
                    }else if(resumeStatus ==1){
                        stm = "完全保密";
                    }else {
                        stm = "请选择"
                    }
                    console.log(stm)
                    //对所有人公开
                    var resumeStatustext = ($(".resumesChange").children(":last-child").children(":last-child").children(":first").children('li').eq(1).children(":first").children(":first").children(":first").children(":first").text(stm));
                    // var open_option = $(".interest option:selected").text(stm);

                    layui.use('form', function(){
                        var form = layui.form; //只有执行了这一步，部分表单元素才会自动修饰成功

                        form.on('select(aihao)',function(data){
                            console.log(data);
                        });

                        //但是，如果你的HTML是动态生成的，自动渲染就会失效
                        //因此你需要在相应的地方，执行下述方法来进行渲染
                        form.render('select');
                        form.render('checkbox');


                        form.on('switch(kaiguan)', function(data){
                            console.log(data.elem); //得到checkbox原始DOM对象
                            console.log(data.elem.checked); //开关是否开启，true或者false
                            console.log(data.value); //开关value值，也可以通过data.elem.value得到
                            console.log(data.othis); //得到美化后的DOM对象
                        });
                        //给表单赋值
                        form.val("gongkaibiaodan", { //gongkaibiaodan 即 class="layui-form" 所在元素属性 lay-filter="" 对应的值
                            "option": 0 // "name": "value"
                            ,"sex": "女"
                            ,"auth": 3
                            ,"check[write]": true
                            ,"open": false
                            ,"desc": "我爱layui"
                        });

//获取表单区域所有值
                        var data1 = form.val("formTest");
                    });

                        

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
                    <div class="dropbtn"><span><a  style="padding-bottom: 10px;" id="perName" class="perName" name="perName" href="${pageContext.request.contextPath}/person/login.jsp"> 您好，请登录</a>
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
                    <p><a href="${pageContext.request.contextPath}/company/companyLogin.jsp" style="color: #ffffff;text-decoration: none">企业服务</a></p>
                </div>
            </div>
        </div>
        <div class="col-md-1"></div>
    </div>
    <div class="top-second">
        <img src="${pageContext.request.contextPath}/images/logo.jpg" class="logo">
        <img src="${pageContext.request.contextPath}/images/logo2.jpg">
        <a href="${pageContext.request.contextPath}/indexAndSearch/index.jsp"><span class="first-text">首页</span></a>
        <a href="${pageContext.request.contextPath}/indexAndSearch/searchCenter.jsp"><span>职位搜索</span></a>
        <a href=""><span>地区频道</span></a>
        <a href="${pageContext.request.contextPath}/personInfo/writeResume.jsp"><span>简历信息</span></a>
        <a href="${pageContext.request.contextPath}/resumeCenter/resumeBrowsed.jsp"><span>谁看过我</span></a>
        <div class="top-down"></div>
    </div>
</div>
<!-- 页面中间内容-->
<div class="content">
    <div class="exlt">
        <a track-type="trackIndexClick" event-type="28" href="${pageContext.request.contextPath}/resumeCenter/personCenter.jsp" class="">
            <span>我的个人中心</span>
        </a>
        <a track-type="trackIndexClick" event-type="29" href="${pageContext.request.contextPath}/resumeCenter/resumeCenter.jsp" class="on">
            <span>简历中心
            <em class="new"></em>
            </span>
        </a>
        <a track-type="trackIndexClick" event-type="30" href="${pageContext.request.contextPath}/resumeCenter/resumeBrowsed.jsp" class>
            <span>谁看过我</span>
        </a>
        <a track-type="trackIndexClick" event-type="31" href="${pageContext.request.contextPath}/resumeCenter/myCollection.jsp" class>
            <span>我的收藏</span>
        </a>
        <a track-type="trackIndexClick" event-type="32" href="${pageContext.request.contextPath}/resumeCenter/userSet.jsp" class>
            <span>我的申请</span>
        </a>
        <a track-type="trackIndexClick" event-type="22" href="#" class="mbtn mk">
            <span>安全中心</span>
        </a>
    </div>
    <div class="exrt">
        <div class="mt">
            <ul class="mt_l">
                <li class="on">简历中心</li>
            </ul>
            <ul class="mt_r">
                <li>
                     <a class="r a" track-type="trackButtonClick" event-type="5" target="_blank" href="">查看求职信</a>
                </li>
                <li>
                    <a class="a" id="createPaste" href="javascript:void(0);">创建粘贴简历</a>
                </li>
                <li>
                    <a class="a" id="createResume" track-type="trackButtonClick" event-type="3">创建简历</a>
                </li>
            </ul>
        </div>
        <div class="rbox">

            <div class="tit">
                <ul class="clearfix">
                    <li class="l1">简历名称</li>
                    <li class="l2">公开程度</li>
                    <li class="l2">快速投递</li>
                    <li class="l3">操作</li>
                </ul>
            </div>
<div class="resumesChange" id="resumesChange" >
    <div id="resume_396326258" class="rli" special-type="">
        <input type="hidden" name="resumetype" value="0">
        <form class="layui-form" action="">
            <ul class="clearfix">
                <li class="l1">
                    <a title="我的简历1" href="">我的简历1</a>
                </li>
                <li class="l2 selt">
                    <div class="layui-form-item">
                        <div class="layui-input-block">
                            <select name="interest" lay-filter="aihao">
                                <option value="" selected=""></option>
                                <option value="0">对招贤网公开</option>
                                <option value="1" >对所有公开</option>
                                <option value="2">完全保密</option>
                            </select>
                        </div>
                    </div>
                </li>
                <li class="l2"><em class="off" track-type="trackButtonClick" event-type="2">
                    <!--layui-->
                    <form class="layui-form">
                        <div class="layui-form-item">

                            <div class="layui-input-block">
                                <input type="checkbox" name="close" lay-skin="switch" lay-text="开|关">
                            </div>
                        </div>
                    </form>
                </em></li>
                <li class="l3">
                    <a class="a" onclick="editor()" href="">编辑</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a class="a" track-type="trackButtonClick" event-type="4" href="javascript:void(0);">复制</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a class="a" href="javascript:void(0);">删除</a>
                </li>
            </ul>
        </form>
    </div>
</div>


            <div class="tlp">
                <strong>公开程度说明：</strong><br>
                <p>对所有公开：允许招贤的招聘人员及所有通过招贤纳聘审核的公司查看你的简历（注意：只允许有1份简历可以选择对所有公开）。</p>
                <p>对招贤公开：只允许招贤纳聘的招聘人员及认证猎头人士查看你的简历。</p>
                <p>完全保密：不允许任何人员或公司查看您的简历，个人信息完全保密，除非你主动投递职位。</p>
            </div>
            <div class="tlp">
                <strong>快速投递说明：</strong><br>
                <p>将简历设置为快速投递，申请职位时，直接发送设置快速投递的简历，不再提示选择简历。知己知彼竞争力分析也会默认使用快速投递简历进行分析。</p>
            </div>

        </div>
    </div>
</div>
<!--底层导航-->
<div class="footer">
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
</div>
<script >

</script>
<script>
    layui.use(['form', 'layedit', 'laydate'], function(){
        var form = layui.form
            ,layer = layui.layer
            ,layedit = layui.layedit
            ,laydate = layui.laydate;

        //日期
        laydate.render({
            elem: '#date'
        });
        laydate.render({
            elem: '#date1'
        });

        //创建一个编辑器
        var editIndex = layedit.build('LAY_demo_editor');

        //自定义验证规则
        form.verify({
            title: function(value){
                if(value.length < 5){
                    return '标题至少得5个字符啊';
                }
            }
            ,pass: [
                /^[\S]{6,12}$/
                ,'密码必须6到12位，且不能出现空格'
            ]
            ,content: function(value){
                layedit.sync(editIndex);
            }
        });

        //监听指定开关
        form.on('switch(switchTest)', function(data){
            layer.msg('开关checked：'+ (this.checked ? 'true' : 'false'), {
                offset: '6px'
            });
            layer.tips('温馨提示：请注意开关状态的文字可以随意定义，而不仅仅是ON|OFF', data.othis)
        });

        //监听提交
        form.on('submit(demo1)', function(data){
            layer.alert(JSON.stringify(data.field), {
                title: '最终的提交信息'

            })
            return false;
        });

        //表单赋值
        layui.$('#LAY-component-form-setval').on('click', function(){
            form.val('example', {
                "username": "贤心" // "name": "value"
                ,"password": "123456"
                ,"interest": 1
                ,"like[write]": true //复选框选中状态
                ,"close": true //开关状态
                ,"sex": "女"
                ,"desc": "我爱 layui"
            });
        });

        //表单取值
        layui.$('#LAY-component-form-getval').on('click', function(){
            var data = form.val('example');
            alert(JSON.stringify(data));
        });

    });
</script>
<script>
//编辑按钮传递简历id
    function editor() {

        
    }
    

</script>
</body>
</html>




