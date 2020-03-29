
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title>简历中心</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/dist/css/bootstrap.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/dist/css/bootstrap-theme.css">


    <script src="${pageContext.request.contextPath}/js/jquery-3.4.1.js"></script>
    <script src="${pageContext.request.contextPath}/dist/js/bootstrap.js"></script>
    <script src="${pageContext.request.contextPath}/dist/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/layui/layui.all.js"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/layui/css/layui.css"  media="all">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/resumeBrowse.css"/>

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
        <a track-type="trackIndexClick" event-type="28" href="${pageContext.request.contextPath}/resumeCenter/personCenter.jsp" class="">
            <span>我的个人中心</span>
        </a>
        <a track-type="trackIndexClick" event-type="29" href="${pageContext.request.contextPath}/resumeCenter/resumeCenter.jsp" class="">
            <span>简历中心
            <em class="new"></em>
            </span>
        </a>
        <a track-type="trackIndexClick" event-type="30" href="${pageContext.request.contextPath}/resumeCenter/resumeBrowsed.jsp" class="on">
            <span>谁看过我</span>
        </a>
        <a track-type="trackIndexClick" event-type="31" href="${pageContext.request.contextPath}/resumeCenter/myCollection.jsp" class="">
            <span>我的收藏</span>
        </a>
        <a track-type="trackIndexClick" event-type="32" href="${pageContext.request.contextPath}/resumeCenter/userSet.jsp" class="">
            <span>我的申请</span>
        </a>
        <a track-type="trackIndexClick" event-type="22" href="#" class="mbtn mk">
            <span>安全中心</span>
        </a>
    </div>
    <!--右侧-->
    <div class="exrt">
        <div class="mt">
            <ul class="mt_l">
                <li class="on">谁看过我</li>
            </ul>
            <ul class="mt_r">
                <li>近60天你的简历被查看 <strong class="c_orange">13</strong> 次，共计被 <strong class="c_orange">7</strong> 家公司查看</li>
                <li>
                    <div id="hpBox" class="hpBox h_star">
                        <div class="h_head">
                            <button type="button" data-html="true" data-trigger="focus" class="btn btn-default" data-container="body" data-toggle="popover" data-placement="bottom" data-content="&nbsp;&nbsp;1. “企业搜索”和“我的申请”图标代表什么？<br/>
企业搜索：企业HR主动搜索到你的简历并查看了你的简历。<br/>
我的申请：简历投递后被企业HR查看。<br/>
&nbsp;&nbsp;2. HR兴趣度代表什么？<br/>
HR兴趣度：根据HR对你的简历的感兴趣程度，星级越高，邀请你面试的几率越大。<br/>
&nbsp;&nbsp;3. 总计看我次数是怎么计算的？<br/>
HR在筛选过程中可能不止1次查看或转发或标记你的简历，每当HR对你的简历有1次新的操作，“总计看过次数”就会+1，让你实时掌握HR的最新动态。<br/>
&nbsp;&nbsp;4. 列表按什么顺序展示？<br/>
列表按HR操作你简历的时间倒序排序，最近操作过你简历的HR，所在公司的记录会排在最上面。<br/>" >
                                产品说明
                            </button>

                        </div>

                    </div>
                </li>
            </ul>
        </div>
        <!-- tip -->

        <div class="lmsg">
            <div class="t_rt Fm clearfix">
                <div class="c">
                    <a class="btn btn_y" href="${pageContext.request.contextPath}/resumeCenter/yuan.jsp">查看图表分析</a>
                </div>
            </div>
            <div class="tit">
                <span class="txt">2019-09-05</span>
            </div>
            <div class="e">
                <div class="h qy">
                    <em>企业搜索</em>
                    <span class="cname c_disable">简历已删除</span>
                </div>
                <div class="txt">
                    <div class="li l1">
                        <p>
                            <a href="#" title="苏州艾隆信息技术有限公司">苏州艾隆信息技术有限公司</a>						            </p>
                        <p>
                            <span class="cy" title="计算机软件">计算机软件</span>
                            <span>|</span>
                            <span class="num" title="50-150人">50-150人</span>
                            <span>|</span>
                            <span title="民营公司">民营公司</span></p>
                    </div>
                    <div class="li l2">
                        <div class="c_666">HR兴趣度</div>
                        <div class="hpBox h_orange h4">
                            <div class="h_head">
                                <div class="like"><span style="width:60px;"></span></div>
                                <div class="h_arr" style="left:45px;"></div>
                            </div>
                            <div class="h_body">
                                HR对你的简历比较中意，并已将你的简历列为他的候选，不如主动出击，投递这家公司试试看哦！                </div>
                        </div>
                    </div>
                    <div class="li l3">
                        <div class="c_666">
                            总计看我 <strong class="c_orange">1</strong> 次
                            <span track-type="trackButtonClick" event-type="3" class="p_but" onclick="window.location.href=''">投一个呗</span>
                        </div>
                        <div class="f12"><label class="c_999">最近一次查看</label>&nbsp;<span class="c_orange">2019-09-05 10:46</span></div>
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
<!--弹出框-->
<script>
    $(document).ready(function(){
        $('[data-toggle="popover"]').popover();

    })

</script>
</body>
</html>




