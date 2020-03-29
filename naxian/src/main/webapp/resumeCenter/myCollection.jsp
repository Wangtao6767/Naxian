
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
    <script src="${pageContext.request.contextPath}/js/myCollection.js"></script>
    <script src="${pageContext.request.contextPath}/layui/layui.all.js"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/layui/css/layui.css"  media="all">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/myCollection.css"/>

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
        <a href="${pageContext.request.contextPath}/resumeCenter/resumeCenter.jsp"><span>简历信息</span></a>
        <a href="${pageContext.request.contextPath}/resumeCenter/resumeBrowsed.jsp"><span>谁看过我</span></a>
        <div class="top-down"></div>
    </div>

</div>
<!-- 页面中间内容-->
<div class="content">
    <!--左边导航-->
    <div class="exlt">
        <a track-type="trackIndexClick" event-type="28" href="${pageContext.request.contextPath}/resumeCenter/personalCenter.jsp" class="">
            <span>我的个人中心</span>
        </a>
        <a track-type="trackIndexClick" event-type="29" href="${pageContext.request.contextPath}/resumeCenter/resumeCenter.jsp" class="">
            <span>简历中心
            <em class="new"></em>
            </span>
        </a>
        <a track-type="trackIndexClick" event-type="30" href="${pageContext.request.contextPath}/resumeCenter/resumeBrowsed.jsp" class="">
            <span>谁看过我</span>
        </a>
        <a track-type="trackIndexClick" event-type="31" href="${pageContext.request.contextPath}/resumeCenter/myCollection.jsp" class="on">
            <span>我的收藏</span>
        </a>
        <a track-type="trackIndexClick" event-type="32" href="${pageContext.request.contextPath}/resumeCenter/userSet.jsp" class="">
            <span>我的申请</span>
        </a>
        <a track-type="trackIndexClick" event-type="22" href="#" class="mbtn mk">
            <span>安全中心</span>
        </a>
    </div>
    <!--右侧标签-->
    <div class="layui-tab" lay-filter="demo" lay-allowclose="true">
        <ul class="layui-tab-title">
            <li class="layui-this" lay-id="11"><a style="text-decoration: none" href="#">职位收藏 </a></li>

            <li class="layui-one" lay-id="22"><a class="a1" style="text-decoration: none" >心愿公司 </a></li>

        </ul>



        <div class="layui-tab-content">
            <div class="layui-tab-item layui-show">
                <div class="dw_table">
                    <div class="el title">
                        <span class="t12">职位名</span>
                        <span class="t13">公司名</span>
                        <span class="t14">工作地点</span>
                        <span class="t15">薪资</span>
                        <span class="t16">操作</span>
                    </div>
                    <div class="el" id="collection_107642230">

                        <p class="t12">

                            <input type="checkbox" name="like1[write]" lay-skin="primary" checked="">

                            <input class="checkbox" type="checkbox" id="delivery_107642230" name="delivery_jobid" value="107642230" jt="0" style="display:none">
                            <span><a target="_blank" title="Java开发工程师" href="https://jobs.51job.com/suzhou-gxq/107642230.jsp?s=02&amp;t=0" onmousedown="">Java开发工程师</a></span>
                        </p>
                        <span class="t13">
                                <a target="_blank" title="苏州中科图新网络科技有限公司" href="https://jobs.51job.com/all/co4095043.jsp">苏州中科图新网络科技有限公司</a>
                            </span>
                        <span class="t14">苏州-高新区</span>
                        <span class="t15">0.6-1万/月</span>
                        <span class="t16" id="operate_107642230">
                            <div class="site-demo-button" id="layerDemo" style="margin-bottom: 0;"><button data-method="notice" class="layui-btn">申请</button>&nbsp;&nbsp;|&nbsp;&nbsp; <button data-method="offset" data-type="auto" class="layui-btn layui-btn-normal">删除</button></div>
                            </span>
                    </div>
                    <div class="dw_tlc">
                        <div class="chall">
                            <form class="layui-form" action="">
                                <div class="layui-form-item" pane="">

                                    <div class="layui-input-block">
                                        <input type="checkbox" name="like1[write]" lay-skin="primary" title="全选" checked="">

                                    </div>
                                </div>
                            </form>

                        </div>
                        <div class="op">
                            <span class="but_sf uck" onclick=""><i></i>删除</span>
                            <span track-type="trackButtonClick" event-type="1" onclick="" class="but_sq uck"><i class="dicon Dm"></i>申请</span>
                        </div>
                    </div>
                </div>
                <div class="dw_page">
                    <div class="p_box">
                        <div class="p_wp">
                            <div class="p_in">
                                <ul><li class="bk"><span>上一页</span></li><li class="on">1</li><li class="bk"><span>下一页</span></li></ul><span class="td">共1页，到第</span><input id="jump_page" class="mytxt" type="text" value="1"><span class="td">页</span><span class="og_but" onclick="jump_page();">确定</span></div></div></div></div>
            </div>
            <div class="layui-tab-item">内容2</div>
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
            <img src="${pageContext.request.contextPath}/IMAGES/NaXian.png">
            <p>服务号</p>
        </div>
    </div>
</div>
<script src="${pageContext.request.contextPath}/js/myCollection.js" charset="utf-8"></script>
<!-- 注意：如果你直接复制所有代码到本地，上述js路径需要改成你本地的 -->
<script>
    layui.use('layer', function(){ //独立版的layer无需执行这一句
        var $ = layui.jquery, layer = layui.layer; //独立版的layer无需执行这一句

        //触发事件
        var active = {
            setTop: function(){
                var that = this;
                //多窗口模式，层叠置顶
                layer.open({
                    type: 2 //此处以iframe举例
                    ,title: '当你选择该窗体时，即会在最顶端'
                    ,area: ['390px', '260px']
                    ,shade: 0
                    ,maxmin: true
                    ,offset: [ //为了演示，随机坐标
                        Math.random()*($(window).height()-300)
                        ,Math.random()*($(window).width()-390)
                    ]
                    ,content: '//layer.layui.com/test/settop.jsp'
                    ,btn: ['继续弹出', '全部关闭'] //只是为了演示
                    ,yes: function(){
                        $(that).click();
                    }
                    ,btn2: function(){
                        layer.closeAll();
                    }

                    ,zIndex: layer.zIndex //重点1
                    ,success: function(layero){
                        layer.setTop(layero); //重点2
                    }
                });
            }
            ,confirmTrans: function(){
                //配置一个透明的询问框
                layer.msg('大部分参数都是可以公用的<br>合理搭配，展示不一样的风格', {
                    time: 20000, //20s后自动关闭
                    btn: ['明白了', '知道了', '哦']
                });
            }
            ,notice: function(){
                //示范一个公告层
                layer.open({
                    type: 1
                    ,title: false //不显示标题栏
                    ,closeBtn: false
                    ,area: '500px;'
                    ,shade: 0.8
                    ,id: 'LAY_layuipro' //设定一个id，防止重复弹出
                    ,btn: ['立即申请', '取消']
                    ,btnAlign: 'c'
                    ,moveType: 1 //拖拽模式，0或者1
                    ,content: '<div style="padding: 50px; line-height: 22px; background-color: #fff; color: #000000; font-weight: 300;">你知道吗？亲！<br>layer ≠ layui<br><br>layer只是作为Layui的一个弹层模块，由于其用户基数较大，所以常常会有人以为layui是layerui<br><br>layer虽然已被 Layui 收编为内置的弹层模块，但仍然会作为一个独立组件全力维护、升级。<br><br>我们此后的征途是星辰大海 ^_^</div>'
                    ,success: function(layero){
                        var btn = layero.find('.layui-layer-btn');
                        btn.find('.layui-layer-btn0').attr({
                            href: 'http://www.layui.com/'
                            ,target: '_blank'
                        });
                    }
                });
            }
            ,offset: function(othis){
                var type = othis.data('type')
                    ,text = othis.text();

                layer.open({
                    type: 1
                    ,offset: type //具体配置参考：http://www.layui.com/doc/modules/layer.jsp#offset
                    ,id: 'layerDemo'+type //防止重复弹出
                    ,content: '<div style="padding: 20px 100px;">'+ text +'</div>'
                    ,btn: '确认删除'
                    ,content:'<div style="padding: 70px; line-height: 22px; background-color: #fff; color: #000000; font-weight: 300;">删除成功</div>'
                    ,btnAlign: 'c' //按钮居中
                    ,shade: 0 //不显示遮罩

                });
            }
        };

        $('#layerDemo .layui-btn').on('click', function(){
            var othis = $(this), method = othis.data('method');
            active[method] ? active[method].call(this, othis) : '';
        });

    });
</script>
<!-- 注意：如果你直接复制所有代码到本地，上述js路径需要改成你本地的 -->
<script src="${pageContext.request.contextPath}/js/myCollection.js" charset="utf-8"></script>
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
    layui.use('form', function(){
        var form = layui.form; //只有执行了这一步，部分表单元素才会自动修饰成功

        //……

        //但是，如果你的HTML是动态生成的，自动渲染就会失效
        //因此你需要在相应的地方，执行下述方法来进行渲染
        form.render();
    });

</script>

</body>
</html>




