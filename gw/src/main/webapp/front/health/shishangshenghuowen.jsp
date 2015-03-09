<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%  
      String path = request.getContextPath();  
      String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";  
    %>
<base href="<%=basePath %>" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>æå­èå--å¥åº·åäº«</title>
<link rel="stylesheet" type="text/css" href="jscss/jPaginate/css/style.css" media="screen"/>
 <script src="jscss/js/jquery-1.9.1.min.js" type="text/javascript"></script>
<script type="text/javascript">

function GetQueryString(name)
{
     var reg = new RegExp("(^|&)"+ name +"=([^&]*)(&|$)");
     var r = window.location.search.substr(1).match(reg);
     if(r!=null)return  unescape(r[2]); return null;
}
var totalPages;
var id=GetQueryString("id");
$(document).ready(function() {
	var params = {
			"id" : id
			};
		$.ajax({
			// è¯·æ±çurl
			url : "articleById.do",
			type : "post",
			data : params,
			cache : false,
			dataType : "json",
			success : function(e) {
				document.getElementById('ti').innerHTML=e.title;
				document.getElementById('time').innerHTML=new Date(e.addtime).toLocaleString();
				document.getElementById('content').innerHTML=e.content;

			},
			error:function(e){
				alert('error'+e);
			}
		
		}); 
		
		
});

$(function() {
	 $( "#x" ).click(function() {
		 history.go(-1);   	
	 });
	});
</script>
 <style type="text/css">
.ti {
  color: rgb(0, 0, 0);
  display: block;
  font-family: "Microsoft YaHei";
  font-size: 24px;
  margin: 0 auto;
  text-align: center;
  line-height: 56px;
}
.time {
font-size: 12px;
  font-family: "Microsoft YaHei";
  color: rgb( 0, 0, 0 );
  display: block;
  margin: 0 auto;
  text-align: center;
}
.content {
  color: rgb(0, 0, 0);
  display: block;
  font-family: "Microsoft YaHei";
  font-size: 12px;
  margin: 0 auto;
  border-top-color: #6c6c6c;
  border-top-style: solid;
  line-height: 25px;
}
body {
  background-color: #fff;
  height: 100%;
  overflow-x: hidden;
  width: 500px;
  margin: 0 auto;
}
#x {
  position: absolute;
  right: 20px;
  top: 10px;
}
</style>
</head>
<body>
<img id="x" src="front/images/health/health_0000s_0000_closeX.png"></img>
<div  id="title" class="title">
		<a id="ti" class="ti"></a>
		<a id="time" class="time"></a>
		<a id="hid0" class="hid"></a>
		</div>
<div  id="content" class="content">
		</div>
</body>
</html>