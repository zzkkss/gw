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
<link rel="icon" href="decorators/images/32.ico"/>
 <link rel="bookmark" href="decorators/images/32.ico" />
  <title>页面没有找到</title>

		<style>
		.login {background: #f9fee8;margin: 0; padding: 20px; text-align:center; font-family:Arial, Helvetica, sans-serif; font-size:14px; color:#666666;}
		.error_page {width: 600px; padding: 50px; margin: auto;}
		.error_page h1 {margin: 20px 0 0;}
		.error_page p {margin: 10px 0; padding: 0;}		
		a {color: #9caa6d; text-decoration:none;}
		a:hover {color: #9caa6d; text-decoration:underline;}
		</style>

</head>

<body class="login">
  <div class="error_page">
    <img alt="Kidmondo_face_sad" src="pages/error/images/kidmondo_face_sad.gif">
    <h1>我们非常抱歉...</h1>
    <p>连接已经超时</p>
    <p><a href="pages/login.jsp">返回登录主页</a></p>
  </div>

</body></html>