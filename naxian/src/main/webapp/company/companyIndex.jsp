<%-- Created by IntelliJ IDEA. --%>

<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page isELIgnored="false"%>



<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/dist/css/bootstrap.css">
    <script rel="stylesheet" src="${pageContext.request.contextPath}/layui/layui.js"></script>
    <script src="${pageContext.request.contextPath}/js/jquery-3.4.1.js"></script>
    <script src="${pageContext.request.contextPath}/dist/js/bootstrap.js"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/companyIndex.css">
    <title>企业中心</title>
</head>
<body>
<!--导航-->
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
                    <div class="dropbtn"><span>${company.companyName}</span></div>
                    <div class="dropdown-content">
                        <a href="#">收到简历</a>
                        <a href="#">我的发布</a>
                        <a href="#">我的信息</a>
                    </div>
                </div>
            </div>
            <div class="col-md-2">
                <p>人才库</p>
            </div>
            <div class="col-md-2">
                <p><a href="${pageContext.request.contextPath}/indexAndSearch/index.jsp">首页</a></p>
            </div>
        </div>
    </div>
    <div class="col-md-1"></div>
</div>

<div class="top-second">
    <img src="${pageContext.request.contextPath}/images/logo.jpg" class="logo">
    <img src="${pageContext.request.contextPath}/images/logo2.jpg">
    <span class="first-text"><a href=""style="font-size: 15px;text-decoration: none">企业中心</a></span>
    <span><a href="recruit.jsp"style="font-size: 15px;text-decoration: none">发布招聘</a></span>
    <span><a href="#tab2"style="font-size: 15px;text-decoration: none">我的发布</a></span>
    <span><a href="#tab3"style="font-size: 15px;text-decoration: none">收到简历</a></span>
    <span><a href=""style="font-size: 15px;text-decoration: none">寻找人才</a></span>
    <div class="top-down"></div>
</div>
<div style="height: 100px;">
    <div class="col-xs-2">
        <ul class="nav nav-tab vertical-tab" role="tablist" id="vtab" style="margin-left: 20px;margin-top: 30px">
            <li role="presentation" class="active"style="font-size:20px;text-align: center">
                <a href="#tab1" aria-controls="home" role="tab"
                   data-toggle="tab"style="background-color: #e1e1e1">企业信息</a>
            </li>
            <li role="presentation"style="font-size:20px;text-align: center">
                <a href="#tab2" aria-controls="inbox" role="tab"
                   data-toggle="tab"style="background-color: #e1e1e1">我的发布</a>
            </li>
            <li role="presentation"style="font-size:20px;text-align: center">
                <a href="#tab3" aria-controls="outbox" role="tab"
                   data-toggle="tab"style="background-color: #e1e1e1">收到的简历</a>
            </li>

            <li role="presentation"style="font-size:20px;text-align: center">
                <a href="#tab5" aria-controls="outbox1" role="tab"
                   data-toggle="tab"style="background-color: #e1e1e1">增值服务</a>
            </li>

            <li role="presentation"style="font-size:20px;text-align: center">
                <a href="#tab7" aria-controls="outbox1" role="tab"
                   data-toggle="tab"style="background-color: #e1e1e1">存储</a>
            </li>
        </ul>
    </div>
    <div class="tab-content vertical-tab-content col-xs-10">
        <div role="tabpanel" class="tab-pane active" id="tab1">    <div class="exrt">
            <div class="intro_down">
                <table style="table-layout:fixed;margin-top: 50px">
                    <tbody>
                    <tr class="tr_l1"style="margin-top: 10px;margin-bottom: 20px;line-height: 15px">
                        <th class="td_c1"><span class="item_name">公司名称</span></th>
                        <th class="td_c2"><span class="item_name">公司性质</span></th>
                        <th class="td_c3"><span class="item_name">公司规模</span></th>
                    </tr>
                    <tr style="margin-bottom:0px">
                        <td class="td_c1">${company.companyName}</td>
                        <td class="td_c2">${company.companyType}</td>
                        <td class="td_c3">${company.companySize}</td>
                    </tr>
                    <tr class="tr_l2"style="margin-top:10px">
                        <th class="td_c1"><span class="item_name">公司行业</span></th>
                        <th class="td_c2"><span class="item_name">联系人</span></th>
                        <th class="td_c3"><span class="item_name">联系电话</span></th>
                    </tr>
                    <tr>
                        <td class="td_c1">${company.x}</td>
                        <td class="td_c2">${company.createBy}</td>
                        <td class="td_c3">${company.companyTelno}</td>
                    </tr>
                    <tr class="tr_l3"style="padding-top: 10px">
                        <th class="td_c1"><span class="item_name">公司地址</span></th>
                        <th class="td_c2"><span class="item_name">企业邮箱</span></th>
                        <th class="td_c3"><span class="item_name">公司官网</span></th>
                    </tr>
                    <tr class="tr_l6">
                        <td class="td_c1">${company.compayAddress}</td>
                        <td class="td_c2">${company.companyEmail}</td>
                        <td class="td_c3">${company.websiteCompany}</td>
                    </tr>
                    </tbody>
                </table>
                <div class="compony-info"style="width:1000px;height: 400px;background-color: silver;margin-top:30px;">

                        <div class="gsjj" style="margin-left: 20px;padding-top:20px;font-size: 20px"><h1>公司简介:</h1></div><br/>
                        <div class="neirong" style="padding: 30px;"><span>${company.companyIntroduction}</span></div>

                </div>
            </div>
        </div></div>
        <div role="tabpanel" class="tab-pane" id="tab2"> <div class="exrt">
            <div class="mt">
                <ul class="mt_l">
                    <li class="on">发布的招聘</li>
                </ul>

            </div>
            <div class="rbox" style="width: 1000px;">
                <div class="tit">
                    <ul class="clearfix">
                        <li class="l1">招聘职位</li>
                        <li class="l2">需要人数</li>

                        <li class="l3">操作</li>
                    </ul>
                </div>

                <div id="resume_328896" class="rli" special-type="">
                    <input type="hidden" name="resumetype" value="0">
                    <ul class="clearfix">
                        <li class="l1">
                            <a title="我的简历" href="">运营师</a>
                        </li>
                        <li class="l2 selt">
                            <span class="sval" value="0">2人</span>

                        </li>
                        <li class="l2"><em class="open" track-type="trackButtonClick" event-type="2"></em></li>
                        <li class="l3">
                            <a class="a" href="">修改</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a class="a" track-type="trackButtonClick" event-type="4" href="javascript:void(0);">删除</a>&nbsp;&nbsp;|&nbsp;&nbsp;
                        </li>
                    </ul>
                </div>
                <div id="resume_3932658" class="rli" special-type="">
                    <input type="hidden" name="resumetype" value="0">
                    <ul class="clearfix">
                        <li class="l1">
                            <a title="实习生" href="">前台服务员</a>
                        </li>
                        <li class="l2 selt">
                            <span class="sval" value="2">3人</span>


                        </li>
                        <li class="l2"><em class="off" track-type="trackButtonClick" event-type="2"></em></li>
                        <li class="l3">
                            <a class="a" href="">修改</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a class="a" track-type="trackButtonClick" event-type="4" href="javascript:void(0);">删除</a>&nbsp;&nbsp;|&nbsp;&nbsp;

                        </li>
                    </ul>
                </div>
                <div id="resume_39326258" class="rli" special-type="">
                    <input type="hidden" name="resumetype" value="0">
                    <ul class="clearfix">
                        <li class="l1">
                            <a title="实习生" href="">java工程师</a>
                        </li>
                        <li class="l2 selt">
                            <span class="sval" value="2">3人</span>


                        </li>
                        <li class="l2"><em class="off" track-type="trackButtonClick" event-type="2"></em></li>
                        <li class="l3">
                            <a class="a" href="">修改</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a class="a" track-type="trackButtonClick" event-type="4" href="javascript:void(0);">删除</a>&nbsp;&nbsp;|&nbsp;&nbsp;

                        </li>
                    </ul>
                </div>
                <div id="" class="rli" special-type="">
                    <input type="hidden" name="resumetype" value="0">
                    <ul class="clearfix">
                        <li class="l1">
                            <a title="Java初级开发" href="">Java初级开发</a>
                        </li>
                        <li class="l2 selt">
                            <span class="sval" value="2">1人</span>

                        </li>
                        <li class="l2"><em class="off" track-type="trackButtonClick" event-type="2"></em></li>
                        <li class="l3">
                            <a class="a" href="">修改</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a class="a" track-type="trackButtonClick" event-type="4" href="javascript:void(0);">删除</a>&nbsp;&nbsp;|&nbsp;&nbsp;

                        </li>
                    </ul>
                </div>
            </div>
            <div class="tlp">
                <strong>简历查看说明：</strong><br>
                <p>该纳贤招聘网平台只允许公司端查看本公司所收到的简历,且一天查看简历的数量有上限。</p>
                <p>如需继续查看更多收到的简历以及外部优秀的简历，需要办理增值业务等。</p>
                <p>最终一切解释权归纳贤招聘网站所有 。</p>
            </div>
            <div class="tlp">
                <strong>对待简历说明：</strong><br>
                <p>公司查看简历同时，不得向外部私自邪路招聘人员个人信息，如有发现，则追究其刑事责任，不得干扰招聘者工作以外的事情。</p>
            </div>
        </div></div>
        <div role="tabpanel" class="tab-pane" id="tab3">    <div class="exrt">
            <div class="mt">
                <ul class="mt_l">
                    <li class="on">收到的简历</li>
                </ul>

            </div>
            <div class="rbox"style="width: 1000px">
                <div class="tit">
                    <ul class="clearfix">
                        <li class="l1">简历名称</li>
                        <li class="l2">联系电话</li>

                        <li class="l3"style="margin-left:350px">操作</li>
                    </ul>
                </div>

                <div id="resume_368728896" class="rli" special-type="">
                    <input type="hidden" name="resumetype" value="0">
                    <ul class="clearfix">
                        <li class="l1">
                            <a title="我的简历" href="">resume</a>
                        </li>
                        <li class="l2 selt">
                            <span class="sval" value="0">12345678900</span>

                        </li>
                        <li class="l2"><em class="open" track-type="trackButtonClick" event-type="2"></em></li>
                        <li class="l3">
                            <a class="a" href="">查看</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a class="a" track-type="trackButtonClick" event-type="4" href="javascript:void(0);">删除</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a class="a" href="javascript:void(0);">发送邀约</a>
                        </li>
                    </ul>
                </div>
                <div id="resume_396326258" class="rli" special-type="">
                    <input type="hidden" name="resumetype" value="0">
                    <ul class="clearfix">
                        <li class="l1">
                            <a title="实习生" href="">简历1</a>
                        </li>
                        <li class="l2 selt">
                            <span class="sval" value="2">12345678911</span>


                        </li>
                        <li class="l2"><em class="off" track-type="trackButtonClick" event-type="2"></em></li>
                        <li class="l3">
                            <a class="a" href="">查看</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a class="a" track-type="trackButtonClick" event-type="4" href="javascript:void(0);">删除</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a class="a" href="javascript:void(0);">发送邀约</a>
                        </li>
                    </ul>
                </div>
                <div id="resume_395874845" class="rli" special-type="">
                    <input type="hidden" name="resumetype" value="0">
                    <ul class="clearfix">
                        <li class="l1">
                            <a title="Java初级开发" href="">我的简历3</a>
                        </li>
                        <li class="l2 selt">
                            <span class="sval" value="2">12345678933</span>

                        </li>
                        <li class="l2"><em class="off" track-type="trackButtonClick" event-type="2"></em></li>
                        <li class="l3">
                            <a class="a" href="">查看</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a class="a" track-type="trackButtonClick" event-type="4" href="javascript:void(0);">删除</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a class="a" href="javascript:void(0);">发送邀约</a>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="tlp">
                <strong>简历查看说明：</strong><br>
                <p>该纳贤招聘网平台只允许公司端查看本公司所收到的简历,且一天查看简历的数量有上限。</p>
                <p>如需继续查看更多收到的简历以及外部优秀的简历，需要办理增值业务等。</p>
                <p>最终一切解释权归纳贤招聘网站所有 。</p>
            </div>
            <div class="tlp">
                <strong>对待简历说明：</strong><br>
                <p>公司查看简历同时，不得向外部私自邪路招聘人员个人信息，如有发现，则追究其刑事责任，不得干扰招聘者工作以外的事情。</p>
            </div>
        </div></div>

        <div role="tabpanel" class="tab-pane" id="tab5"><div class="zengzhi"style="width: 500px;height: 500px"></div></div>

        <div role="tabpanel" class="tab-pane" id="tab7"><div class="gengduo"style="width: 500px;height: 500px"></div>

        </div>
    </div>
    <div class="gongyi"><img src="${pageContext.request.contextPath}/images/gongyi.jpg"></div>
    <div class="main-bottom"></div>
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
</body>
</html>
