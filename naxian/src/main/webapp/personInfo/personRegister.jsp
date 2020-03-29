<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>纳贤招聘注册</title>
    <meta charset="UTF-8">
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link rel="icon" href="${pageContext.request.contextPath}/images/top_logo.ico">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/resumeCenter.css" >
    <link rel="stylesheet" href="${pageContext.request.contextPath}/layui/css/layui.css"  media="all">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/register.css">
</head>

<body>

<!-- 注册信息-->
<div class="column Fm" id="total">
    <div class="box mk com" >
        <div class="head" id="Basic">
            <div id="border">
                <div class="conn regist">
                    <!--姓名-->
                    <div class="c" >
                        <i>*</i>
                        <label>姓名（见下）：</label>
                        <div  float-on="false" >
                            <input placeholder="填写姓名" class="ef cursor"  type="text">
                            <span class="ic i_block pointer" i></span>

                        </div>
                    </div>
                    <!-- 手机号-->
                    <div class="c" >
                        <div><label >*手机号（见下）：</label></div>
                        <div  float-on="false" >
                            <input  class="ef cursor"  type="text" placeholder="请填写正确的手机号">
                        </div>


                    </div>
                    <!-- 求职状态-->
                    <div class="c" >
                        <div><label >*求职状态（见下）：</label></div>
                        <div  float-on="false" >
                            <input placeholder="填写/选择" class="ef cursor"  type="text">
                            <span class="ic i_block pointer" ></span>
                            <div class="ul u3" ></div>
                        </div>


                    </div>
                    <!-- 邮箱-->
                    <div class="c" >
                        <div><label >*邮箱（见下）：</label></div>
                        <div  float-on="false" >
                            <input placeholder="填写/选择" class="ef cursor"  type="text">
                        </div>


                    </div>
                    <!--  居住地-->
                    <div class="c" >
                        <div><label >*居住地（见下）：</label></div>
                        <div  float-on="false" >
                            <input placeholder="填写/选择" class="ef cursor"  type="text">
                        </div>


                    </div>

                    <!--身份认证-->
                    <div class="c" >
                        <div><label >*身份认证（请上传身份证见下）：</label></div>
                        <div class="layui-upload">
                            <button type="button" class="layui-btn" id="test1">上传图片</button><input class="layui-upload-file" type="file" accept="" name="file">
                            <div class="layui-upload-list">
                                <img class="layui-upload-img" id="demo1">
                                <p id="demoText"></p>
                            </div>
                        </div>

                        <div class="err"  style="display:none"><em class="icons"></em></div>




                    </div>
                    <div class="btnbox">
                        <span class="p_but gray"  onclick="cancelButtonClick(this)">取消</span><span class="p_but"  onclick="saveButtonClick(this);">注册</span>
                    </div>
                </div>

            </div>
        </div>

    </div>
</div>
<script src="${pageContext.request.contextPath}/layui/layui.js" charset="utf-8"></script>
<!-- 注意：如果你直接复制所有代码到本地，上述js路径需要改成你本地的 -->
<script>
    layui.use('upload', function() {
        var $ = layui.jquery
            , upload = layui.upload;

        //普通图片上传
        var uploadInst = upload.render({
            elem: '#test1'
            , url: '/upload/'
            , before: function (obj) {
                //预读本地文件示例，不支持ie8
                obj.preview(function (index, file, result) {
                    $('#demo1').attr('src', result); //图片链接（base64）
                });
            }
            , done: function (res) {
                //如果上传失败
                if (res.code > 0) {
                    return layer.msg('上传失败');
                }
                //上传成功
            }
            , error: function () {
                //演示失败状态，并实现重传
                var demoText = $('#demoText');
                demoText.jsp('<span style="color: #FF5722;">上传失败</span> <a class="layui-btn layui-btn-xs demo-reload">重试</a>');
                demoText.find('.demo-reload').on('click', function () {
                    uploadInst.upload();
                });
            }
        });
    })
</script>
</body>
</html>