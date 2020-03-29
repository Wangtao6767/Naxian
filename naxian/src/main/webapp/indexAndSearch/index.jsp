<%-- Created by IntelliJ IDEA. --%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<!DOCTYPE html>
<html>

<head lang="en">

    <meta charset="UTF-8">
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link rel="icon" href="${pageContext.request.contextPath}/images/top_logo.ico">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/layui/css/layui.css"  media="all">
    <link href="${pageContext.request.contextPath}/css/index.css" rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/dist/css/bootstrap.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/dist/css/bootstrap-theme.css">
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

    <script src="${pageContext.request.contextPath}/js/jquery-3.4.1.js"></script>
    <script src="${pageContext.request.contextPath}/dist/js/bootstrap.js"></script>
    <script src="${pageContext.request.contextPath}/js/index.js"></script>
    <title>纳贤首页</title>

</head>
<script>
    function iframe() {
        var sms = "";//接收session中的信息
        var perName = $("#perName").val();
        console.log(perName);
        $.ajax({
            url: "${pageContext.request.contextPath}/login/index",
            type: "post",
            data: {   //数据传输到服务器

            },
            dataType: "json",

            success: function (result) {
                sms = result.data;
                console.log(sms);
                if (sms != null) {
                    alert("欢迎登陆");
                    perName = sms;
                    console.log(perName);
                    $(".dropbtn").children(":first").children(":last-child").hide();
                    var perName1 = $(".dropbtn").append($(".dropbtn").children(":first").children(":first").text());
                    console.log(perName1);
                    perName1.text(perName)
                    // perName1.html(regist)

                } else {
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
                    <div class="dropbtn"><span><a id="perName"  class="perName" href="${pageContext.request.contextPath}/person/login.jsp"> 登录</a>
                         <img src="${pageContext.request.contextPath}/images/xiasanjiao.svg" ></span>
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
            <div class="col-md-2" >
                <a href="${pageContext.request.contextPath}/personInfo/exampleResume.jsp"> <p class="message">简历示范</p></a>
            </div>
            <div class="col-md-2">
                <a href="${pageContext.request.contextPath}/company/companyLogin.jsp"> <p class="message">企业服务</p></a>
            </div>

        </div>
    </div>
    <div class="col-md-1"></div>
</div>


<div class="top-second">
    <img src="${pageContext.request.contextPath}/images/logo.jpg" class="logo">
    <img src="${pageContext.request.contextPath}/images/logo2.jpg">
    <a href=""><span class="first-text">首页</span></a>
    <a href="${pageContext.request.contextPath}/indexAndSearch/searchCenter.jsp" ><span>职位搜索</span></a>
    <a href="" ><span>地区频道</span></a>
    <a href="${pageContext.request.contextPath}/resumeCenter/resumeCenter.jsp" ><span>简历信息</span></a>
    <a href="${pageContext.request.contextPath}/resumeCenter/resumeBrowsed.jsp" ><span>谁看过我</span></a>
    <div class="top-down"></div>
</div>


<div class="main" >
    <!-- 搜索框-->
    <div class="contain-header" >
        <div class="search-wrapper">
            <div id="search_box" class="search_box" data-lg-tj-track-code="index_search" data-lg-tj-track-type="1">
                <form id="searchForm" class="searchForm clearfix" name="searchForm" action="" method="get">
                    <span role="status" aria-live="polite" class="ui-helper-hidden-accessible"></span>
                    <input type="text" id="search_input" class="search_input ui-autocomplete-input" tabindex="1" maxlength="64" autocomplete="off" value="" placeholder="搜索职位、公司或地点" style="color: rgb(153, 153, 153);">
                    <input type="hidden" name="labelWords" id="labelWords" value="">
                    <input type="hidden" name="fromSearch" id="fromSearch" value="true">
                    <input type="hidden" name="suginput" id="suginput">
                    <div id="layerDemo" class="site-demo-button">
                        <span class="layui-btn" data-method="notice" style="margin-left: 3px;margin-top: 1px">苏州+</span>
                    </div>
                    <div >
                        <span class="layui-btn" data-method="notice" style="margin-left: 100px;margin-top: -57px ">搜索</span>
                    </div>
                </form>
                <input type="hidden" id="search_py" value="">
                <input type="hidden" id="isIndex" value="true">
                <ul class="ui-autocomplete ui-front ui-menu ui-widget ui-widget-content ui-corner-all" id="ui-id-1" tabindex="0" style="display: none;"></ul>
                <p class="ht" track-type="recommendKeyword" recommend-type="1">

                    热门推荐：
                    <a href="" target="_self" style="color: rgb(255, 159, 32);" onmouseout="this.style.color='#ff9f20'" onmouseover="this.style.color='#ff6000'">纳贤招聘</a>
                    <a href="" target="_self">销售</a>
                    <a href="" target="_self">java</a>
                    <a href="" target="_self">人事</a>
                    <a href="" target="_self">会计</a>
                    <a href="" target="_self">UI</a>

                    <a href="" target="_self">平面设计</a>
                    <a href="" target="_self">行政</a>
                    <a href="" target="_self">web前端</a>
                    <a href="" target="_self">房地产</a>
                </p>
            </div>
        </div>
    </div>
    <!--主体部分-->
    <div class="container-body">
        <div class="clearfix">
            <!--左边-->
            <div id="sidebar" class="sidebar"  >
                <div class="mainNavs"style="height: 440px;" >
                    <div class="menu_box">
                        <div class="menu_main job_hopping">
                            <div class="category-list">
                                <h2>
                                    Java
                                </h2>
                                <a  href=""><h3>Java开发工程师</h3></a>
                                <a  href=""><h3>Java高级开发工程师</h3></a>
                                <a  href=""><h3>Java架构师</h3></a>
                                <a  href=""><h3>Java开发经理</h3></a>

                                <i class="arrow"></i>
                            </div>
                        </div>

                    </div>
                    <div class="menu_box">
                        <div class="menu_main job_hopping">
                            <div class="category-list">
                                <h2>
                                    C


                                </h2>

                                <a  href=""><h3>C语言开发工程师</h3></a>

                                <a  href=""><h3>C语言工程师</h3></a>

                                <i class="arrow"></i>
                            </div>
                        </div>
                    </div>
                    <div class="menu_box">
                        <div class="menu_main job_hopping">
                            <div class="category-list">
                                <h2>
                                   C++


                                </h2>


                                <a href=""><h3>C++开发工程师</h3></a>

                                <a href=""><h3>C++高级开发工程师</h3></a>

                                <a href=""><h3>C++架构师</h3></a>


                                <i class="arrow"></i>
                            </div>
                        </div>

                    </div>
                    <div class="menu_box">
                        <div class="menu_main job_hopping">
                            <div class="category-list">
                                <h2>
                                   Python


                                </h2>

                                <a href=""><h3>Python工程师</h3></a>
                                <a href=""><h3>Python数据工程师</h3></a>
                                <i class="arrow"></i>
                            </div>
                        </div>

                    </div>
                    <div class="menu_box">
                        <div class="menu_main job_hopping">
                            <div class="category-list">
                                <h2>
                                    DBA

                                </h2>

                                <a href=""><h3>DBA工程师</h3></a>

                                <a href=""><h3>Mysql DBA</h3></a>

                                <a href=""><h3>Oracle DBA</h3></a>



                                <a href=""><h3>DBA数据库工程师</h3></a>
                                <i class="arrow"></i>
                            </div>
                        </div>

                    </div>
                    <div class="menu_box">
                        <div class="menu_main job_hopping">
                            <div class="category-list">
                                <h2>
                                   移动开发


                                </h2>





                                <a href=""><h3>移动开发工程师</h3></a>
                                <a href=""><h3>android开发工程师</h3></a>
                                <a href=""><h3>iOS开发工程师</h3></a>

                                <i class="arrow"></i>
                            </div>
                        </div>

                    </div>
                    <div class="menu_box">
                        <div class="menu_main job_hopping">
                            <div class="category-list">
                                <h2>

                                    测试

                                </h2>





                                <a href=""><h3>测试工程师</h3></a>
                                <a href=""><h3>软件测试工程师</h3></a>
                                <a href=""><h3>系统测试工程师</h3></a>




                                <i class="arrow"></i>
                            </div>
                        </div>

                    </div>
                    <div class="menu_box">
                        <div class="menu_main job_hopping">
                            <div class="category-list">
                                <h2>
                                运维


                                </h2>





                                <a href=""><h3>系统运维工程师</h3></a>
                                <a href=""><h3>运维工程师</h3></a>
                                <a href=""><h3>IT运维</h3></a>


                                <i class="arrow"></i>
                            </div>
                        </div>

                    </div>
                    <!--添加-->






                </div>
            </div>
            <!--右边-->
            <div class="layui-carousel" id="test10" style="height: 383px">

                <div carousel-item="" id="banner" >
                    <div><img src="${pageContext.request.contextPath}/images/bg_01.JPG " style="width: 778px;height: 440px;"></div>
                    <div><img src="${pageContext.request.contextPath}/images/bg_02.JPG "style="width: 778px;height: 440px;"></div>
                    <div><img src="${pageContext.request.contextPath}/images/bg_03.JPG "style="width: 778px;height: 440px;"></div>
                    <div><img src="${pageContext.request.contextPath}/images/bg_04.JPG "style="width: 778px;height: 440px;"></div>

                </div>
            </div>
            <!--工作详情-->
            <div class="layui-tab layui-tab-brief" lay-filter="docDemoTabBrief">
                <ul class="layui-tab-title">
                    <li class="layui-this">24Hour热门</li>
                    <li >最新职位</li>

                </ul>
                <!--放入工作详情-->
                <div class="layui-tab-content" >
                    <div class="layui-tab-item layui-show">
                        <ul class="position_list_ul ulList" id="LAY_demo2">

                            <li class="position_list_item default_list" >
                                <div class="pli_top">
                                    <div class="clearfix pli_top_l">
                                        <div class="position_name fl">
                                            <h2 class="dib clearfix">
                                                <span><a class="position_link fl wordCut " href="">DBA</a></span>
                                            </h2>
                                            <h2 class="dib clearfix">
                                                 <span class="dib create-time"> [18:54发布] </span>
                                            </h2>
                                            <h2 class="dib clearfix"><span class="salary fr">20k-30k</span></h2>
                                        </div>

                                    </div>
                                    <div class="position_main_info wordCut">
                                        <span>经验5-10年</span>
                                        <span>大专</span>
                                    </div>
                                    <div class="labels">
                                        <div class="pli_btm_l">
                                            <span class="wordCut" title="移动互联网">移动互联网</span>
                                            <span class="wordCut" title="MySQL">MySQL</span>
                                            <span class="wordCut" title="数据架构">数据架构</span>
                                        </div>
                                    </div>
                                    <div class="pli_btm clearfix">
                                        <a href="" class="fl" target="_blank" >
                                            <img class="company-logo" src="${pageContext.request.contextPath}/images/company_name1.png" >
                                        </a>

                                        <div class="bottom-right">
                                            <h3 class="company_name wordCut">
                                                <a href="" target="_blank"  >心理壹点灵</a>
                                            </h3>
                                            <h3 class="industry wordCut">
                                                <span>移动互联网,医疗丨健康</span>
                                                <span>A轮</span>
                                                <span>杭州</span>


                                            </h3>


                                        </div>

                                    </div>
                                </div>
                            </li>
                            <li class="position_list_item default_list" >
                                <div class="pli_top">
                                    <div class="clearfix pli_top_l">
                                        <div class="position_name fl">
                                            <h2 class="dib clearfix">
                                                <span><a class="position_link fl wordCut " href="">DBA</a></span>
                                            </h2>
                                            <h2 class="dib clearfix">
                                                 <span class="dib create-time"> [18:54发布] </span>
                                            </h2>
                                            <h2 class="dib clearfix"><span class="salary fr">20k-30k</span></h2>
                                        </div>

                                    </div>
                                    <div class="position_main_info wordCut">
                                        <span>经验5-10年</span>
                                        <span>大专</span>
                                    </div>
                                    <div class="labels">
                                        <div class="pli_btm_l">
                                            <span class="wordCut" title="移动互联网">移动互联网</span>
                                            <span class="wordCut" title="MySQL">MySQL</span>
                                            <span class="wordCut" title="数据架构">数据架构</span>
                                        </div>
                                    </div>
                                    <div class="pli_btm clearfix">
                                        <a href="" class="fl" target="_blank" >
                                            <img class="company-logo" src="//www.lgstatic.com/thumbnail_100x100/i/image2/M01/88/56/CgotOVuQz1SAcRPwAAAUfTglB_4476.png" >
                                        </a>

                                        <div class="bottom-right">
                                            <h3 class="company_name wordCut">
                                                <a href="https://www.lagou.com/gongsi/105456.jsp" target="_blank"  >心理壹点灵</a>
                                            </h3>
                                            <h3 class="industry wordCut">
                                                <span>移动互联网,医疗丨健康</span>
                                                <span>A轮</span>
                                                <span>杭州</span>


                                            </h3>


                                        </div>

                                    </div>
                                </div>
                            </li>
                            <li class="position_list_item default_list" >
                                <div class="pli_top">
                                    <div class="clearfix pli_top_l">
                                        <div class="position_name fl">
                                            <h2 class="dib clearfix">
                                                <span><a class="position_link fl wordCut " href="">DBA</a></span>
                                            </h2>
                                            <h2 class="dib clearfix">
                                                 <span class="dib create-time"> [18:54发布] </span>
                                            </h2>
                                            <h2 class="dib clearfix"><span class="salary fr">20k-30k</span></h2>
                                        </div>

                                    </div>
                                    <div class="position_main_info wordCut">
                                        <span>经验5-10年</span>
                                        <span>大专</span>
                                    </div>
                                    <div class="labels">
                                        <div class="pli_btm_l">
                                            <span class="wordCut" title="移动互联网">移动互联网</span>
                                            <span class="wordCut" title="MySQL">MySQL</span>
                                            <span class="wordCut" title="数据架构">数据架构</span>
                                        </div>
                                    </div>
                                    <div class="pli_btm clearfix">
                                        <a href="" class="fl" target="_blank" >
                                            <img class="company-logo" src="//www.lgstatic.com/thumbnail_100x100/i/image2/M01/88/56/CgotOVuQz1SAcRPwAAAUfTglB_4476.png" >
                                        </a>

                                        <div class="bottom-right">
                                            <h3 class="company_name wordCut">
                                                <a href="https://www.lagou.com/gongsi/105456.jsp" target="_blank"  >心理壹点灵</a>
                                            </h3>
                                            <h3 class="industry wordCut">
                                                <span>移动互联网,医疗丨健康</span>
                                                <span>A轮</span>
                                                <span>杭州</span>


                                            </h3>


                                        </div>

                                    </div>
                                </div>
                            </li>





                        </ul>

                    </div>
                    <div class="layui-tab-item">
                        <ul class="position_list_ul">
                            <li class="position_list_item default_list" >
                                <div class="pli_top">
                                    <div class="clearfix pli_top_l">
                                        <div class="position_name fl">
                                            <h2 class="dib clearfix">
                                                <span><a class="position_link fl wordCut " href="">DBA</a></span>
                                            </h2>
                                            <h2 class="dib clearfix">
                                                 <span class="dib create-time"> [18:54发布] </span>
                                            </h2>
                                            <h2 class="dib clearfix"><span class="salary fr">20k-30k</span></h2>
                                        </div>

                                    </div>
                                    <div class="position_main_info wordCut">
                                        <span>经验5-10年</span>
                                        <span>大专</span>
                                    </div>
                                    <div class="labels">
                                        <div class="pli_btm_l">
                                            <span class="wordCut" title="移动互联网">移动互联网</span>
                                            <span class="wordCut" title="MySQL">MySQL</span>
                                            <span class="wordCut" title="数据架构">数据架构</span>
                                        </div>
                                    </div>
                                    <div class="pli_btm clearfix">
                                        <a href="" class="fl" target="_blank" >
                                            <img class="company-logo" src="//www.lgstatic.com/thumbnail_100x100/i/image2/M01/88/56/CgotOVuQz1SAcRPwAAAUfTglB_4476.png" >
                                        </a>

                                        <div class="bottom-right">
                                            <h3 class="company_name wordCut">
                                                <a href="https://www.lagou.com/gongsi/105456.jsp" target="_blank"  >心理壹点灵</a>
                                            </h3>
                                            <h3 class="industry wordCut">
                                                <span>移动互联网,医疗丨健康</span>
                                                <span>A轮</span>
                                                <span>杭州</span>


                                            </h3>


                                        </div>

                                    </div>
                                </div>
                            </li>
                            <li class="position_list_item default_list" >
                                <div class="pli_top">
                                    <div class="clearfix pli_top_l">
                                        <div class="position_name fl">
                                            <h2 class="dib clearfix">
                                                <span><a class="position_link fl wordCut " href="">DBA</a></span>
                                            </h2>
                                            <h2 class="dib clearfix">
                                                 <span class="dib create-time"> [18:54发布] </span>
                                            </h2>
                                            <h2 class="dib clearfix"><span class="salary fr">20k-30k</span></h2>
                                        </div>

                                    </div>
                                    <div class="position_main_info wordCut">
                                        <span>经验5-10年</span>
                                        <span>大专</span>
                                    </div>
                                    <div class="labels">
                                        <div class="pli_btm_l">
                                            <span class="wordCut" title="移动互联网">移动互联网</span>
                                            <span class="wordCut" title="MySQL">MySQL</span>
                                            <span class="wordCut" title="数据架构">数据架构</span>
                                        </div>
                                    </div>
                                    <div class="pli_btm clearfix">
                                        <a href="" class="fl" target="_blank" >
                                            <img class="company-logo" src="//www.lgstatic.com/thumbnail_100x100/i/image2/M01/88/56/CgotOVuQz1SAcRPwAAAUfTglB_4476.png" >
                                        </a>

                                        <div class="bottom-right">
                                            <h3 class="company_name wordCut">
                                                <a href="https://www.lagou.com/gongsi/105456.jsp" target="_blank"  >心理壹点灵</a>
                                            </h3>
                                            <h3 class="industry wordCut">
                                                <span>移动互联网,医疗丨健康</span>
                                                <span>A轮</span>
                                                <span>杭州</span>


                                            </h3>


                                        </div>

                                    </div>
                                </div>
                            </li>
                            <li class="position_list_item default_list" >
                                <div class="pli_top">
                                    <div class="clearfix pli_top_l">
                                        <div class="position_name fl">
                                            <h2 class="dib clearfix">
                                                <span><a class="position_link fl wordCut " href="">DBA</a></span>
                                            </h2>
                                            <h2 class="dib clearfix">
                                                 <span class="dib create-time"> [18:54发布] </span>
                                            </h2>
                                            <h2 class="dib clearfix"><span class="salary fr">20k-30k</span></h2>
                                        </div>

                                    </div>
                                    <div class="position_main_info wordCut">
                                        <span>经验5-10年</span>
                                        <span>大专</span>
                                    </div>
                                    <div class="labels">
                                        <div class="pli_btm_l">
                                            <span class="wordCut" title="移动互联网">移动互联网</span>
                                            <span class="wordCut" title="MySQL">MySQL</span>
                                            <span class="wordCut" title="数据架构">数据架构</span>
                                        </div>
                                    </div>
                                    <div class="pli_btm clearfix">
                                        <a href="" class="fl" target="_blank" >
                                            <img class="company-logo" src="//www.lgstatic.com/thumbnail_100x100/i/image2/M01/88/56/CgotOVuQz1SAcRPwAAAUfTglB_4476.png" >
                                        </a>

                                        <div class="bottom-right">
                                            <h3 class="company_name wordCut">
                                                <a href="https://www.lagou.com/gongsi/105456.jsp" target="_blank"  >心理壹点灵</a>
                                            </h3>
                                            <h3 class="industry wordCut">
                                                <span>移动互联网,医疗丨健康</span>
                                                <span>A轮</span>
                                                <span>杭州</span>


                                            </h3>


                                        </div>

                                    </div>
                                </div>
                            </li>
                            <li class="position_list_item default_list" >
                                <div class="pli_top">
                                    <div class="clearfix pli_top_l">
                                        <div class="position_name fl">
                                            <h2 class="dib clearfix">
                                                <span><a class="position_link fl wordCut " href="">DBA</a></span>
                                            </h2>
                                            <h2 class="dib clearfix">
                                                 <span class="dib create-time"> [18:54发布] </span>
                                            </h2>
                                            <h2 class="dib clearfix"><span class="salary fr">20k-30k</span></h2>
                                        </div>

                                    </div>
                                    <div class="position_main_info wordCut">
                                        <span>经验5-10年</span>
                                        <span>大专</span>
                                    </div>
                                    <div class="labels">
                                        <div class="pli_btm_l">
                                            <span class="wordCut" title="移动互联网">移动互联网</span>
                                            <span class="wordCut" title="MySQL">MySQL</span>
                                            <span class="wordCut" title="数据架构">数据架构</span>
                                        </div>
                                    </div>
                                    <div class="pli_btm clearfix">
                                        <a href="" class="fl" target="_blank" >
                                            <img class="company-logo" src="//www.lgstatic.com/thumbnail_100x100/i/image2/M01/88/56/CgotOVuQz1SAcRPwAAAUfTglB_4476.png" >
                                        </a>

                                        <div class="bottom-right">
                                            <h3 class="company_name wordCut">
                                                <a href="https://www.lagou.com/gongsi/105456.jsp" target="_blank"  >心理壹点灵</a>
                                            </h3>
                                            <h3 class="industry wordCut">
                                                <span>移动互联网,医疗丨健康</span>
                                                <span>A轮</span>
                                                <span>杭州</span>


                                            </h3>


                                        </div>

                                    </div>
                                </div>
                            </li>
                            <li class="position_list_item default_list" >
                                <div class="pli_top">
                                    <div class="clearfix pli_top_l">
                                        <div class="position_name fl">
                                            <h2 class="dib clearfix">
                                                <span><a class="position_link fl wordCut " href="">DBA</a></span>
                                            </h2>
                                            <h2 class="dib clearfix">
                                                 <span class="dib create-time"> [18:54发布] </span>
                                            </h2>
                                            <h2 class="dib clearfix"><span class="salary fr">20k-30k</span></h2>
                                        </div>

                                    </div>
                                    <div class="position_main_info wordCut">
                                        <span>经验5-10年</span>
                                        <span>大专</span>
                                    </div>
                                    <div class="labels">
                                        <div class="pli_btm_l">
                                            <span class="wordCut" title="移动互联网">移动互联网</span>
                                            <span class="wordCut" title="MySQL">MySQL</span>
                                            <span class="wordCut" title="数据架构">数据架构</span>
                                        </div>
                                    </div>
                                    <div class="pli_btm clearfix">
                                        <a href="" class="fl" target="_blank" >
                                            <img class="company-logo" src="//www.lgstatic.com/thumbnail_100x100/i/image2/M01/88/56/CgotOVuQz1SAcRPwAAAUfTglB_4476.png" >
                                        </a>

                                        <div class="bottom-right">
                                            <h3 class="company_name wordCut">
                                                <a href="https://www.lagou.com/gongsi/105456.jsp" target="_blank"  >心理壹点灵</a>
                                            </h3>
                                            <h3 class="industry wordCut">
                                                <span>移动互联网,医疗丨健康</span>
                                                <span>A轮</span>
                                                <span>杭州</span>


                                            </h3>


                                        </div>

                                    </div>
                                </div>
                            </li>
                            <li class="position_list_item default_list" >
                                <div class="pli_top">
                                    <div class="clearfix pli_top_l">
                                        <div class="position_name fl">
                                            <h2 class="dib clearfix">
                                                <span><a class="position_link fl wordCut " href="">DBA</a></span>
                                            </h2>
                                            <h2 class="dib clearfix">
                                                 <span class="dib create-time"> [18:54发布] </span>
                                            </h2>
                                            <h2 class="dib clearfix"><span class="salary fr">20k-30k</span></h2>
                                        </div>

                                    </div>
                                    <div class="position_main_info wordCut">
                                        <span>经验5-10年</span>
                                        <span>大专</span>
                                    </div>
                                    <div class="labels">
                                        <div class="pli_btm_l">
                                            <span class="wordCut" title="移动互联网">移动互联网</span>
                                            <span class="wordCut" title="MySQL">MySQL</span>
                                            <span class="wordCut" title="数据架构">数据架构</span>
                                        </div>
                                    </div>
                                    <div class="pli_btm clearfix">
                                        <a href="" class="fl" target="_blank" >
                                            <img class="company-logo" src="//www.lgstatic.com/thumbnail_100x100/i/image2/M01/88/56/CgotOVuQz1SAcRPwAAAUfTglB_4476.png" >
                                        </a>

                                        <div class="bottom-right">
                                            <h3 class="company_name wordCut">
                                                <a href="https://www.lagou.com/gongsi/105456.jsp" target="_blank"  >心理壹点灵</a>
                                            </h3>
                                            <h3 class="industry wordCut">
                                                <span>移动互联网,医疗丨健康</span>
                                                <span>A轮</span>
                                                <span>杭州</span>


                                            </h3>


                                        </div>

                                    </div>
                                </div>
                            </li>

                        </ul>
                    </div>
                </div>
            </div>

        </div>
    </div>

    <div class="main-bottom"></div>

</div>








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
<%--首页跳转url--%>
<script>
    window.onload = function () {
        var  urlStr = "${pageContext.request.contextPath}/index/get"
        window.location.href = urlStr;
    }

   /* function select() {
        $.ajax({
            type:"get",
            url:"index/get",
            datatype:"json",
            success:function (data) {
                var ulList = $(".ulList");
                ulList.empty();
                for (var i = 0;i<data.length;i++){
                    var ind = data[i];
                    var ele = '<div class="pli_top">\n'+
                            '<div class="clearfix pli_top_l">\n'+
                            '<div class="position_name fl">\n'+
                            '<h2 class="dib clearfix">\n'+
                        <span><a class="position_link fl wordCut " href=""></a></span>


                }
            }
        })*/
    }
</script>
<%--轮播图--%>
<script src="${pageContext.request.contextPath}/layui/layui.js" charset="utf-8"></script>
<script>
    layui.use('carousel', function(){
        var carousel = layui.carousel;
        //建造实例
        var ceshi = carousel.render({
            elem: '#test10'
            ,width: '778px'
            ,height: '440px'
            ,interval: 5000
        });
        ins.reload({
            elem: '#test10'
            ,width: '778px'
            ,height: '440px'
            ,interval: 5000
        })



        });
</script>

<script src="${pageContext.request.contextPath}/layui/layui.js" charset="utf-8"></script>
<script>
    layui.use('element', function(){
        var $ = layui.jquery
            ,element = layui.element; //Tab的切换功能，切换事件监听等，需要依赖element模块

        //触发事件
        var active = {
            tabAdd: function(){
                //新增一个Tab项
                element.tabAdd('demo', {
                    title: '新选项'+ (Math.random()*1000|0) //用于演示
                    ,content: '内容'+ (Math.random()*1000|0)
                    ,id: new Date().getTime() //实际使用一般是规定好的id，这里以时间戳模拟下
                })
            }

            ,tabChange: function(){
                //切换到指定Tab项
                element.tabChange('demo', '22'); //切换到：用户管理
            }
        };

        $('.site-demo-active').on('click', function(){
            var othis = $(this), type = othis.data('type');
            active[type] ? active[type].call(this, othis) : '';
        });

        //Hash地址的定位
        var layid = location.hash.replace(/^#test=/, '');
        element.tabChange('test', layid);

        element.on('tab(test)', function(elem){
            location.hash = 'test='+ $(this).attr('lay-id');
        });

    });


</script>

<%--地址弹出层--%>
<script src="${pageContext.request.contextPath}/layui/layui.js" charset="utf-8"></script>
<script>
    layui.use('layer', function(){ //独立版的layer无需执行这一句
        var $ = layui.jquery, layer = layui.layer; //独立版的layer无需执行这一句

        //触发事件
        var active = {
            setTop: function(){
                var that = this;

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
                    ,btn: ['确定', '退出']
                    ,btnAlign: 'c'
                    ,moveType: 1 //拖拽模式，0或者1
                    ,content: '<div  class="script-address" >' +
                        ' <ul >' +
                        '<li >苏州<li/>' +
                        '<li>苏州<li/>' +
                        '<li>苏州<li/>' +
                        '<li>苏州<li/>' +
                        '<li>苏州<li/>' +
                        '</ul> ' +
                        ' <br><br>' +
                        ' <ul >' +
                        '<li >上海<li/>' +
                        '<li>上海<li/>' +
                        '<li>上海<li/>' +
                        '<li>上海<li/>' +
                        '<li>上海<li/>' +
                        '</ul> ' +
                        '<br><br>' +
                        ' <ul >' +
                        '<li >南京<li/>' +
                        '<li>南京<li/>' +
                        '<li>南京<li/>' +
                        '<li>南京<li/>' +
                        '<li>南京<li/>' +
                        '</ul> ' +
                        '<br><br>' +
                        ' <ul >' +
                        '<li >北京<li/>' +
                        '<li>北京<li/>' +
                        '<li>北京<li/>' +
                        '<li>北京<li/>' +
                        '<li>北京<li/>' +
                        '</ul> ' +
                        '<br><br>' +
                        ' <ul >' +
                        '<li >成都<li/>' +
                        '<li>成都<li/>' +
                        '<li>成都<li/>' +
                        '<li>成都<li/>' +
                        '<li>成都<li/>' +
                        '</ul> ' +
                        '</div>'
                    ,success: function(layero){
                        var btn = layero.find('.layui-layer-btn');
                        btn.find('.layui-layer-btn0').attr({
                            href: 'http://www.layui.com/'
                            ,target: '_blank'
                        });
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
</body>
</html>
