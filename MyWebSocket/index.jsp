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