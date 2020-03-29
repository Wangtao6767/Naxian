<%-- Created by IntelliJ IDEA. --%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<!DOCTYPE html>
<html>
<head lang="en">

    <meta charset="UTF-8">
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link href="${pageContext.request.contextPath}/css/searchCenter.css" rel=" stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/dist/css/bootstrap.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/dist/css/bootstrap-theme.css">
    <script src="${pageContext.request.contextPath}/js/jquery-3.4.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/dist/js/bootstrap.js"></script>
    <script src="${pageContext.request.contextPath}/layui/layui.js" charset="utf-8"></script>
    <link rel="icon" href="${pageContext.request.contextPath}/images/top_logo.ico">
    <script src="${pageContext.request.contextPath}/js/script.js"></script>

    <title>职位搜索</title>

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
    <span class="first-text" ><a href="${pageContext.request.contextPath}/indexAndSearch/index.jsp" style="text-decoration: none">首页</a></span>
    <span><a href="${pageContext.request.contextPath}/indexAndSearch/searchCenter.jsp">职位搜索</a></span>
    <span>地区频道</span>
    <a href="${pageContext.request.contextPath}/resumeCenter/personalCenter.jsp"><span>简历信息</span></a>
    <a href="${pageContext.request.contextPath}/resumeCenter/resumeBrowsed.jsp"><span>谁看过我</span></a>
    <div class="top-down"></div>
</div>

<div class="main">
    <div class="main-search">
        <div class="search-in">

            <div class="main-one">
                <span>全文搜索</span><br>
                <input type="text" maxlength="200" id="kwdselectid" placeholder="搜索全文/职位名" class="mytxt">
            </div>

            <div class="main-two"  id="layerAddress" >

                            <span data-method="notice" class="layui-btn">
                                <a href="#">地点 </a>
                            </span>

                <p>部分城市</p>
            </div>



            <div class="main-three" id="layerindustry">
                      <span data-method="notice" class="layui-btn">
                            <a href="#">行业</a>
                      </span>

                <p>选择行业</p>
            </div>



            <div class="main-four" id="layerfunction">
                     <span data-method="notice" class="layui-btn">
                        <a href="#"> 职能</a>
                     </span>
                <p>选择职能</p>
                <button class="p_but" type="button" >搜索</button>
            </div>

        </div>

    </div>

    <div class="filter">

        <ul class="select">
            <li class="select-list">
                <dl id="select1">
                    <dt>发布日期：</dt>
                    <dd class="select-all selected"><a href="#">全部</a></dd>
                    <dd><a href="#"> 24小时内</a></dd>
                    <dd><a href="#">  近三天</a></dd>
                    <dd><a href="#">  近一周</a></dd>
                    <dd><a href="#">近一月</a></dd>
                    <dd><a href="#"> 其他</a></dd>
                </dl>
            </li>
        </ul>


        <ul class="select">
            <li class="select-list">
                <dl id="select2">
                    <dt>月薪范围：</dt>
                    <dd class="select-all selected"><a href="#">全部</a></dd>
                    <dd><a href="#"> 2千以下</a></dd>
                    <dd><a href="#">2-3千</a></dd>
                    <dd><a href="#">3-4.5千</a></dd>
                    <dd><a href="#">4.5-6千</a></dd>
                    <dd><a href="#">6-8千</a></dd>
                    <dd><a href="#">0.8-1万</a></dd>
                    <dd><a href="#">1-1.5万</a></dd>
                    <dd><a href="#">1.5-2万</a></dd>
                    <dd><a href="#">2-3万</a></dd>
                    <dd><a href="#">3-4万</a></dd>
                    <dd><a href="#">4-5万</a></dd>
                </dl>
            </li>
        </ul>



        <ul class="select">
            <li class="select-list">
                <dl id="select3">
                    <dt>公司性质：</dt>
                    <dd class="select-all selected"><a href="#">全部</a></dd>
                    <dd><a href="#">    国企</a></dd>
                    <dd><a href="#">外资(欧美)</a></dd>
                    <dd><a href="#">外资(非欧美)</a></dd>
                    <dd><a href="#">上市公司</a></dd>
                    <dd><a href="#">合资</a></dd>
                    <dd><a href="#">民营公司</a></dd>
                    <dd><a href="#">外企代表处</a></dd>
                    <dd><a href="#">政府机关</a></dd>
                    <dd><a href="#">事业单位</a></dd>
                </dl>
            </li>
        </ul>




        <ul class="select">
            <li class="select-list">
                <dl id="select4">
                    <dt>工作年限：</dt>
                    <dd class="select-all selected"><a href="#">全部</a></dd>
                    <dd><a href="#">无经验</a></dd>
                    <dd><a href="#">    1-3年</a></dd>
                    <dd><a href="#">  3-5年</a></dd>
                    <dd><a href="#">   5-10年</a></dd>
                    <dd><a href="#">10年以上</a></dd>

                </dl>
            </li>
        </ul>




        <ul class="select">
            <li class="select-list">
                <dl id="select5">
                    <dt>学历要求：</dt>
                    <dd class="select-all selected"><a href="#">全部</a></dd>
                    <dd><a href="#">初中及以下</a></dd>
                    <dd><a href="#">高中</a></dd>
                    <dd><a href="#">中技</a></dd>
                    <dd><a href="#">中专</a></dd>
                    <dd><a href="#">大专</a></dd>
                    <dd><a href="#">本科</a></dd>
                    <dd><a href="#">硕士</a></dd>
                    <dd><a href="#">博士</a></dd>
                </dl>
            </li>
        </ul>





        <ul class="select">
            <li class="select-list">
                <dl id="select6">
                    <dt>公司规模：</dt>
                    <dd class="select-all selected"><a href="#">全部</a></dd>
                    <dd><a href="#">少于50人</a></dd>
                    <dd><a href="#">50-150人</a></dd>
                    <dd><a href="#">150-500人 </a></dd>
                    <dd><a href="#"> 500-1000人</a></dd>
                    <dd><a href="#">1000-5000人</a></dd>
                    <dd><a href="#"> 5000-10000人</a></dd>
                    <dd><a href="#">10000人以上</a></dd>
                </dl>
            </li>
        </ul>


        <ul class="select">
            <li class="select-list">
                <dl id="select7">
                    <dt>工作类型：</dt>
                    <dd class="select-all selected"><a href="#">全部</a></dd>
                    <dd><a href="#">全职</a></dd>
                    <dd><a href="#">兼职</a></dd>
                    <dd><a href="#">实习全职</a></dd>
                    <dd><a href="#">实习兼职</a></dd>mcnvb
                </dl>
            </li>
            <br>
        </ul>
        <ul style="list-style: none">
            <li class="select-result" >
                <dl>
                    <dt>已选条件：</dt>
                    <dd class="select-no">暂时没有选择过滤条件</dd>
                </dl>
            </li>
        </ul>
    </div>

    <br>
    <div class="tlc">

        <div class="on">
            <input type="checkbox"  class="select-all2" onclick="selectAllJobs()"> <span  >全选</span>
        </div>

        <div class="on">
            <span class="t1"> 职位名</span>
            <span class="t2"> 公司名</span>
            <span class="t3">工作地点</span>
            <span class="t4">薪资</span>
        </div>

        <div class="on">
            <input type="checkbox" class="select-check" name="job" value="苏州企业销售员">
            <span class="title-job"><a href="${pageContext.request.contextPath}/indexAndSearch/jobApplication.jsp">苏州企业销售员</a></span>
            <span class="title1">15-20万/年</span>
            <span class="title2">苏州</span>
            <span  class="title3"><a href="company.jsp">苏州友勤医学检验所有限公司</a></span>

        </div>

        <div class="on">
            <input type="checkbox"  class="select-check" name="job" value="苏州华为研究所科研员">
            <span class="title-job"><a href="${pageContext.request.contextPath}/indexAndSearch/jobApplication.jsp">苏州华为研究所科研员</a></span>
            <span class="title1">6-8千/月</span>
            <span class="title2">异地招聘</span>
            <span class="title3"><a href="${pageContext.request.contextPath}/indexAndSearch/company.jsp">深圳市乐有家控股集团有限公司</a></span>

        </div>

        <div class="on">
            <input type="checkbox"  class="select-check" name="job" value="苏州驰星教育">
            <span class="title-job">  <a href="${pageContext.request.contextPath}/indexAndSearch/jobApplication.jsp">苏州销售工程师</a>  </span>
            <span class="title1">6-8千/月</span>
            <span class="title2">异地招聘</span>
            <span class="title3">   <a href="${pageContext.request.contextPath}/indexAndSearch/company.jsp">雷兹盾.中国 NYSTEIN Inc</a></span>
        </div>

        <div class="on">
            <input type="checkbox"  class="select-check" name="job" value="苏州驰星教育">
            <span class="title-job"><a href="${pageContext.request.contextPath}/indexAndSearch/jobApplication.jsp">苏州销售代表/KA业务员</a></span>
            <span class="title1">6-9千/月</span>
            <span class="title2">苏州</span>
            <span class="title3">  <a href="${pageContext.request.contextPath}/indexAndSearch/company.jsp"> 上海聚进商贸发展有限公司</a></span>
        </div>

        <div class="on">
            <input type="checkbox"  class="select-check" name="job" value="苏州驰星教育">
            <span class="title-job"><a href="${pageContext.request.contextPath}/indexAndSearch/jobApplication.jsp">苏州销售代表</a></span>
            <span class="title1">6-8千/月</span>
            <span class="title2">苏州</span>
            <span class="title3"> <a href="${pageContext.request.contextPath}/indexAndSearch/company.jsp">上海康玛斯宠物用品有限公司</a></span>
        </div>

        <div class="on">
            <input type="checkbox"  class="select-check" name="job" value="苏州驰星教育">
            <span class="title-job"> <a href="${pageContext.request.contextPath}/indexAndSearch/jobApplication.jsp">苏州销售业务员</a> </span>
            <span class="title1">0.5-1万/月</span>
            <span class="title2">苏州-姑苏区</span>
            <span class="title3">   <a href="${pageContext.request.contextPath}/indexAndSearch/company.jsp">苏州凡智网络科技有限公司</a></span>
        </div>

        <div class="on">
            <input type="checkbox"  class="select-check" name="job" value="苏州驰星教育">
            <span class="title-job"> <a href="${pageContext.request.contextPath}/indexAndSearch/jobApplication.jsp">驻苏州销售代表</a></span>
            <span class="title1">0.6-1.2万/月</span>
            <span class="title2">苏州</span>
            <span class="title3"><a href="${pageContext.request.contextPath}/indexAndSearch/company.jsp">中关村华康基因研究院</a></span>
        </div>



        <div class="on">
            <input type="checkbox"  class="select-check" name="job" value="苏州驰星教育">
            <span class="title-job"> <a href="${pageContext.request.contextPath}/indexAndSearch/jobApplication.jsp">苏州分公司---大客户经理</a></span>
            <span class="title1">2-5万/月</span>
            <span class="title2">异地招聘</span>
            <span class="title3">  <a href="${pageContext.request.contextPath}/indexAndSearch/company.jsp"> 深圳铭达康科技有限公司</a></span>
        </div>


        <div class="on">
            <input type="checkbox"  class="select-check" name="job" value="苏州驰星教育">
            <span class="title-job"> <a href="${pageContext.request.contextPath}/indexAndSearch/jobApplication.jsp">房地产置业顾问</a></span>
            <span class="title1">20-30万/年</span>
            <span class="title2">苏州</span>
            <span class="title3"> <a href="${pageContext.request.contextPath}/indexAndSearch/company.jsp">苏州华丽家族置业投资有限公司</a></span>
        </div>


        <div class="on">
            <input type="checkbox"  class="select-check" name="job" value="苏州驰星教育">
            <span class="title-job"> <a href="${pageContext.request.contextPath}/indexAndSearch/jobApplication.jsp">美团B2B苏州销售</a> </span>
            <span class="title1">0.5-1万/月</span>
            <span class="title2">苏州</span>
            <span class="title3"><a href="${pageContext.request.contextPath}/indexAndSearch/company.jsp">美团点评</a></span>
        </div>

    </div>

    <div class="dw_page">
        <div class="p_box">
            <div class="p_wp">
                <div class="p_in">
                    <ul>
                        <li class="bk"><span>上一页</span></li>
                        <li class="on">1</li>

                        <li class="bk"><span>下一页</span></li>
                    </ul>
                    <input type="hidden" id="hidTotalPage" value="1">
                    <span class="td">共1页，到第</span><input id="jump_page" class="mytxt" type="text" value="1"><span class="td">页</span><span class="og_but" onclick="jumpPage('1');">确定</span>
                </div>
            </div>
        </div>
    </div>

    <div class="image">
        <img src="${pageContext.request.contextPath}/images/companycard1.jpg">
        <img src="${pageContext.request.contextPath}/images/companycard2.jpg">
        <img src="${pageContext.request.contextPath}/images/companycard3.jpg">
        <img src="${pageContext.request.contextPath}/images/companycard4.jpg">
        <img src="${pageContext.request.contextPath}/images/companycard5.jpg">

    </div>





</div>





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




<!-- 注意：如果你直接复制所有代码到本地，上述js路径需要改成你本地的 -->
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
                    ,shade: 0.5




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
                            href: '${pageContext.request.contextPath}/zhaoPin/resume%20center.jsp'
                            ,target: '_blank'
                        });
                    }
                });
            }

        };

        $('#layerAddress .layui-btn').on('click', function(){
            var othis = $(this), method = othis.data('method');
            active[method] ? active[method].call(this, othis) : '';
        });

    });



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
                    ,area: '700px;'
                    ,shade: 0.5



                    ,id: 'LAY_layuipro' //设定一个id，防止重复弹出
                    ,btn: ['确定', '退出']
                    ,btnAlign: 'c'
                    ,moveType: 1 //拖拽模式，0或者1
                    ,content: '<div  class="script-address" >' +
                        ' <ul >' +
                        '<li >计算机软件<li/>' +
                        '<li>计算机软件<li/>' +
                        '<li>计算机软件<li/>' +
                        '<li>计算机软件<li/>' +
                        '<li>计算机软件<li/>' +
                        '</ul> ' +
                        ' <br><br>' +
                        ' <ul >' +
                        '<li >计算机硬件<li/>' +
                        '<li>计算机硬件<li/>' +
                        '<li>计算机硬件<li/>' +
                        '<li>计算机硬件<li/>' +
                        '<li>计算机硬件<li/>' +
                        '</ul> ' +
                        '<br><br>' +
                        ' <ul >' +
                        '<li >	教育院校<li/>' +
                        '<li>	教育院校<li/>' +
                        '<li>	教育院校<li/>' +
                        '<li>	教育院校<li/>' +
                        '<li>	教育院校<li/>' +
                        '</ul> ' +
                        '<br><br>' +
                        ' <ul >' +
                        '<li >学术科研<li/>' +
                        '<li>学术科研<li/>' +
                        '<li>学术科研<li/>' +
                        '<li>学术科研<li/>' +
                        '<li>学术科研<li/>' +
                        '</ul> ' +
                        '<br><br>' +
                        ' <ul >' +
                        '<li >政府机构<li/>' +
                        '<li>政府机构<li/>' +
                        '<li>政府机构<li/>' +
                        '<li>政府机构<li/>' +
                        '<li>政府机构<li/>' +
                        '</ul> ' +
                        '</div>'
                    ,success: function(layero){
                        var btn = layero.find('.layui-layer-btn');
                        btn.find('.layui-layer-btn0').attr({
                            href: '${pageContext.request.contextPath}/zhaoPin/resume%20center.jsp'
                            ,target: '_blank'
                        });
                    }
                });
            }

        };

        $('#layerindustry .layui-btn').on('click', function(){
            var othis = $(this), method = othis.data('method');
            active[method] ? active[method].call(this, othis) : '';
        });

    });


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
                    ,area: '700px;'
                    ,shade: 0.5



                    ,id: 'LAY_layuipro' //设定一个id，防止重复弹出
                    ,btn: ['确定', '退出']
                    ,btnAlign: 'c'
                    ,moveType: 1 //拖拽模式，0或者1
                    ,content: '<div  class="script-address" >' +
                        ' <ul >' +
                        '<li >人力资源<li/>' +
                        '<li>人力资源<li/>' +
                        '<li>人力资源<li/>' +
                        '<li>人力资源<li/>' +
                        '<li>人力资源<li/>' +
                        '</ul> ' +
                        ' <br><br>' +
                        ' <ul >' +
                        '<li >高级管理<li/>' +
                        '<li>高级管理<li/>' +
                        '<li>高级管理<li/>' +
                        '<li>高级管理<li/>' +
                        '<li>高级管理<li/>' +
                        '</ul> ' +
                        '<br><br>' +
                        ' <ul >' +
                        '<li >行政后勤<li/>' +
                        '<li>行政后勤<li/>' +
                        '<li>行政后勤<li/>' +
                        '<li>行政后勤<li/>' +
                        '<li>行政后勤<li/>' +
                        '</ul> ' +
                        '<br><br>' +
                        ' <ul >' +
                        '<li >大学教授<li/>' +
                        '<li>大学教授<li/>' +
                        '<li>大学教授<li/>' +
                        '<li>大学教授<li/>' +
                        '<li>大学教授<li/>' +
                        '</ul> ' +
                        '<br><br>' +
                        ' <ul >' +
                        '<li >校长院长<li/>' +
                        '<li>校长院长<li/>' +
                        '<li>校长院长<li/>' +
                        '<li>校长院长<li/>' +
                        '<li>校长院长<li/>' +
                        '</ul> ' +
                        '</div>'
                    ,success: function(layero){
                        var btn = layero.find('.layui-layer-btn');
                        btn.find('.layui-layer-btn0').attr({
                            href: '${pageContext.request.contextPath}/zhaoPin/resume%20center.jsp'
                            ,target: '_blank'
                        });
                    }
                });
            }

        };

        $('#layerfunction .layui-btn').on('click', function(){
            var othis = $(this), method = othis.data('method');
            active[method] ? active[method].call(this, othis) : '';
        });

    });
</script>


<script>
    function selectAllJobs(){
        var isSelectAll =  document.querySelector(".select-all2").checked;  // true false
        var jobs = document.querySelectorAll("input[name='job']");
        var job_values ="";
        for(var i =0;i<jobs.length;i++) {
            jobs[i].checked = isSelectAll;
            if(  jobs[i].checked )
                job_values +=  jobs[i].value + ",";
        }

        console.log("所选的公司：" +job_values );

    }
</script>

</body>
</html>



