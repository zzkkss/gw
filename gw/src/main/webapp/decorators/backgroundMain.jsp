<%@ page contentType="text/html; charset=utf-8" language="java"
	errorPage="" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator"
	prefix="decorator"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/page" prefix="page"%>

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
    <meta name="Author" content="zks" />
<meta http-equiv="X-UA-Compatible" content="IE=7,9,10" />
<base href="<%=basePath %>" />
<link rel="icon" href="decorators/images/32.ico" />
<link rel="bookmark" href="decorators/images/32.ico" />
<link rel="shortcut icon" href="decorators/images/32.ico" />

<title><decorator:title default="后台管理系统" /></title>
<decorator:head></decorator:head>
 <script type="text/javascript">
    $(function() {
 $("#home").css("height",$(window).height());
 $("#home").css("width",$(window).width());
 
 $( window ).resize(function(){
	 location=location;
 });
 
    });
    
 </script>
</head>
<body class="home" id="home"
	onload="<decorator:getProperty property="body.onload" />">



	<!--header-->
	<div id="ticklely_header">

	</div>
	<!--header-->
<div class="wrapperb">
	<decorator:body></decorator:body></div>

	<!--footer-->
	<div id="ticklely_footer">

	
	</div>
	<!--footer-->

</body>
</html>