<%-- Created by IntelliJ IDEA. --%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">

    <link rel="stylesheet"href="${pageContext.request.contextPath}/css/release.css">
    <script src="${pageContext.request.contextPath}/js/jquery-3.4.1.js"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/layui/css/layui.css">
    <script src="${pageContext.request.contextPath}/layui/layui.js"></script>
    <title>发布招聘信息</title>
</head>
<body>
<!--导航栏-->
<div class="topbar_cont">
    <div class="topbar">
        <div class="left">
            <div class="logo_cont">
                <div class="logo">
                </div>
            </div>
            <p class="pagename">职位信息发布</p>
        </div>
        <div class="right">
               <span class="backtohome">
                   <a href="companyIndex.jsp">返回首页</a>
               </span>
        </div>
    </div>
</div>
<!--主要填写招聘信息模块-->
<div class="container">
    <!--进展条-->
    <div class="processbar">
        <div>
            <span class="circular">
            <span class="numdot_cotent enterprise">

                <span>1</span>
            </span>
         </span>
            <span class="process_text">职位信息填写</span>
            <span class="dotline">
                <div class="line">

                </div>
            </span>
            <span class="assintspan"></span>
            <span class="circular active-false">
                <span class="numdot_cotent enterprise">

                    <span>2</span>
                </span>
            </span>
            <span class="process_text active-false">职位发布完成</span>
            <span class="dotline active-false">
                <div class="line">

                </div>
            </span>

        </div>
    </div>
    <div class="show-true">
        <!--招聘详细信息-->
        <div class="brick">
            <div class="ant-row section"style="margin: 20px 0px 30px;">
                <div class="ant-col-23 ant-col-offset-1">
                    <h1 class="title">职位信息</h1>
                </div>
            </div>
            <!--职位名称-***********************-->
            <form  class="layui-form" action ="${pageContext.request.contextPath}/addRecruit" method="post" style="height: 500px">
                <div class="type"style="margin-bottom:20px ">
                    <label style="margin-left: 130px">职位名称:</label>
                    <input type="text" placeholder="请输入职位名称" name="jobname" class="jobname" onblur="check_jobname()" style="width: 350px;"/>
                    <span class="input_tip"style="color: red"></span><br>
                </div>

                <div class="type"style="margin-bottom:20px ">
                    <label style="margin-left: 130px">招聘人数:</label>
                    <input type="text" placeholder="请输入招聘人数" name="jobneednum" class="jobneednum" onblur="check_jobneednum()" style="width: 350px;"/>人
                    <span class="input_tip"style="color: red"></span><br>
                </div>
                <div class="type"style="-margin-bottom:20px ">
                    <label style="margin-left: 130px">每月薪资:</label>
                    <input type="text" placeholder="薪资" name="Salary" id="max" onblur="check_Salary()" style="width:200px;"/>元

                    <span class="input_tip"style="color: red"></span><br>
                </div>
                <div class="layui-form-item">
                    <div class="WorkAddress"style="margin-bottom:20px ">
                        <label style="margin-left: 130px">工作地址:</label>
                        <input type="text" placeholder="请输入工作地址" name="WorkAddress" class="WorkAddress" onblur="check_WorkAddress()" style="width: 350px;"/>
                        <span class="input_tip"style="color: red"></span><br>
                    </div>
                </div>
                <div class="layui-form-item">
                    <div class="KeyWord"style="margin-bottom:20px ">
                        <label style="margin-left: 130px">关键文字:</label>
                        <input type="text" placeholder="请输入招聘职位关键字" name="KeyWord" class="KeyWord" onblur="check_KeyWord()" style="width: 350px;"/>
                        <span class="input_tip"style="color: red"></span><br>
                    </div>
                </div>
                <!--职位福利-->



                <div class="layui-form-item">
                    <label class="layui-form-label"style="margin-left: 95px">学历要求:</label>
                    <div class="layui-input-block" style="margin-left: 200px;width:150px">
                        <select name="study" lay-verify="required">
                            <option value=""></option>
                            <option value="0">不限</option>
                            <option value="1">大专</option>
                            <option value="2">本科</option>
                            <option value="3">研究生</option>
                            <option value="4">硕博</option>
                        </select>
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label"style="margin-left: 95px">工作年限:</label>
                    <div class="layui-input-block" style="margin-left: 200px;width:150px">
                        <select name="experience" lay-verify="required">
                            <option value=""></option>
                            <option value="0">不限</option>
                            <option value="1">1年以下</option>
                            <option value="2">1-2年</option>
                            <option value="3">2-3年</option>
                            <option value="4">更多</option>
                        </select>
                    </div>
                </div>

                <div class="positiondescribe"style="margin-bottom:20px ">
                    <div class="layui-form-item layui-form-text"style="width: 1000px;">
                        <label class="layui-form-label"style="margin-left: 105px">职位要求：</label>
                        <div class="layui-input-block"style="margin-left: 200px;height:200px">
                            <textarea name="desc" placeholder="请描述具体职位要求" class="layui-textarea"></textarea>
                        </div>

                    </div>

                </div>
                        <button type="submit" class="layui-btn" >立即提交</button>
                        <button type="reset" class="layui-btn layui-btn-primary">重置</button>
            </form>

            <script>

/*
                form.on('submit(formDemo)', function (data) {
                    layer.msg(JSON.stringify(data.field));

                    //JSON.stringify(data.field)   这是表单中所有的数据

                    var articleFrom = data.field.articleFrom;

                    var articleSummary = data.field.articleSummary;

                })*/

/*                //表单取值
                layui.$('#layui-btn').on('click', function(){
                    var data = form.val('example');
                    alert(JSON.stringify(data));
                });*/

            </script>
            <script>
                function check_KeyWord(){
                    var flag =false;
                    var KeyWordElement = document.querySelector("input[name='KeyWord']");//获得用户名元素控件<input />
                    var KeyWord = KeyWordElement.value;  //获得用户名的值
                    console.log(KeyWord);
                    var KeyWord_tip= KeyWordElement.nextElementSibling;


                    if( !/^[\u4e00-\u9fa5]{0,}$/.test(KeyWord)  ){
                        KeyWord_tip.innerText="职位名称必须是汉字组成且不能为空"
                    } else{
                        KeyWord_tip.innerText="";
                        flag = true;
                    }
                    return flag;
                }
                function check_jobname(){
                    var flag =false;
                    var jobnameElement = document.querySelector("input[name='jobname']");//获得用户名元素控件<input />
                    var jobname = jobnameElement.value;  //获得用户名的值
                    console.log(jobname);
                    var jobname_tip= jobnameElement.nextElementSibling;


                    if(jobname == null || jobname ==""){
                        jobname_tip.innerText="职位名称必填";
                    }else if( !/^[\u4e00-\u9fa5]{0,}$/.test(jobname)  ){
                        jobname_tip.innerText="职位名称必须是汉字组成且不能为空"
                    } else{
                        jobname_tip.innerText="";
                        flag = true;
                    }
                    return flag;
                }

                function check_jobneednum(){
                    var flag =false;
                    var jobneednumElement = document.querySelector("input[name='jobneednum']");//获得用户名元素控件<input />
                    var jobneednum = jobneednumElement.value;  //获得用户名的值
                    console.log(jobneednum);
                    var jobneednum_tip= jobneednumElement.nextElementSibling;


                    if(jobneednum == null || jobneednum ==""){
                        jobneednum_tip.innerText="必填";
                    }else if( !/^[1-99]*$/.test(jobneednum)  ){
                        jobneednum_tip.innerText="招聘人数在1-99之间"
                    } else{
                        jobneednum_tip.innerText="";
                        flag = true;
                    }
                    return flag;
                }
                function check_Salary(){
                    var flag =false;
                    var SalaryElement = document.querySelector("input[name='Salary']");//获得用户名元素控件<input />
                    var Salary = SalaryElement.value;       //获得用户名的值
                    console.log(Salary);
                    var Salary_tip= SalaryElement.nextElementSibling;


                    if(Salary == null || Salary ==""){
                        Salary_tip.innerText="必填";
                    }else if( !/^[1000-9999]*$/.test(Salary)  ){
                        Salary_tip.innerText="招聘人数在1000-9999之间"
                    } else{
                        Salary_tip.innerText="";
                        flag = true;
                    }
                    return flag;
                }


                function check_WorkAddress(){
                    var flag =false;
                    var WorkAddressElement = document.querySelector("input[name='WorkAddress']");//获得用户名元素控件<input />
                    var WorkAddress = WorkAddressElement.value;  //获得用户名的值
                    console.log(WorkAddress);
                    var WorkAddress_tip= WorkAddressElement.nextElementSibling;


                    if(WorkAddress == null || WorkAddress ==""){
                        WorkAddress_tip.innerText="工作地址必填";
                    } else{
                        WorkAddress_tip.innerText="";
                        flag = true;
                    }
                    return flag;
                }

            </script>
            <!--职位类别-->
            <!--<div class="ant-row section">
            <div class="ant-col-2 ant-col-offset-2">
                <span class="title-input">职位类别</span>
            </div>
            <div class="ant-col-20">
                <input type="text" placeholder="请输入职位类别"
                       id="title"  class="ant-input" style="width: 340px;">
                <span id="text1">只能输入中文</span>
                <script>
                </script>
                <div class="input-tips"style="color: rgb(255,85,46);">
                    <i class="antion antion-exclamation-circle"style="color:rgb(255,85,46);">

                    </i>
                  &lt;!&ndash;  <span style="font-size:14px;margin-left: 200px;">请填写职位名称，不能仅填公司名</span>&ndash;&gt;
                </div>
            </div>
        </div>-->
            <!--招聘人数-->
            <!-- <div class="ant-row section">
                 <div class="ant-col-2 ant-col-offset-2">
                     <span class="title-input">招聘人数</span>
                 </div>
                 <div class="ant-col-20">
                     <input type="text" placeholder="请输入人数"
                            id="title" value class="ant-input" style="width: 340px;"> 人
                     <div class="input-tips"style="color: rgb(255,85,46);">
                         <i class="antion antion-exclamation-circle"style="color:rgb(255,85,46);">

                         </i>
                         <span style="font-size:14px;">请填写1-999之间的整数</span>
                     </div>
                 </div>
             </div>-->
            <!--每月工资-->
            <!--<div class="ant-row section">
                <div class="ant-col-2 ant-col-offset-2">
                    <span class="title-input">每月薪资</span>
                </div>
                <div class="ant-col-20">
                    <input type="text" placeholder="最低薪资" id="minSalaryValue" value="" class="ant-input" style="width: 170px;">
                    <span class="salaryfont" style="padding: 0px 5px 0px 2px;"> 至</span>
                    <input type="text" placeholder="最高薪资" id="maxSalaryValue" value="" class="ant-input" style="width: 170px;">
                    <span class="salaryfont" style="padding: 0px 20px 0px 5px;"> 元/月 </span>
                    <label class="ant-checkbox-wrapper"><span class="ant-checkbox">
                        <input type="checkbox" class="ant-checkbox-input" value="on">
                        <span class="ant-checkbox-inner"></span></span>
                        <span>面议</span></label>
                    <input type="text" name="salary" id="salary" class="ant-input" style="width: 0px; visibility: hidden; height: 0px;">
                    <div class="input-tips" style="color: rgb(255, 85, 46);"><i class="anticon anticon-exclamation-circle" style="color: rgb(255, 85, 46);">

                    </i><span style="font-size: 14px;">最低薪资请填写1-99999之间的整数</span></div></div></div>-->
            <!--福利待遇-->
            <!--<div class="ant-row section"><div class="ant-col-2 ant-col-offset-2"><span class="title-input">职位福利</span></div><div class="ant-col-20"><button type="button" class="ant-btn radio-classes-2 ant-btn-default"><span>五险一金</span></button><button type="button" class="ant-btn radio-classes-2 ant-btn-default"><span>包 住</span></button><button type="button" class="ant-btn radio-classes-2 ant-btn-default"><span>包 吃</span></button><button type="button" class="ant-btn radio-classes-2 ant-btn-default"><span>年底双薪</span></button><button type="button" class="ant-btn radio-classes-2 ant-btn-default"><span>周末双休</span></button><button type="button" class="ant-btn radio-classes-2 ant-btn-default"><span>交通补助</span></button><button type="button" class="ant-btn radio-classes-2 ant-btn-default"><span>加班补助</span></button><button type="button" class="ant-btn radio-classes-2 ant-btn-default"><span>饭 补</span></button><button type="button" class="ant-btn radio-classes-2 ant-btn-default"><span>话 补</span></button><button type="button" class="ant-btn radio-classes-2 ant-btn-default"><span>房 补</span></button></div></div>-->
            <!--学历要求-->
            <!--           <div class="ant-row section"><div class="ant-col-2 ant-col-offset-2"><span class="title-input">学历要求</span></div><div class="ant-col-20"><div><input type="hidden" value="1" id="eduid" name="eduid"><button type="button" class="ant-btn radio-classes-2 ant-btn-primary"><span>不 限</span></button><button type="button" class="ant-btn radio-classes-2"><span>高 中</span></button><button type="button" class="ant-btn radio-classes-2"><span>技 校</span></button><button type="button" class="ant-btn radio-classes-2"><span>中 专</span></button><button type="button" class="ant-btn radio-classes-2 ant-dropdown-trigger"><span>更多</span><i class="anticon anticon-down"></i></button><label class="ant-checkbox-wrapper"><span class="ant-checkbox"><input type="checkbox" class="ant-checkbox-input" value="on"><span class="ant-checkbox-inner"></span></span><span>可接受应届生</span></label><input type="hidden" value="0" id="yingjiesheng" name="yingjiesheng"></div></div></div>
           -->
            <!--工作年限-->
            <!--           <div class="ant-row section"><div class="ant-col-2 ant-col-offset-2"><span class="title-input">工作年限</span></div><div class="ant-col-20"><div><input type="hidden" value="1" id="experienceid" name="experienceid"><button type="button" class="ant-btn radio-classes-2 ant-btn-primary"><span>不 限</span></button><button type="button" class="ant-btn radio-classes-2"><span>1年以下</span></button><button type="button" class="ant-btn radio-classes-2"><span>1-2年</span></button><button type="button" class="ant-btn radio-classes-2"><span>3-5年</span></button><button type="button" class="ant-btn radio-classes-2 ant-dropdown-trigger"><span>更多</span><i class="anticon anticon-down"></i></button></div></div></div>
           -->
            <!--工作地址-->
            <!--
                        <div class="ant-row section"><div class="ant-col-2 ant-col-offset-2"><span class="title-input">工作地址</span></div><div class="ant-col-20"><input type="text" placeholder="请输入工作地址" id="title" value="" class="ant-input" style="width: 340px;"><div class="input-tips" style="color: rgb(255, 85, 46);"><i class="anticon anticon-exclamation-circle" style="color: rgb(255, 85, 46);"></i><span style="font-size: 14px;">请填写工作详细地址，不得简略</span></div></div></div>
            -->

        </div>
     </div>
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