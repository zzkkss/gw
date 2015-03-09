<%@ page contentType="text/html; charset=utf-8" language="java" errorPage=""  pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
	"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
 <!--    //getContextPath():返回项目名称  
    //getServerName():返回服务器名称  
    //getScheme(): Returns the name of the scheme used to make this request, for example, http, https, or ftp.  
    //getServerPort():返回服务端口号  
 -->
    <%  
      String path = request.getContextPath();  
      String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";  
    %>  
<base href="<%=basePath %>"/>
<title>果园老农－－出错啦</title>
 <script src="jscss/js/jquery-1.9.1.min.js" type="text/javascript"></script>
<script>


 
	$(function() {
		var index_div_pro = [ {
			sx : 35,
			sy : 0,
			mw : 3,
			mh : 0.5,
			bx : 6.4,
			by : 8.4,
			rx : -0.1
		}, {
			sx : -50,
			sy : 0,
			mw : 3,
			mh : 1,
			bx : 8.4,
			by : 10.4,
			rx : -0.6
		} ];
		var ePageX = $(window).width() / 2;
		 $("#indexg0").css("margin-left",
					($(window).width()-($(window).width()) *120/100) / 2);
			  $("#indexg0").css("width",
					($(window).width()) *1.1);  
			  $("#indexg1").css("width",
					($(window).width()) *1.1);  
			  $("#indexg1").css("height",
					($(window).height()));  
			  $("#indexg0").css("height",
					($(window).height()));  
		$("#indexg1").css("margin-left",
				($(window).width()) /2-400); 
		function getMousePos(expression) {
			if (ePageX == null)
				return null;
			var _x = $(expression).position().left;
			_x += ePageX - $(expression).parent().position().left;
			return {
				x : _x
			}
		}
		;
		var index_xh = setInterval(function() {
			for (var i = 0; i < 2; i++) {
				var mousepos = getMousePos("#indexg" + i);
				if (mousepos != null) {
					var left = parseInt($("#indexg" + i).css("left"));
					var l = left+ (index_div_pro[i].sx + index_div_pro[i].mw
									- (mousepos.x - 100) / index_div_pro[i].bx
									* index_div_pro[i].rx - left) * 0.2;
					$("#indexg" + i).css({
						left : l
					})
				}
			}
		}, 20);
		$("body").mousemove(function(event) {
			event = event || window.event;
			ePageX = event.pageX
		});
	
		 
		//$( ".tianmao" ).css("left",($(window).width())/2-400);
		
	})
</script>
    <style type="text/css">
   body{
   overflow: hidden;}

    #indexg1, #indexg0 {
    left: 0;
    position: absolute;
    top: 0;
}
 .indexgimg {
  position: absolute;
  left: 10px;
  width: 100%;
  height: 100%;
}
.indexg1diva{
 font-size: 12px;
  font-family: "Microsoft YaHei";
  color: rgb( 254, 254, 254 );
  text-transform: uppercase;
  line-height: 1.5;
  text-align: center;
  position: absolute;
  top:70%;
  left:40px;
  text-decoration: none;
}


    </style>
   
</head>
<body>
	<div>
		<div  id="indexg0">
			<img class="indexgimg" src="front/images/webstore/webstore_0000_bg.png" width="1800" height="768" />
  
		</div>
		<div id="indexg1">
			<img style="top:30%;position: absolute;" src="front/images/error/1.png" />
		

	</div>
	</div>
</body>
</html>