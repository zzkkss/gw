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
<title>果园老农--品牌动态</title>
<link rel="stylesheet" type="text/css" href="jscss/jPaginate/css/style.css" media="screen"/>
 <script src="jscss/js/jquery-1.9.1.min.js" type="text/javascript"></script>
   <script src="jscss/jPaginate/jquery.paginate.js" type="text/javascript"></script>
<script type="text/javascript">
function timeformat(e){
	var nian=new Date(e).getFullYear();
	var yue=new Date(e).getMonth()+1;
	var ri=new Date(e).getDate();
	if(yue<10&ri<10){
		return nian+"-"+"0"+yue+"-"+"0"+ri;
	}else if(yue<10&ri>10){
		return nian+"-"+"0"+yue+"-"+ri;
	}else if(yue>10&ri<10){
		return nian+"-"+yue+"-"+"0"+ri;
	}else{
		return nian+"-"+yue+"-"+ri;
		
	}
}
function GetQueryString(name)
{
     var reg = new RegExp("(^|&)"+ name +"=([^&]*)(&|$)");
     var r = window.location.search.substr(1).match(reg);
     if(r!=null)return  unescape(r[2]); return null;
}
var totalPages;
var type=GetQueryString("type");
var rows=GetQueryString("rows");
var page=GetQueryString("page");
$(document).ready(function() {
	var params = {
			"type" : type,
			"rows" : rows,
			"page" : page
		};
		$.ajax({
			// è¯·æ±çurl
			url : "articleByPage.do",
			type : "post",
			data : params,
			cache : false,
			dataType : "json",
			success : function(e) {
				totalPages=Math.ceil(e.jqpage.totalRecords/9);
//				var from = document.getElementById('tf');
				for(var i=0;i<e.entity.length;i++){
	//			var img = document.createElement('img');
		//		img.id = "tf"+i;
			//	img.setAttribute("class", "tf");
				//img.src="upload/"+e[i].filename.split(".")[0]+"min"+"."+e[i].filename.split(".")[1];
				//from.appendChild(img);
				document.getElementById('az'+i).innerHTML=e.entity[i].title;
				document.getElementById('hid'+i).innerHTML=e.entity[i].id;
				document.getElementById('ay'+i).innerHTML=timeformat(new Date(e.entity[i].addtime));
				}
				$("#demo1").paginate({
					count 		: totalPages,
					start 		:page,
					display     : 4,
					border					: true,
					text_color  			: '#6c6c6c',
					background_color    	: '',	
					border_color:'#6c6c6c',
					text_hover_color  		: '#6c6c6c',
					background_hover_color	: '',
					images:false,
					onChange:function(p){
						if(/msie/.test(navigator.userAgent.toLowerCase())){
				   			var localObj = window.location;

				   			var contextPath = localObj.pathname.split("/")[1];

				   			var basePath = localObj.protocol+"//"+localObj.host+"/"+contextPath+"/";

				   			window.location.href=basePath+"front/brandmsg/pinpaidongtai.jsp?type=3&rows=9&page="+p;
						}else{
							window.location.href="front/brandmsg/pinpaidongtai.jsp?type=3&rows=9&page="+p;
						}
					//	window.location.href="front/brandmsg/pinpaidongtai.jsp?type=3&rows=9&page="+p;
					}
				});

			},
			error:function(e){
				alert('error'+e);
			}
		
		}); 
		
			
	    		
		 
		
});


	$(function() {

		$(".in").click(function() {
							if (document.getElementById('hid'
									+ this.id.substring(2)).innerHTML == null
									| document.getElementById('hid'
											+ this.id.substring(2)).innerHTML == "") {

							} else {

								/* 	$(".zuolian").css("background-image","");
									$("#"+this.id).css("background-image","url('front/images/health/health_0000s_0000s_0001s_0001_lv.png");
									window.frames["articleframe"].src="front/mainproduct/zhulichanpin.jsp?rows=25&page=1&type="+this.id; */
								// window.parent.location.href="front/detailed.html?id="+document.getElementById('hid'+this.id.substring(2)).innerHTML;
								if (/msie/.test(navigator.userAgent.toLowerCase())) {
									var localObj = window.location;

									var contextPath = localObj.pathname.split("/")[1];

									var basePath = localObj.protocol + "//"+ localObj.host + "/" + contextPath+ "/";

									window.parent.location.href = basePath+ "front/detailed.html?id="+ document.getElementById('hid'+ this.id.substring(2)).innerHTML;
								} else {
									window.parent.location.href = "front/detailed.html?id="+ document.getElementById('hid'+ this.id.substring(2)).innerHTML;
								}
							}
						});
	});
</script>
 <style type="text/css">
  body {
  height: 420px;
  width: 440px;
  position: absolute;
  top: 50px;
  left: 45px;
  overflow: hidden;
}
 .in {
  border-bottom-color: #6c6c6c;
  border-bottom-style: solid;
  border-bottom-width: 1px;
height: 35px;
cursor: pointer;

}
 .az{
 font-size: 12px;
  font-family: "Microsoft YaHei";
 color: rgb(255, 255, 255);
  text-transform: uppercase;
  line-height: 3;
  left: 5px;
  width: 300px;
  position: absolute;
 }
 .ay {
  color: rgb(255, 255, 255);
  font-family: "Microsoft YaHei";
  font-size: 12px;
  line-height: 3;
  text-transform: uppercase;
  right: 0;
  width:71px;
  position: absolute;
}

.hid{
display: none;
}



.articlet {
  border-top: 2px solid #6c6c6c;
  border-bottom: 2px solid #6c6c6c;
 height: 47px;
}

.articletitle {
  background-image: url("front/images/health/health_0000s_0000s_0001s_0001_lv.png");
  color: rgb(255, 255, 255);
  display: inline-block;
  font-family: "Microsoft YaHei";
  font-size: 12px;
  height: 35px;
  position: relative;
  width: 100%;
  top: 6px;
  text-transform: uppercase;
}
.articletitle img {
  position: absolute;
  right: 10px;
  top:8px;
}
.jPaginate {
  color: #a5a5a5;
  font-size: small;
  height: 34px;
  position: absolute;
  right: 0;
  width: 100%;
  bottom: 0;
}
#demo1{
width: 195px;
}
</style>
</head>
<body>
<div class="articlet">
			<div id="shihsangshenghuo" class="articletitle">&nbsp;&nbsp;品牌动态<br>&nbsp;&nbsp;promotions
			</div>
			
			</div>
<div  id="in0" class="in">
		<a id="az0" class="az"></a>
		<a id="ay0" class="ay"></a>
		<a id="hid0" class="hid"></a>
		</div>
<div  id="in1" class="in">
		<a id="az1" class="az"></a>
		<a id="ay1" class="ay"></a>
		<a id="hid1" class="hid"></a>
		</div>
<div  id="in2" class="in">
		<a id="az2" class="az"></a>
		<a id="ay2" class="ay"></a>
		<a id="hid2" class="hid"></a>
		</div>
<div  id="in3" class="in">
		<a id="az3" class="az"></a>
		<a id="ay3" class="ay"></a>
		<a id="hid3" class="hid"></a>
		</div>
<div  id="in4" class="in">
		<a id="az4" class="az"></a>
		<a id="ay4" class="ay"></a>
		<a id="hid4" class="hid"></a>
		</div>
<div  id="in5" class="in">
		<a id="az5" class="az"></a>
		<a id="ay5" class="ay"></a>
		<a id="hid5" class="hid"></a>
		</div>
<div  id="in6" class="in">
		<a id="az6" class="az"></a>
		<a id="ay6" class="ay"></a>
		<a id="hid6" class="hid"></a>
		</div>
<div  id="in7" class="in">
		<a id="az7" class="az"></a>
		<a id="ay7" class="ay"></a>
		<a id="hid7" class="hid"></a>
		</div>
<div  id="in8" class="in">
		<a id="az8" class="az"></a>
		<a id="ay8" class="ay"></a>
		<a id="hid8" class="hid"></a>
		</div>
	
	
                <div id="demo1">                   
                </div>
</body>
</html>