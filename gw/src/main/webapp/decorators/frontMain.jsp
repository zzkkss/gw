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
<base href="<%=basePath %>" />
<link rel="shortcut icon" href="decorators/images/32.ico" />
<link rel="icon" href="decorators/images/32.ico" />
<link rel="bookmark" href="decorators/images/32.ico" />
<link rel="shortcut icon" href="decorators/images/32.ico" />
<meta name="Author" content="zks" />
<meta http-equiv="X-UA-Compatible" content="IE=7,9,10" />
<title><decorator:title default="网站" ></decorator:title></title>
<link href="decorators/css/front/global.css" rel="stylesheet"
	type="text/css" />

<decorator:head></decorator:head>

 <script type="text/javascript">
 
    $(function() {
 $("#home").css("height",$(window).height());
 $("#home").css("width",$(window).width());
 $("#lawyer").css("left",$(window).width()/2-300);
 $("#contactme").css("left",$(window).width()/2-180);
 $(".tanchuchuangkou").css("top",$(window).height()*0.2);
 $( window ).resize(function(){
	 location=location;
 });
 var str=window.location.pathname.substring(1);
 if(str.substring(0, 2)=="gw"){
	 str=str.substring(3);
 }
  //  $("#"+str).css("background","none repeat scroll 0 0 #26723a"); 
  if(str==""){
	  str="front/main.html";
  }
  if(str=="front/sale.html"|str=="front/member.html"){
	  str="front/shop.html";
  }
  if(str=="front/training.html"){
	  str="front/joinus.html";
  }
  
  if(str=="front/mainproduct.html"){
	  str="front/newproduct.html";
  }
  if(str=="front/companyIntroduction.html"){
	  str="front/aboutus.html";
  }
  if(document.getElementById(str)==null){
	  
  }else{
 document.getElementById(str).style.background="none repeat scroll 0 0 #26723a";
 document.getElementById(str).style.height="25px";
  }
  
    $(".chuangkouX" ).click(function() {
    	$(".tanchuchuangkou").css("display","none");
	 });
    });
    function lawyerOpen(){
    	$(".tanchuchuangkou").css("display","none");
    	$("#lawyer").css("display","block");
    }
    function contactmeOpen(){
    	$(".tanchuchuangkou").css("display","none");
    	$("#contactme").css("display","block");
    }
 </script>
 <style type="text/css">
 .tanchuchuangkou{
 position: absolute;
 background-color: #fff;
 display: none;
 z-index: 100000;
 }
 
 #contactme{
 width:360px;
 height: 550px;
 }
 
 #contactme_content{
 width:260px;
 top:50px;
 left:50px;
 font-size: 12px;
  font-family: "Microsoft YaHei";
   color: #000;
  text-transform: uppercase;
  line-height: 2;
  position: absolute;
 overflow: hidden;
 }
 #contactme_content img{
   left:58px;
   position: absolute;
   }
 #lawyer{
  width:600px;
 height: 500px;
overflow: hidden;
 }
 #law_content{
 width: 500px;
 height:400px;
 top:50px;
 left:50px;
 font-size: 12px;
  font-family: "Microsoft YaHei";
   color: #000;
  text-transform: uppercase;
  line-height: 2;
  position: absolute;
  
   overflow-y: auto;
 overflow-x: hidden;
 }
 .tit1{
  font-size: 10px;
   line-height: 3;
    -moz-transform: matrix( 1.46931937945627,0,0,1.48854713022286,0,0);
  -webkit-transform: matrix( 1.46931937945627,0,0,1.48854713022286,0,0);
  -ms-transform: matrix( 1.46931937945627,0,0,1.48854713022286,0,0);
  font-family: "Microsoft YaHei";
  color: #000;
  text-transform: uppercase;
  line-height: 2;
  margin: 0 auto;
  width: 100%;
  position: absolute;
  text-align: center;
}

 .con{
 font-size: 12px;
  font-family: "Microsoft YaHei";
   color: #000;
  text-transform: uppercase;
  line-height: 2;
  position: absolute;
 
 }
 .chuangkouX{
 top:5px;
 right: 5px;
 width: 10px;
 height: 10px;
 font-size: 12px;
 position: absolute;
 cursor: pointer;
 }
 </style>
</head>
<body class="home" id="home"
	onload="<decorator:getProperty property="body.onload" />">



	<!--header-->
	<div id="ticklely_header">

		<div id="nav_center">
			<div class="menu_left">
				<ul>
					<li id="front/main.html"><a class="hide" href="front/main.html">首&nbsp;&nbsp;&nbsp;&nbsp;页</a></li>
					<li id="front/aboutus.html"><a class="hide" href="front/aboutus.html">关于我们</a></li>
					<li id="front/newproduct.html"><a class="hide" href="front/newproduct.html">优质产品</a> <!--[if lte IE 6]> 
<a href="../layouts/index.html">LAYOUTS 
<table><tr><td> 
<![endif]-->
						<ul>
							<li id="front/newproduct.html"><a href="front/newproduct.html"
								title="">新品上市</a></li>
							<li id="front/mainproduct.html"><a href="front/mainproduct.html"
								title="">主力产品</a></li>
						</ul> <!--[if lte IE 6]> 
</td></tr></table> 
</a> 
<![endif]--></li>
					<li id="front/health.html"><a class="hide" href="front/health.html">健康分享</a> <!--[if lte IE 6]> 
<a href="../boxes/index.html">BOXES 
<table><tr><td> 
<![endif]-->
						<ul>
							<li id="front/health.html?page=1"><a href="front/health.html?page=1" title="">时尚生活</a></li>
							<li id="front/health.html?page=2"><a href="front/health.html?page=2"
								title="">食品妙用</a></li>
						</ul> <!--[if lte IE 6]> 
</td></tr></table> 
</a> 
<![endif]--></li>

				</ul>
				<!-- clear the floats if required -->
				<div class="clear"></div>
			</div>
			<div class="menu_right">
				<ul>
					<li id="front/webstore.html"><a class="hide" href="front/webstore.html">网上商城</a></li>
					<li id="front/joinus.html"><a class="hide" href="front/joinus.html">加入我们</a>
					
					 <!--[if lte IE 6]> 
<a href="../layouts/index.html">LAYOUTS 
<table><tr><td> 
<![endif]-->
						<ul>
							<li id="front/training.html"><a href="front/training.html"
								title="">培训为先</a></li>
							<li id="front/joinus.html"><a href="front/joinus.html"
								title="">招聘职位</a></li>
						</ul> <!--[if lte IE 6]> 
</td></tr></table> 
</a> 
<![endif]--></li>
					<li id="front/shop.html"><a class="hide" href="front/shop.html">专卖店</a>
						<!--[if lte IE 6]> 
<a href="../layouts/index.html">LAYOUTS 
<table><tr><td> 
<![endif]-->
						<ul>
							<li id="front/sale.html"><a href="front/sale.html"
								title="">店内促销</a></li>
							<li id="front/member.html"><a href="front/member.html"
								title="">成为贵宾</a></li>
							<li id="front/shop.html"><a href="http://map.baidu.com/?newmap=1&ie=utf-8&s=s%26wd%3D%E6%9E%9C%E5%9B%AD%E8%80%81%E5%86%9C" target="_blank"
								title="">店址查询</a></li>
						</ul> <!--[if lte IE 6]> 
</td></tr></table> 
</a> 
<![endif]--></li>
					<li id="front/brandmsg.html"><a class="hide" href="front/brandmsg.html">品牌动态</a></li>

				</ul>
				<!-- clear the floats if required -->
				<div class="clear"></div>
			</div>
		</div>
	</div>
	<!--header-->
<div class="wrapperb">
	<decorator:body></decorator:body></div>
<div id="contactme" class="tanchuchuangkou">
<div class="chuangkouX">X</div>
<div id="contactme_content">
<span class="tit1"> 联系我们</span><br />
<img src="decorators/images/front/contact_0000.png" alt="" />
<br /><br /><br /><br /><br /><br />
联系电话：400-890-3990
<br /><br />
团购热线：010-84598734
<br /><br />
传真电话：+0086（010）84598760-8001
<br /><br />
地址：北京市延庆县八达岭镇飞东路1号 
<br /><br />
邮编：102101
<br /><br />
总部地址：北京市朝阳区驼房营西里93号楼南侧
<br /><br />
总部邮编：100016 
<br /><br />
</div>
</div>
<div id="lawyer" class="tanchuchuangkou">
<div class="chuangkouX">X</div>
<div id="law_content">
<span class="tit1"> 法律声明</span><br /><br />
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;    注意：使用本网站前请您仔细阅读以下条款。使用本网站则表明您已明知并接受这些条款。如果不接受这些条款请不要使用本网站。
<br /><br />
<span class="con">1. 网站的使用 </span>
<br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 金果园老农（北京）有限公司网站（以下简称 " 本站 " ）上的内容，仅供您个人而非商业使用。对于内容中所含的版权和其他所有权声明，您应予以尊重并在其副本中予以保留。如果网站内容无权利声明，并不代表网站对其不享有权利，也不意味着网站不主张权利，您应根据诚信原则尊重该等内容的合法权益并进行合法使用。您不得以任何方式修改、复制、公开展示、公布或分发这些材料或者以其他方式把它们用于任何公开或商业目的。禁止以任何目的把这些材料用于其他任何网站或其他平面媒体或网络计算机环境。本站上的内容及编辑等形式均受版权法等法律保护，任何未经授权的使用都可能构成对版权、商标和其他法律权利的侵犯。如果您不接受或违反上述约定，您使用本站的授权将自动终止，同时您应立即销毁任何已下载或打印好的本站内容。 
<br /><br />
<span class="con">2. 信息发布</span>
<br />
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  本站的信息按原样提供，不附加任何形式的保证，包括适合于特定目的或不侵犯知识产权的保证。此外，金果园老农（北京）有限公司也不保证本站信息的绝对准确性和绝对完整性。金果园老农（北京）有限公司网站中的内容或在这些内容中介绍的产品、价格和性能参数等会随时变更，恕不另行通知。本站中的内容也可能已经过期，金果园老农（北京）有限公司不承诺更新它们。本站发布的信息可能是在您本地尚不能得到的产品或服务，您可向当地的金果园老农（北京）有限公司业务联系人或代理商咨询。
<br /><br />
<span class="con">3. 关于用户提交材料</span>
<br />
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 除个人识别信息，其他任何您发送或邮寄给本站的材料、信息或联系方式 ( 以下统称信息 ) 均将被视为非保密和非专有。金果园老农（北京）有限公司将对这些信息不承担任何义务。同时您的提交行为如果没有特别声明时，可视为同意（或授权）：金果园老农（北京）有限公司及其授权人将可因商业或非商业的目的自由复制、透露、分发、合并和以其他方式利用这些信息和所有数据、图像、声音、文本及其他内容。您对本站的使用不得违背法律法规及公众道德，不得向或从本站发送任何非法、威胁、诽谤、中伤、淫秽、色情或其他可能违法的材料。
<br /><br />
<span class="con">4. 本站资料下载的使用</span>
<br />
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 本站出于方便浏览者的目的，提供了资料下载服务。如果您从本站下载资料，在使用软件时要遵守该资料携带的软件许可协议中所有的许可条款。在您阅读并接受软件许可协议的各项条款之前，不得下载或安装这一软件，不得将此资料用于商业目的，一经发现将视为侵权。
<br /><br />
<span class="con">5. 链接第三方网站</span>
<br />
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 本站到第三方网站的链接仅作为一种方便服务提供给您。如果使用这些链接，您将离开本站。金果园老农（北京）有限公司没有审查过任何第三方网站，对这些网站及其内容不进行控制，也不负任何责任。如果您决定访问任何与本站链接的第三方网站，其可能带来的结果和风险全部由您自己承担。
<br /><br />
<span class="con">6. 责任限度</span>
<br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 金果园老农（北京）有限公司及其供应商或本站中提到的第三方对任何损害概不负责（包括但不限于由损失的利润、损失的数据或业务中断而造成的损害），无论这些损害是否由于使用、或不能使用本站的结果、与本站链接的任何网站或者任何这类网站中包含的信息所引起，也不管它们是否有保证、合同、侵权行为或任何其它法律根据以及事前已得到这类损害可能发生的忠告。如果您由于使用本站的信息而导致需要对设备或数据进行维护、修理或纠正，您应意识到须自行承担必须承担由此而造成的所有费用。
<br />
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;金果园老农（北京）有限公司在发生下列情况时不承担责任：信息的传输是由网络服务提供者（金果园老农（北京）有限公司及其授权人）以外的人发起的；信息的传输、路由、提供连接及存储是通过必要的自动的技术处理过程实现的，信息未经网络服务提供者选择；除了对他人要求作出自动反应之外，网络服务提供者并没选择这些信息的提供者与接收者；网络服务提供者的系统或网络中介性或暂时性存储信息所形成的复制件，在正常情况下，没有被预定的接收者以外的人所获得，保留的时间也没有长于为预定的接收者获得信息提供传输、路由或连接所必须的合理时间；通过系统或网络传输的信息内容原封未动。 
<br /><br />
<span class="con">7. 一般原则</span>
 <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  金果园老农（北京）有限公司可能随时修改这些条款。您应经常访问本页面以了解当前的条款，因为这些条款与您密切相关。这些条款的某些条文也可能被本站中某些页面上明确指定的法律通告或条款所取代。
<br /><br />
8. 因本公告或使用本网站所发生的争议适用中华人民共和国法律。
<br /><br />
9. 因本公告或使用本网站发生争议，应当协商解决，协商不成的，各方一致同意由金果园老农（北京）有限公司所在地人民法院诉讼解决。
<br /><br />
10. 本公告的解释权及对本网站使用的解释权归结于金果园老农（北京）有限公司。
<br />
<span class="con"></span>
</div>
</div>
	<!--footer-->
	<div class="footer_bar">
		<div class="footer_left">
			<a href="javascritp:void(0);" onclick="contactmeOpen();return false">联系我们</a> <span>|</span> 
				<a href="javascritp:void(0);" onclick="lawyerOpen();return false">法律声明</a> <span>|</span> <a
				href="front/webstore.html">网上商城</a> <span>|</span> <a
				href="">ENGLISH</a>
		</div>

		<div class="footer_right">
			<a href="http://www.mymoyan.com">京ICP备12020996号&copy;2013果园老农
				ALLRIGHTS RESERVED 技术支持：摩研行空</a>
		</div>
	</div>
	<!--footer-->

</body>
</html>