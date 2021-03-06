
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
    ,tabDelete: function(othis){
    //删除指定Tab项
    element.tabDelete('demo', '44'); //删除：“商品管理”


    othis.addClass('layui-btn-disabled');
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
//选框
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
//勾选框
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
    });
    return false;
});
$('body').scrollspy({ target: '#navbar-example' });
$('[data-spy="scroll"]').each(function () {
    var $spy = $(this).scrollspy('refresh')
});
$('#myTabs a').click(function (e) {
    e.preventDefault();
    $(this).tab('show')
});
$('#myTabs a[href="#profile"]').tab('show'); // Select tab by name
$('#myTabs a:first').tab('show'); // Select first tab
$('#myTabs a:last').tab('show'); // Select last tab
$('#myTabs li:eq(2) a').tab('show'); // Select third tab (0-indexed)
//弹出层

