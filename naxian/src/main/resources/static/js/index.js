
function iframe() {
    var sms = "";//接收session中的信息
    var perName = $("#perName").val();
    console.log(perName)
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


    layui.use(['carousel', 'form'], function () {
        var carousel = layui.carousel
            , form = layui.form;

        //常规轮播
        carousel.render({
            elem: '#test1'
            , arrow: 'always'
        });

        //改变下时间间隔、动画类型、高度
        carousel.render({
            elem: '#test2'
            , interval: 1800
            , anim: 'fade'
            , height: '120px'
        });

        //设定各种参数
        var ins3 = carousel.render({
            elem: '#test3'
        });
        //图片轮播
        carousel.render({
            elem: '#test10'
            , width: '778px'
            , height: '440px'
            , interval: 5000
        });

        //事件
        carousel.on('change(test4)', function (res) {
            console.log(res)
        });

        var $ = layui.$, active = {
            set: function (othis) {
                var THIS = 'layui-bg-normal'
                    , key = othis.data('key')
                    , options = {};

                othis.css('background-color', '#5FB878').siblings().removeAttr('style');
                options[key] = othis.data('value');
                ins3.reload(options);
            }
        };

        //监听开关
        form.on('switch(autoplay)', function () {
            ins3.reload({
                autoplay: this.checked
            });
        });

        $('.demoSet').on('keyup', function () {
            var value = this.value
                , options = {};
            if (!/^\d+$/.test(value)) return;

            options[this.name] = value;
            ins3.reload(options);
        });

        //其它示例
        $('.demoTest .layui-btn').on('click', function () {
            var othis = $(this), type = othis.data('type');
            active[type] ? active[type].call(this, othis) : '';
        });
    });
}

