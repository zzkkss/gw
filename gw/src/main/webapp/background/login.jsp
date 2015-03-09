<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="org.springframework.security.web.WebAttributes" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <%  
      String path = request.getContextPath();  
      String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";  
    %>  
    <base href="<%=basePath %>">
    <meta name="Author" content="zks" />
<meta http-equiv="X-UA-Compatible" content="IE=7,9,10" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登录</title>

 <script src="jscss/js/jquery-1.9.1.min.js" type="text/javascript"></script>
<style type="text/css">
*{overflow:hidden; font-size:9pt;}
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	background-image: url(background/images/loginBG.png);
	height: 100%;
	width: 100%;
}
#lg{
background-image: url(background/images/loginAll.png);
height: 310px;
width: 530px;
position:absolute;
margin:-155px 0px 0px -265px;
top: 50%;
left: 50%;
}
#lg ul {position:relative;top: 55px;left: 130px;}
#lg ul li { margin: 10px;}
#lg ul li span {float:left;}
#lg ul li a {float:left;}
.inputt {width: 150px;}
#uimg{
	background:url(background/images/loginAll.png) -217px -366px;
	width:30px;height: 30px;
	}
#pimg{
	background:url(background/images/loginAll.png) -246px -366px;
	width:30px;height: 30px;
	}
#cimg{
	width:30px;height: 30px;
	}
#chimg{
width: 100px;height: 18px;
}
#lgbtn{
	background:url(background/images/loginAll.png) -217px -316px;
	width:101px;height: 75px;
	border: 0 none;
	}
#jg{
top:40px;
position: relative;
width: 300px;
left:100px;
}
</style>

</head>

<body >

	<div id="lg">
	  <form action="j_spring_security_check" method="post">
	   <div id="jg">请使用最新版的Windows Inetnet Explorer、Mozilla Firefox、Google Chrome进行管理，其他浏览器有可能发生错误。</div>
	<ul>
	
	<li><span id="uimg"></span><a>用户名：</a><input type="text" class="inputt" name="j_username" id="uname"  value="" ></input></li>
	<li><span id="pimg"></span><a>密　码：</a><input type="password" class="inputt" name="j_password" id="pword" value=""></input></li>
		<!-- <li><img id="cimg"><a>验证码：</a><input type="text" id="cword" name="cword" value="" ></input></li>
	<li><img src="authImg.jpg" id="chimg"><a href="javascript:refresh();">单击此处刷新</a></li> -->
<!-- 	<li><input type="submit" id="lgbtn"></li> -->
	<li><input type="submit" id="lgbtn" class="lgbtn" value=""></li>
	<!-- <li><a href="register.jsp">还没有帐号？马上注册</a></li> -->
	</ul>

       </form>
	</div>

</body>
</html>