<%-- Created by IntelliJ IDEA. --%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="initial-scale=1.0, user-scalable=no, width=device-width">
    <title>地图导航</title>
    <style type="text/css">
        html,
        body,
        #container {
            width: 1000px;
            height: 400px;
        }
    </style>
    <link rel="stylesheet" href="https://a.amap.com/jsapi_demos/static/demo-center/css/demo-center.css" />
    <script src="https://a.amap.com/jsapi_demos/static/demo-center/js/demoutils.js"></script>
    <script type="text/javascript" src="https://webapi.amap.com/maps?v=1.4.15&key=c7cd4329b4c313e6090e1631e29461ce&plugin=AMap.Driving,AMap.Walking,AMap.Riding,AMap.Transfer,AMap.Geocoder,AMap.Autocomplete,AMap.PlaceSearch,AMap.AdvancedInfoWindow"></script>
    <script type="text/javascript" src="https://cache.amap.com/lbs/static/addToolbar.js"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/address.css">
</head>

<body>
<div id="container"></div>
<div id="panel"></div>
<div class="input-box" style='width:28rem;'>
    <label style='color:grey'>根据输入起点和终点规划路线！</label>
    <div class="input-item">
        <div class="input-item-prepend"><span class="input-item-text" >地址</span></div>
        <input id='address1' type="text" value='' onfocus="setAutoOption(this.id)" placeholder="请输入起点！">
    </div>
    <div class="input-item">
        <div class="input-item-prepend"><span class="input-item-text" >地址</span></div>
        <input id='address2' type="text" value='' onfocus="setAutoOption(this.id)" placeholder="请输入终点！">
    </div>
    <div style="margin-top: 10px">
        <input id="geo-driving" type="button" class="btn" value="驾车" />
        <input id="geo-walking" type="button" class="btn" value="步行" />
        <input id="geo-riding" type="button" class="btn" value="骑行" />
        <input id="geo-transfer" type="button" class="btn" value="公交" />
    </div>
</div>
<script type="text/javascript">
    //基本地图加载
    var map = new AMap.Map("container", {
        resizeEnable: true,//是否监控地图容器尺寸变化，默认值为false
        //zoom: 13 //地图显示的缩放级别
    });

    //ip定位并且获得经纬度
    var pos;
    AMap.plugin('AMap.Geolocation', function() {
        var geolocation = new AMap.Geolocation({
            enableHighAccuracy: true,//是否使用高精度定位，默认:true
            timeout: 10000,          //超过10秒后停止定位，默认：5s
            buttonPosition:'RB',    //定位按钮的停靠位置
            buttonOffset: new AMap.Pixel(10, 20),//定位按钮与设置的停靠位置的偏移量，默认：Pixel(10, 20)
            zoomToAccuracy: true,   //定位成功后是否自动调整地图视野到定位点

        });
        map.addControl(geolocation);
        geolocation.getCurrentPosition(function(status,result){
            if(status=='complete'){
                pos=result.position;
            }else{
                onError(result)
            }
        });
    });
    function onError(data) {
        document.getElementById('status').innerHTML='定位失败'
        document.getElementById('result').innerHTML = '失败原因排查信息:'+data.message;
    }

    //构造地点查询类
    var placeSearch = new AMap.PlaceSearch({
        map: map
    });

    //通过经纬度转换成具体地址
    var geocoder;
    window.onload = function() {
        if(!geocoder){
            geocoder = new AMap.Geocoder({
                radius: 500 //范围，默认：500
            });
        }
        geocoder.getAddress(pos, function(status, result) {
            if (status === 'complete'&&result.regeocode) {
                var address = result.regeocode.formattedAddress;
                document.getElementById('address1').value = address;
            }else{
                log.error('根据经纬度查询地址失败')
            }
        });
    }

    //通过点击地图热点获得热点信息
    var infoWindow=new AMap.AdvancedInfoWindow({});
    map.on('hotspotclick', function(result) { //通过鼠标移动获得热点信息'hotspotover'
        placeSearch.getDetails(result.id, function(status, result) {
            if (status === 'complete' && result.info === 'OK') {
                var poiArr = result.poiList.pois;
                var location = poiArr[0].location;
                document.getElementById('address2').value=poiArr[0].name;
            }
        });
    });

    //输入提示后查询
    function setAutoOption(id){
        var auto = new AMap.Autocomplete({
            input: id
        });
        AMap.event.addListener(auto, "select", select);//注册监听，当选中某条记录时会触发
        function select(e) {
            placeSearch.setCity(e.poi.adcode);//设置查询城市
            placeSearch.search(e.poi.name);  //关键字查询查询
        };
        placeSearch.clear();//清除搜索结果
    }

    //构造驾车路线导航类
    var driving = new AMap.Driving({
        map: map,
        panel: "panel"
    });
    function geoDriving() {
        clearAll();
        var address1  = document.getElementById('address1').value;
        var address2  = document.getElementById('address2').value;
        var path = [{keyword:address1},//起点
            {keyword:address2}//终点
        ];
        driving.search(path,function(status, result) {
            // result 即是对应的驾车导航信息
            if (status === 'complete') {
                log.success('绘制驾车路线完成')
            } else {
                log.error('获取驾车数据失败：' + result)
            }
        });
    };

    //构造步行路线导航类
    var walking = new AMap.Walking({
        map: map,
        panel: "panel"
    });
    function geoWalking(){
        clearAll();
        var address1  = document.getElementById('address1').value;
        var address2  = document.getElementById('address2').value;
        var path = [{keyword:address1},//起点
            {keyword:address2}//终点
        ];
        //根据起终点坐标规划步行路线
        walking.search(path, function(status, result) {
            // result即是对应的步行路线数据信息
            if (status === 'complete') {
                log.success('绘制步行路线完成')
            } else {
                log.error('步行路线数据查询失败' + result)
            }
        });
    };

    //构造骑行路线导航类
    var riding = new AMap.Riding({
        map: map,
        panel: "panel"
    });
    function geoRiding(){
        clearAll();
        var address1  = document.getElementById('address1').value;
        var address2  = document.getElementById('address2').value;
        var path = [{keyword:address1},//起点
            {keyword:address2}//终点
        ];
        //根据起终点坐标规划骑行路线
        riding.search(path, function(status, result) {
            // result即是对应的骑行路线数据信息
            if (status === 'complete') {
                log.success('绘制骑行路线完成')
            } else {
                log.error('骑行路线数据查询失败' + result)
            }
        });
    };

    //构造公交路线导航类
    var transOptions = {
        map: map,
        city: "010",//’010’ 表示北京 必须备注城市名 当输入的地址city缺省时取transOptions的city属性
        panel: 'panel',//路径的具体信息
        policy: AMap.TransferPolicy.LEAST_TIME//公交策略，least_time最快捷模式
    };
    //构造公交换乘类
    var transfer = new AMap.Transfer(transOptions);
    function geoTransfer(){
        clearAll();
        var city = document.getElementById("geo-transfer");
        var address1  = document.getElementById('address1').value;
        var address2  = document.getElementById('address2').value;
        var path = [{keyword:address1},//起点
            {keyword:address2}//终点
        ];
        //根据起、终点坐标查询公交换乘路线
        transfer.search(path, function(status, result) {
            // result即是对应的公交路线数据信息
            if (status === 'complete') {
                log.success('绘制公交路线完成')
            } else {
                log.error('公交路线数据查询失败' + result)
            }
        });
    };

    //清空所有路径规划
    function clearAll(){
        if(driving||walking||riding||transfer){
            driving.clear();
            walking.clear();
            riding.clear();
            transfer.clear();
        }
    };

    // 根据起终点经纬度规划驾车导航路线
    document.getElementById("geo-driving").onclick = geoDriving;
    document.getElementById("geo-walking").onclick = geoWalking;
    document.getElementById("geo-riding").onclick = geoRiding;
    document.getElementById("geo-transfer").onclick = geoTransfer;
</script>
</body>
</html>
