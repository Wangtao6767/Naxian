
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title>个人简历中心</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/dist/css/bootstrap.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/dist/css/bootstrap-theme.css">
    <!-- <script src="dist/js/bootstrap.js"></script>
     <script src="dist/js/bootstrap.js"></script>
     -->
    <script src="${pageContext.request.contextPath}/js/jquery-3.4.1.js"></script>
    <script src="${pageContext.request.contextPath}/layui/layui.js"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/layui/css/layui.css"  media="all">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/personalCenter.css"/>
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
        <a href="${pageContext.request.contextPath}/resumeCenter/personalCenter.jsp"><span>简历信息</span></a>
        <a href="${pageContext.request.contextPath}/resumeCenter/resumeCenter.jsp"><span>谁看过我</span></a>
        <div class="top-down"></div>
    </div>
</div>
<!-- 页面中间内容-->
<div class="content">
    <div class="exlt">
        <a track-type="trackIndexClick" event-type="28" href="${pageContext.request.contextPath}/resumeCenter/personCenter.jsp" class="on">
            <span>我的个人中心</span>
        </a>
        <a track-type="trackIndexClick" event-type="29" href="${pageContext.request.contextPath}/resumeCenter/resumeCenter.jsp" class="">
            <span>简历中心
            <em class="new"></em>
            </span>
        </a>
        <a track-type="trackIndexClick" event-type="30" href="resumeBrowsed.jsp" class>
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
        <div class="resume">
            <div class="layui-carousel" id="test3" lay-filter="test4">
                <div carousel-item="">
                    <div class="rview">
                        <div class="pre" style="display: none;"></div>
                        <div class="rli">
                            <img class="man" src="${pageContext.request.contextPath}/images/man.png" alt="头像" width="85" height="104">
                            <a class="a" track-type="trackButtonClick" event-type="1" href="${pageContext.request.contextPath}/personInfo/writeResume.jsp">设置</a>
                            <div class="rcon" style="margin-top: -36.5px;">
                                <div class="h1 e1"><a href="javascript:void(0);" title="我的简历" onclick="edit(395874845,0,'//i.51job.com/resume')">我的简历</a><em class="gk">对招贤公开</em></div>
                                <div class="e">
                                    <label>更新：</label>
                                    <span class="refreshdate" id="refreshdate_395874845">2019-09-16</span>
                                </div>
                                <div class="r1"><span title="刘宝鹤&nbsp;&nbsp;|&nbsp;&nbsp;男&nbsp;&nbsp;|&nbsp;&nbsp;22岁&nbsp;&nbsp;|&nbsp;&nbsp;2年工作经验&nbsp;&nbsp;|&nbsp;&nbsp;现居住佳木斯">刘宝鹤&nbsp;&nbsp;|&nbsp;&nbsp;男&nbsp;&nbsp;|&nbsp;&nbsp;22岁&nbsp;&nbsp;|&nbsp;&nbsp;2年工作经验&nbsp;&nbsp;|&nbsp;&nbsp;现居住佳木斯</span></div>

                            </div>
                            <div class="btnbox">
                                <div class="site-demo-button" id="layerDemo1" style="margin-bottom: 0;">
                                    <button data-method="offset" data-type="auto" class="layui-btn layui-btn-normal">刷新</button>
                                </div>
                                <a href="${pageContext.request.contextPath}/personInfo/writeResume.jsp"> <span class="p_but geige" track-type="trackButtonClick" event-type="3" onclick="">编辑</span></a>
                            </div>
                        </div>



                    </div>
                    <div class="rview">
                        <div class="pre" style="display: none;"></div>
                        <div class="rli">
                            <img class="man" src="${pageContext.request.contextPath}/images/man.png" alt="头像" width="85" height="104">
                            <a class="a" track-type="trackButtonClick" event-type="1" href="${pageContext.request.contextPath}/personInfo/writeResume.jsp">设置</a>
                            <div class="rcon" style="margin-top: -36.5px;">
                                <div class="h1 e1"><a href="javascript:void(0);" title="我的简历" onclick="edit(395874845,0,'//i.51job.com/resume')">我的简历</a><em class="gk">对招贤公开</em></div>
                                <div class="e">
                                    <label>更新：</label>
                                    <span class="refreshdate" id="refreshdate_39587484">2019-09-16</span>
                                </div>
                                <div class="r1"><span title="刘宝鹤&nbsp;&nbsp;|&nbsp;&nbsp;男&nbsp;&nbsp;|&nbsp;&nbsp;22岁&nbsp;&nbsp;|&nbsp;&nbsp;2年工作经验&nbsp;&nbsp;|&nbsp;&nbsp;现居住佳木斯">刘宝鹤&nbsp;&nbsp;|&nbsp;&nbsp;男&nbsp;&nbsp;|&nbsp;&nbsp;22岁&nbsp;&nbsp;|&nbsp;&nbsp;2年工作经验&nbsp;&nbsp;|&nbsp;&nbsp;现居住佳木斯</span></div>

                            </div>
                            <div class="btnbox">
                                <div class="site-demo-button" id="layerDemo2" style="margin-bottom: 0;">
                                    <button data-method="offset" data-type="auto" class="layui-btn layui-btn-normal">刷新</button>
                                </div>
                                <a href="${pageContext.request.contextPath}/personInfo/writeResume.jsp"> <span class="p_but geige" track-type="trackButtonClick" event-type="3" onclick="">编辑</span></a>
                            </div>
                        </div>



                    </div>
                    <div class="rview">
                        <div class="pre" style="display: none;"></div>
                        <div class="rli">
                            <img class="man" src="${pageContext.request.contextPath}/images/man.png" alt="头像" width="85" height="104">
                            <a class="a" track-type="trackButtonClick" event-type="1" href="${pageContext.request.contextPath}/personInfo/writeResume.jsp">设置</a>
                            <div class="rcon" style="margin-top: -36.5px;">
                                <div class="h1 e1"><a href="javascript:void(0);" title="我的简历" onclick="edit(395874845,0,'//i.51job.com/resume')">我的简历</a><em class="gk">对招贤公开</em></div>
                                <div class="e">
                                    <label>更新：</label>
                                    <span class="refreshdate" id="refreshdate_39587445">2019-09-16</span>
                                </div>
                                <div class="r1"><span title="刘宝鹤&nbsp;&nbsp;|&nbsp;&nbsp;男&nbsp;&nbsp;|&nbsp;&nbsp;22岁&nbsp;&nbsp;|&nbsp;&nbsp;2年工作经验&nbsp;&nbsp;|&nbsp;&nbsp;现居住佳木斯">刘宝鹤&nbsp;&nbsp;|&nbsp;&nbsp;男&nbsp;&nbsp;|&nbsp;&nbsp;22岁&nbsp;&nbsp;|&nbsp;&nbsp;2年工作经验&nbsp;&nbsp;|&nbsp;&nbsp;现居住佳木斯</span></div>

                            </div>
                            <div class="btnbox">
                                <div class="site-demo-button" id="layerDemo" style="margin-bottom: 0;">
                                    <button data-method="offset" data-type="auto" class="layui-btn layui-btn-normal">刷新</button>
                                </div>
                                <a href="${pageContext.request.contextPath}/personInfo/writeResume.jsp"> <span class="p_but geige" track-type="trackButtonClick" event-type="3" onclick="">编辑</span></a>
                            </div>
                        </div>



                    </div>

                </div>
            </div>

            <div class="rsee clearfix">
                <div class="rsl r1"><a track-type="trackButtonClick" event-type="4" href="resumeBrowsed.jsp">谁看过我 <span class="c_orange" id="whoviewmenum">13</span></a></div>
                <div class="rsl r2"><a track-type="trackButtonClick" event-type="5" href="${pageContext.request.contextPath}/resumeCenter/userSet.jsp">我的申请 <span class="c_orange">8</span></a></div>
                <div class="rsl r3"><a track-type="trackButtonClick" event-type="6" href="${pageContext.request.contextPath}/resumeCenter/myCollection.jsp">我的收藏 <span class="c_orange" id="my_collection_num">1</span></a></div>
            </div>
            <div class="rex"></div>
        </div>
        <!--申请与反馈-->
        <div class="ebox">
            <div class="e_tit"><a class="a" href="http://localhost:63342/ws/xiangmu/userset.jsp">更多</a>申请与反馈</div>
            <div class="apox">
                <div class="e">
                    <div class="li l1">
                        <a class="zhn" href="#" target="_blank" title="软件工程师">软件工程师</a>
                        <span class="xz" title="6-8万/年">6-8万/年</span>
                        <br>
                        <a class="gs" target="_blank" href="#" title="爱诺达智能科技（苏州）有限公司">爱诺达智能科技（苏州）有限公司</a>
                        <span class="dq" title="苏州-工业园区">苏州-工业园区</span>
                    </div>
                    <div class="li l2">
                        <div class="rq"><label>申请于</label><span>2019-09-03</span></div>
                        <div class="jl"><label>申请简历：</label><span title="我的简历">我的简历</span></div>
                    </div>
                    <div class="li l3">
                        <div class="c_light_blue"><label>近两月申请：</label><span class="c_orange">9</span><label>人</label></div>
                    </div>

                </div>
                <div class="e">
                    <div class="li l1">
                        <a class="zhn" href="#" target="_blank" title="Java开发工程师">Java开发工程师</a>
                        <span class="xz" title="0.6-1万/月">0.6-1万/月</span>
                        <br>
                        <a class="gs" target="_blank" href="#" title="苏州中科图新网络科技有限公司">苏州中科图新网络科技有限公司</a>
                        <span class="dq" title="苏州-高新区">苏州-高新区</span>
                    </div>
                    <div class="li l2">
                        <div class="rq"><label>申请于</label><span>2019-08-24</span></div>
                        <div class="jl"><label>申请简历：</label><span title="该简历已删除">该简历已删除</span></div>
                    </div>
                    <div class="li l3">
                        <div class="c_light_blue"><label>近两月申请：</label><span class="c_orange">123</span><label>人</label></div>
                    </div>

                </div>
                <div class="e">
                    <div class="li l1">
                        <a class="zhn" href="#" target="_blank" title="高级软件工程师，Java">高级软件工程师，Java</a>
                        <span class="xz" title="15-20万/年">15-20万/年</span>
                        <br>
                        <a class="gs" target="_blank" href="#" title="苏州芯禾电子科技有限公司">苏州芯禾电子科技有限公司</a>
                        <span class="dq" title="苏州-吴江区">苏州-吴江区</span>
                    </div>
                    <div class="li l2">
                        <div class="rq"><label>申请于</label><span>2019-08-24</span></div>
                        <div class="jl"><label>申请简历：</label><span title="我的简历">我的简历</span></div>
                    </div>
                    <div class="li l3">
                        <div class="c_light_blue"><label>近两月申请：</label><span class="c_orange">88</span><label>人</label></div>
                    </div>

                </div>
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
<script src="${pageContext.request.contextPath}/js/personalCenter.js" charset="utf-8"></script>
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
                    ,area: '300px;'
                    ,shade: 0.8
                    ,id: 'LAY_layuipro' //设定一个id，防止重复弹出
                    ,btn: ['火速围观', '残忍拒绝']
                    ,btnAlign: 'c'
                    ,moveType: 1 //拖拽模式，0或者1
                    ,content: '<div style="padding: 50px; line-height: 22px; background-color: #393D49; color: #fff; font-weight: 300;">你知道吗？亲！<br>layer ≠ layui<br><br>layer只是作为Layui的一个弹层模块，由于其用户基数较大，所以常常会有人以为layui是layerui<br><br>layer虽然已被 Layui 收编为内置的弹层模块，但仍然会作为一个独立组件全力维护、升级。<br><br>我们此后的征途是星辰大海 ^_^</div>'
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
                    ,title: '提示'
                    ,offset: type //具体配置参考：http://www.layui.com/doc/modules/layer.jsp#offset
                    ,id: 'layerDemo'+type //防止重复弹出
                    ,content: '<div style="padding: 40px 200px;">'+ text +'</div>'
                    ,time: 3000 //自动关闭时间
                    ,btnAlign: 'c' //按钮居中
                    ,content: '<div style=" width: 300px; text-align: center; padding: 30px; line-height: 22px; background-color: #fff; color: #000; font-weight: 300;"><span style=" line-height: 22px;  color: #000; font-weight: 300;">刷新成功</span></div>'
                    ,shade: 0 //不显示遮罩
                    ,yes: function(){
                        layer.closeAll();
                    }
                });
            }
        };

        $('#layerDemo .layui-btn').on('click', function(){
            var othis = $(this), method = othis.data('method');
            active[method] ? active[method].call(this, othis) : '';
        });

    });
</script>
<script src="${pageContext.request.contextPath}/layui/layui.js" charset="utf-8"></script>
<!-- 注意：如果你直接复制所有代码到本地，上述js路径需要改成你本地的 -->
<script>
    layui.use(['carousel', 'form'], function(){
        var carousel = layui.carousel
            ,form = layui.form;

        //常规轮播
        carousel.render({
            elem: '#test1'
            ,arrow: 'always'
        });

        //改变下时间间隔、动画类型、高度
        carousel.render({
            elem: '#test2'
            ,interval: 1800
            ,anim: 'fade'
            ,height: '120px'
        });

        //设定各种参数
        var ins3 = carousel.render({
            elem: '#test3'
        });
        //图片轮播
        carousel.render({
            elem: '#test10'
            ,width: '778px'
            ,height: '440px'
            ,interval: 5000
        });

        //事件
        carousel.on('change(test4)', function(res){
            console.log(res)
        });

        var $ = layui.$, active = {
            set: function(othis){
                var THIS = 'layui-bg-normal'
                    ,key = othis.data('key')
                    ,options = {};

                othis.css('background-color', '#5FB878').siblings().removeAttr('style');
                options[key] = othis.data('value');
                ins3.reload(options);
            }
        };

        //监听开关
        form.on('switch(autoplay)', function(){
            ins3.reload({
                autoplay: this.checked
            });
        });

        $('.demoSet').on('keyup', function(){
            var value = this.value
                ,options = {};
            if(!/^\d+$/.test(value)) return;

            options[this.name] = value;
            ins3.reload(options);
        });

        //其它示例
        $('.demoTest .layui-btn').on('click', function(){
            var othis = $(this), type = othis.data('type');
            active[type] ? active[type].call(this, othis) : '';
        });
    });
</script>

</body>
</html>




