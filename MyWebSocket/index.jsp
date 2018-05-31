<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../include/taglib.jsp"%>
<html>
<head>
    <title>医院双向转诊信息系统</title>
    <link rel="icon" href="${ctx}/favicon.ico" type="image/x-icon">
    <link rel="shortcut icon" href="${ctx}/favicon.ico" type="image/x-icon">
    <link rel="stylesheet" href="${ctxStatic}/js/layer/skin/layer.css">
    <link rel="stylesheet" href="${ctxStatic}/js/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="${ctxStatic}/css/font-awesome.min.css">
    <link rel="stylesheet" href="${ctxStatic}/css/skins/theme-blue.css">
    <link rel="stylesheet" href="${ctxStatic}/css/index.css">
    <link rel="stylesheet" href="${ctxStatic}/css/skins/base-skin.css">
    <link rel="stylesheet" href="${ctxStatic}/css/topRightMsg.css">

</head>
<body class="hold-transition skin-theme sidebar-mini">
<div id="loadingCover">
    <img src="${ctxStatic}/img/ajax-loader.gif"/>
</div>

<div class="wrapper">
    <!--头部信息-->
    <div class="main-header">

        <div class="navbar navbar-static-top">
            <a href="" target="_blank" class="logo">
                <span class="logo-mini"><img src="${ctxStatic}/img/logo.png" alt=""></span>
                <span class="logo-lg"><img src="${ctxStatic}/img/logo.png" alt=""></span>
            </a>
            <a class="sidebar-toggle">
                <span class="sr-only"></span>
            </a>
            <div class="navbar-custom-menu">
                <ul class="nav navbar-nav">
                    <li class="dropdown user user-menu">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            <img src="${ctxStatic}/img/user.png" class="user-image" alt="User Image">
                            <span class="hidden-xs">${user_name}</span>
                        </a>
                        <%--<ul class="dropdown-menu pull-right">--%>
                            <%--<li ><a class="menuItem" data-id="userInfo" onclick="changeToUserPage()" href="/boco-health-hms/views/userInfo.jsp"><i class="fa fa-user"></i>个人信息</a></li>--%>
                            <%--<li class="divider"></li>--%>
                            <%--<li><a href="${ctx}/logout"><i class="ace-icon fa fa-power-off"></i>安全退出</a></li>--%>
                        <%--</ul>--%>
                    </li>
                    <li  class="dropdown user user-menu" id="showmsg" style="margin-right: 8px">
						 <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown">
						    <span class="glyphicon glyphicon-envelope" aria-hidden="true" style="font-size: 20px;"></span>
						    <span class="msgcount" id="msgCount"></span>
					    </a>
			    	</li>
                </ul>
            </div>
        </div>
    </div>
    <!--左边导航-->
    <div class="main-sidebar">

        <div class="sidebar">

            <ul class="sidebar-menu" id="sidebar-menu">
                <!--<li class="header">导航菜单</li>-->
                <%--<li class="treeview active">--%>
                    <%--<a href="#"><i class="fa fa-desktop"></i><span>转诊业务处理</span><i class="fa fa-angle-left pull-right"></i></a>--%>
                    <%--<ul class="treeview-menu">--%>
                        <%--<li><a class="menuItem" data-id="22" href="/boco-health-hms/upTransferApplication/goBackToQueryPage"><i class=""></i>上转申请</a></li>--%>
                        <%--<li><a class="menuItem" data-id="23" href="/boco-health-hms/upTransferOperate/toQueryInfos"><i class=""></i>上转审核</a></li>--%>
                        <%--<li><a class="menuItem" data-id="24" href="/boco-health-hms/downTransferApplication/toQuery"><i class=""></i>下转申请</a></li>--%>
                        <%--<li><a class="menuItem" data-id="30" href="/boco-health-hms/downTransferOperate/gridView"><i class=""></i>下转审核</a></li>--%>
                    <%--</ul>--%>
                <%--</li>--%>
                <%--<li class="treeview">--%>
                    <%--<a href="#"><i class="fa fa-share-alt"></i><span>转诊事务配置</span><i class="fa fa-angle-left pull-right"></i></a>--%>
                    <%--<ul class="treeview-menu">--%>
                        <%--<li><a class="menuItem" data-id="26" href="/boco-health-hms/hospital/open/openTransferHospital"><i class=""></i>转诊医院管理</a></li>--%>
                        <%--<li><a class="menuItem" data-id="27" href="/boco-health-hms/payment/open/openPayment"><i class=""></i>转诊费用结算</a></li>--%>
                    <%--</ul>--%>
                <%--</li>--%>
            </ul>
        </div>
    </div>
    <!--中间内容-->
    <div id="content-wrapper" class="content-wrapper">
        <div class="content-tabs">
            <div class="pull-left">
                <i></i>
                <span id="navText" class="span-index">转诊业务处理&nbsp;/&nbsp;首页</span>
            </div>
            <div class="pull-right">
                <%--<a href="${ctx}/login"><i class="fa fa-power-off"></i>返回首页</a>--%>
                <%--<a href="${ctx}/reback"><i class="fa fa-power-off"></i>切换到平台</a>--%>
                <a href="${ctx}/logout"><i class="fa fa-power-off"></i>退出</a>
            </div>
        </div>
        <div class="content-iframe" style="overflow: auto;">
            <div class="mainContent" id="content-main" style="margin: 10px; margin-bottom: 0px; padding: 0;overflow: hidden;">
                <iframe class="boco_iframe" id="myFrame" width="100.4%" height="100%" src="/boco-health-hms/statics/html/home.html" frameborder="0" data-id="default.html">
                </iframe>
            </div>
        </div>
    </div>
</div>
<!--右上角消息-->
<div class="panel panel-default msgpanel" id="msgPanel">
	<div class="panel-body" style="color:#3366FF;text-align:center;font-size:14px;">
		消息提示
	</div>
	<ul class="list-group" id="listgroup">
        <!-- <li class="list-group-item">
        		<a href="#" class="mya" title="免费域名注册安静的绿sssss啊啊啊啊啊扩哈付军扩付噶eeeeee">免费域名注册安静的绿sssss啊啊啊啊啊扩哈付军扩付噶eeeeee</a>
            	<span class="pull-right" style="margin-top:-16.3px">2017-07-07</span>
             </li> -->

    </ul>
	<div class="panel-body" style="text-align:center;">
		<a class="menuItem" href="/boco-health-hms/messageInform/messagecheck" onclick="$('#navText').html('转诊业务处理&nbsp;/&nbsp;我的消息')">
		<span style="color:#3366FF">查看全部>></span></a>
	</div>
</div>
<script src="${ctxStatic}/js/jquery/jQuery-2.2.0.min.js"></script>
<script src="${ctxStatic}/js/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="${ctxStatic}/js/layer/layer.js"></script>
<script src="${ctxStatic}/js/simpleMenuData.js"></script>
<script src="${ctxStatic}/js/sidebarMenu.js?v=1.0"></script>
<script src="${ctxStatic}/js/index.js"></script>
<script src="${ctxStatic}/js/topRightMsg.js"></script>
<%--右下角消息--%>
<div id="rbmsg" style="background:white;position:fixed;right:10px;bottom:10px;width:300px;display:none;border:2px solid rgb(21,131,220);">
    <div style="background:rgb(21,131,220);padding:5px 10px 5px 10px;color:white"> 
    <span style="line-height:25px">消息提示</span><a type="button" onclick="$('#rbmsg').slideUp()" class="close" aria-label="Close" style="opacity:1"><span aria-hidden="true" style="color:white">&times;</span></a>
    </div>
    <div id="msgcontent" style="min-height:50px;padding:20px 20px 10px 20px">
        ${lastMsg}
    </div>
    <div style="border-top: 1px solid LightGrey;margin:20px;padding:8px" >  
        <a  href="/boco-health-hms/messageInform/messagecheck" class="pull-right menuItem" style="color:rgb(21,131,220)" onclick="$('#rbmsg').slideUp()">详细信息>></a>
    </div>
</div>
<script>
	var websocket = null;
     //文档加载完成
     $(function () {
    	 <c:if test="${not empty lastMsg}">
    	 showMsg();
	 	</c:if> 	
         $("#sidebar-menu").sidebarMenu({
             url:'common/menuList',
             method:'GET',
             done:function(){
                $.learuntab.init();
             },
             error:function(){
            	 layer.msg("请求菜单数据失败.");
             }
         });   
	    //websocket链接
	    websocket= connectWebSocket(); 
	     var count = 0;//鼠标移入只执行一次请求
	     $("#showmsg").mouseover(function(){
	    	 if(count == 0){
	    	 	getUnReadMsgList();
	     	 	$("#msgPanel").slideDown(200);
	     	 	count = 1;
	    	 }
	     });

	     $("#msgPanel").mouseleave (function(){
	     	  $("#msgPanel").slideUp(100);
	     	  count = 0;
	     });
     });    
     function connectWebSocket(){
    	
    	//判断当前浏览器是否支持WebSocket
         if ('WebSocket' in window) {
        	 if(location.protocol=="https:"){
        		 websocket = new WebSocket("wss://" + location.host + "${ctx}/webSocketServer");
        	 }else{ 
        		 websocket = new WebSocket("ws://" + location.host + "${ctx}/webSocketServer");
        	 }
            
         } else {
             websocket = new SockJS("http://" + location.host + "${ctx}/sockjs/webSocketServer");
         }
		
    	  websocket.onopen  =function(){
    		  console.log("websocket connected!")
	    	  websocket.onclose = function () {
	  	     		console.log("onclose");
	  	     		connectWebSocket();
	  	     	};
	  	      websocket.onerror = function () {
	  	    	  	console.log("onerror");
	  	     	 	connectWebSocket();
	  	     	};
	       	 //接收到消息的回调方法
	          websocket.onmessage = function (event) {
	              //alert(event.data);
	              $("#msgcontent").html(event.data);
	              //右下角消息提示弹出
	              showMsg();
	              //右上角消息数量加1
	           	var ori = parseInt($("#msgCount").text());
	          	 $("#msgCount").html(ori+1);
	          	 if(ori == 0){
	           		$("#msgCount").show();
	           	}
	          }  
    		  
    		  
    	  }
	      
     	return websocket;
     }
 	/*
 	*右下角消息提示
 	*/
     function showMsg() {
    	 $("#rbmsg").hide();
         $("#rbmsg").slideDown(600);
     }
 </script>
</body>

</html>