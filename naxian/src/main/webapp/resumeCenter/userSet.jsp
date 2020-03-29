
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
    <script src="${pageContext.request.contextPath}/layui/layui.all.js"></script>
    <script src="${pageContext.request.contextPath}/js/userSet.js"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/layui/css/layui.css"  media="all">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/userSet.css"/>

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
        <a href="${pageContext.request.contextPath}/resumeCenter/personCenter.jsp"><span>简历信息</span></a>
        <a href="${pageContext.request.contextPath}/resumeCenter/resumeCenter.jsp"><span>谁看过我</span></a>
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
        <a track-type="trackIndexClick" event-type="30" href="${pageContext.request.contextPath}/resumeCenter/resumeBrowsed.jsp" class="">
            <span>谁看过我</span>
        </a>
        <a track-type="trackIndexClick" event-type="31" href="${pageContext.request.contextPath}/resumeCenter/myCollection.jsp" class="">
            <span>我的收藏</span>
        </a>
        <a track-type="trackIndexClick" event-type="32" href="${pageContext.request.contextPath}/resumeCenter/userSet.jsp" class="on">
            <span>我的申请</span>
        </a>
        <a track-type="trackIndexClick" event-type="22" href="#" class="mbtn mk">
            <span>安全中心</span>
        </a>
    </div>
    <!--中间右侧-->
    <div class="exrt">
        <!--二级导航-->
        <div class="mt">
            <ul class="mt_l">
                <input name="accountid" type="hidden" id="accountid" value="">
                <input name="c_url" type="hidden" id="c_url" value="">
                <input name="c_token" type="hidden" id="c_token" value="">
                <input name="c_func" type="hidden" id="c_func" value="">
                <input name="c_timestamp" type="hidden" id="c_timestamp" value="">

                <input name="s_url" type="hidden" id="s_url" value="">
                <input name="s_sign" type="hidden" id="s_sign" value="">

                <li class="on"><a href="#">社会申请</a> <span>9</span></li>
            </ul>
            <ul class="mt_r" style="display: block;">
                <li>仅保留近60天的社会申请记录</li>
                <li>
                    <div class="hpBox">
                        <div class="h_head">
                            <button type="button" data-html="true" data-trigger="focus" class="btn btn-default" data-container="body" data-toggle="popover" data-placement="bottom" data-content="根据HR处理简历的一般流程，简历投递后会有如下几种状态出现：<br/>

已到达：<br/>
你的简历已经成功投递到了HR那里<br/>
已查收：<br/>
HR已查收了你的简历<br/>
已查阅：<br/>
HR已仔细查看了你的简历详细内容，还需与其他人的简历进行比较筛选<br/>
感兴趣：<br/>
HR对你的简历感兴趣，但还需参考用人部门意见等多方面考虑，才能有决定，请耐心等待！<br/>
邀面试：<br/>
终于等到你！HR已向你发送面试邀请，请到人事经理来信查看！<br/>
不匹配：<br/>
HR觉得简历和岗位要求不太匹配，可能的原因有：岗位经验不符；岗位方向不符；简历表述条理不够清晰；有更匹配的竞争对手等。也有可能HR重新考虑后会后悔自己的选择，还是会给你电话的，柳暗花明又一村的事情也会发生的。别气馁^_^<br/>
根据对部分投递职位HR反馈度的统计，给出以下数据供参考：<br/>
最近一次处理简历时间：<br/>
HR最近一次查看收件箱或搜索简历的时间<br/>
处理简历周期：<br/>
投递该公司职位后HR处理简历的平均时间<br/>
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;      我还有疑问>>" >
                                产品说明
                            </button>
                        </div>

                    </div>
                </li>
            </ul>
        </div>
        <!--社会申请 不为空-->
        <!-- tip -->
        <div class="layui-tab layui-tab-card">
            <ul class="layui-tab-title">
                <li class="layui-this">全部</li>
                <li>已查阅</li>
                <li>感兴趣</li>
                <li>邀面试</li>

            </ul>
            <div class="layui-tab-content" style="">
                <div class="layui-tab-item layui-show"><div class="exmsg" style="display:block">
                    <div class="apox">
                        <div class="e">
                            <div class="li l1">
                                <a class="zhn" href="" target="_blank" title="PE工程师">PE工程师</a>
                                <span class="xz" title="0.5-1万/月">0.5-1万/月</span>
                                <br>
                                <a class="gs" target="_blank" href="" title="华硕科技（苏州）有限公司">华硕科技（苏州）有限公司</a>
                                <span class="dq" title="苏州">苏州</span>
                            </div>
                            <div class="li l2">
                                <div class="rq">
                                    <label>申请于</label><span>2019-09-20</span>
                                </div>
                                <div class="jl"><label>申请简历：</label><span title="该简历已删除">该简历已删除</span>
                                </div>
                            </div>
                            <div class="li l3">
                                <div class="c_light_blue"><label>近两月申请：</label><span class="c_orange">7</span><label>人</label></div>
                            </div>
                            <div class="li l4">
                            </div>
                        </div>

                        <div class="e">
                            <div class="li l1">
                                <a class="zhn" href="" target="_blank" title="Java开发工程师">Java开发工程师</a>
                                <span class="xz" title="0.6-1万/月">0.6-1万/月</span>
                                <br>
                                <a class="gs" target="_blank" href="" title="苏州中科图新网络科技有限公司">苏州中科图新网络科技有限公司</a>
                                <span class="dq" title="苏州-高新区">苏州-高新区</span>
                            </div>
                            <div class="li l2">
                                <div class="rq">
                                    <label>申请于</label><span>2019-08-24</span>
                                </div>
                                <div class="jl"><label>申请简历：</label><span title="该简历已删除">该简历已删除</span>
                                </div>
                            </div>
                            <div class="li l3">
                                <div class="c_light_blue"><label>近两月申请：</label><span class="c_orange">130</span><label>人</label></div>
                            </div>
                            <div class="li l4">
                            </div>
                        </div>

                        <div class="e">
                            <div class="li l1">
                                <a class="zhn" href="" target="_blank" title="JAVA高级服务开发工程师">JAVA高级服务开发工程师</a>
                                <span class="xz" title="1.5-2万/月">1.5-2万/月</span>
                                <br>
                                <a class="gs" target="_blank" href="">苏州思必驰信息科技有限公司</a>
                                <span class="dq" title="苏州-工业园区">苏州-工业园区</span>
                            </div>
                            <div class="li l2">
                                <div class="rq">
                                    <label>申请于</label><span>2019-08-14</span>
                                </div>
                                <div class="jl"><label>申请简历：</label><span title="该简历已删除">该简历已删除</span>
                                </div>
                            </div>
                            <div class="li l3">
                                <div class="c_light_blue"><label>近两月申请：</label><span class="c_orange">146</span><label>人</label></div>
                            </div>
                            <div class="li l4">
                            </div>
                        </div>
                        <div class="e">
                            <div class="li l1">
                                <a class="zhn" href="" target="_blank" title="Intern 实习生_研发实验室_6个月">Intern 实习生_研发实验室_6个月</a>
                                <span class="xz" title="2-3千/月">2-3千/月</span>
                                <br>
                                <a class="gs" target="_blank" href="http://sika.51job.com" title="西卡（中国）有限公司">西卡（中国）有限公司</a>
                                <span class="dq" title="苏州-工业园区">苏州-工业园区</span>
                            </div>
                            <div class="li l2">
                                <div class="rq">
                                    <label>申请于</label><span>2019-08-07</span>
                                </div>
                                <div class="jl"><label>申请简历：</label><span title="该简历已删除">该简历已删除</span>
                                </div>
                            </div>
                            <div class="li l3">
                                <div class="c_light_blue"><label>近两月申请：</label><span class="c_orange">15</span><label>人</label></div>
                            </div>
                            <div class="li l4">
                            </div>
                        </div>
                    </div>
                    <!--分页-->

                    <div class="dw_page">
                        <div class="p_box">
                            <div class="p_wp">
                                <div class="p_in">
                                    <ul><li class="bk"><span>上一页</span></li><li class="on">1</li><li class="bk"><span>下一页</span></li></ul><span class="td">共1页，到第</span><input id="jump_page" class="mytxt" type="text" value="1"><span class="td">页</span><span class="og_but" onclick="jump_page();">确定</span></div></div></div></div>                <!--分页-->
                </div></div>
                <div class="layui-tab-item">2</div>
                <div class="layui-tab-item">3</div>
                <div class="layui-tab-item">4</div>
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
<script>
    $('.mbtn').click(function() {
        if($(this).hasClass('mk')){
            $(this).removeClass('mk');
            $('.more').css('display','none');
            $(this).attr("event-type", "22")
        }else{
            $(this).addClass('mk');
            $('.more').css('display','block');
            $(this).attr("event-type", "21")
        }
    });
</script>
<!--弹出框-->
<script>
    $(document).ready(function(){
        $('[data-toggle="popover"]').popover();

    })

</script>
</body>
</html>




