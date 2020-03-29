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