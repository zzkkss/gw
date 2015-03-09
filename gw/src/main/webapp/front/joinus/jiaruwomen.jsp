<%@ page contentType="text/html; charset=utf-8"%>
<!DOCTYPE html>
<html>
<head>
<%  
      String path = request.getContextPath();  
      String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";  
    %>
<base href="<%=basePath %>" />
<meta charset="UTF-8">
<title>果园老农--</title>
<link rel="stylesheet" type="text/css" href="jscss/jPaginate/css/style.css" media="screen"/>
 <script src="jscss/js/jquery-1.9.1.min.js" type="text/javascript"></script>
   <script src="jscss/jPaginate/jquery.paginate.js" type="text/javascript"></script>
<script type="text/javascript">

function GetQueryString(name)
{
     var reg = new RegExp("(^|&)"+ name +"=([^&]*)(&|$)");
     var r = window.location.search.substr(1).match(reg);
     if(r!=null)return  unescape(r[2]); return null;
}
var totalPages;
var rows=GetQueryString("rows");
var page=GetQueryString("page");
$(document).ready(function() {
	var params = {
			"rows" : rows,
			"page" : page
		};
		$.ajax({
			url : "workByPage.do",
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
				document.getElementById('az'+(i.toString())).innerHTML=e.entity[i].name;
				document.getElementById('azz'+(i.toString())).innerHTML=e.entity[i].place;
				document.getElementById('hid'+i).innerHTML=e.entity[i].id;
				document.getElementById('ay'+(i.toString())).innerHTML=e.entity[i].quantity;
				document.getElementById('azzz'+(i.toString())).innerHTML=timeformat(new Date(e.entity[i].addtime));
				}
				$("#demo1").paginate({
					count 		: totalPages,
					start 		:page,
					display     : 2,
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

				   			window.location.href=basePath+"front/joinus/jiaruwomen.jsp?rows=7&page="+p;
						}else{
							window.location.href="front/joinus/jiaruwomen.jsp?rows=7&page="+p;
						}
						//window.location.href="front/joinus/jiaruwomen.jsp?rows=7&page="+p;
					}
				});

			},
			error:function(e){
				alert('error'+e);
			}
		
		}); 
});

$(function() {
	
$( ".in" ).click(function() {
	/* 	$(".zuolian").css("background-image","");
		$("#"+this.id).css("background-image","url('front/images/health/health_0000s_0000s_0001s_0001_lv.png");
		window.frames["articleframe"].src="front/mainproduct/zhulichanpin.jsp?rows=25&page=1&type="+this.id; */
		//window.parent.location.href="front/joinusdetailed.html?id="+document.getElementById('hid'+this.id.substring(2)).innerHTML;
		if (document.getElementById('hid'+ this.id.substring(2)).innerHTML == null| document.getElementById('hid'+ this.id.substring(2)).innerHTML == "") {}
		else{
		if(/msie/.test(navigator.userAgent.toLowerCase())){
   			var localObj = window.location;

   			var contextPath = localObj.pathname.split("/")[1];

   			var basePath = localObj.protocol+"//"+localObj.host+"/"+contextPath+"/";

   			window.parent.location.href=basePath+"front/joinusdetailed.html?id="+document.getElementById('hid'+this.id.substring(2)).innerHTML;
		}else{
			window.parent.location.href="front/joinusdetailed.html?id="+document.getElementById('hid'+this.id.substring(2)).innerHTML;
		}
		}
	});
	});
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

</script>
 <style type="text/css">
 body {
  overflow: hidden;
  width: 90%;
  margin-left: 5%;
}
 .in {
  border-bottom-color: #6c6c6c;
  border-bottom-style: solid;
  border-bottom-width: 1px;
height: 33px;
cursor: pointer;

}

.az {
  color: rgb(255, 255, 255);
  font-family: "Microsoft YaHei";
  font-size: 12px;
  line-height: 2.5;
  position: absolute;
  text-align: left;
  text-transform: uppercase;
  width: 200px;
  margin-left: 10px;
}

 .azz {
  color: rgb(255, 255, 255);
  font-family: "Microsoft YaHei";
  font-size: 12px;
  margin-left: 210px;
  line-height: 2.5;
  position: absolute;
  text-transform: uppercase;
  width: 100px;
  text-align: center;
}

 .azzz {
  color: rgb(255, 255, 255);
  font-family: "Microsoft YaHei";
  font-size: 12px;
  margin-left: 310px;
  line-height: 2.5;
  position: absolute;
  text-transform: uppercase;
  width: 100px;
  text-align: center;
}
.ay {
  color: rgb(255, 255, 255);
  font-family: "Microsoft YaHei";
  font-size: 12px;
  line-height: 2.5;
  position: absolute;
  text-align: center;
  text-transform: uppercase;
  width: 100px;
  margin-left: 400px;
}
#in{
background-color: rgb(3,53,34);
border: none;
}
.jPaginate {
  color: #a5a5a5;
  font-size: small;
  height: 34px;
  position: absolute;
  right: 0;
  width: 100%;
  bottom: 8px;
}
#demo1{
width: 175px;
}
.hid{
display: none;
}

</style>
</head>
<body>
<div style="border-bottom: 1px solid rgb(108, 108, 108); height: 43px;">
<div  id="in" class="in">
		<a id="az" class="az">岗位名称</a>
		<a id="azz" class="azz">工作地点</a>
		<a id="azzz" class="azzz">发布时间</a>
		<a id="ay" class="ay">招聘人数</a>
		<a id="hid" class="hid"></a>
		</div>
</div>
<div  id="in0" class="in">
		<a id="az0" class="az"></a>
		<a id="azz0" class="azz"></a>
		<a id="azzz0" class="azzz"></a>
		<a id="ay0" class="ay"></a>
		<a id="hid0" class="hid"></a>
		</div>
<div  id="in1" class="in">
		<a id="az1" class="az"></a>
		<a id="azz1" class="azz"></a>
		<a id="azzz1" class="azzz"></a>
		<a id="ay1" class="ay"></a>
		<a id="hid1" class="hid"></a>
		</div>
<div  id="in2" class="in">
		<a id="az2" class="az"></a>
		<a id="azz2" class="azz"></a>
		<a id="azzz2" class="azzz"></a>
		<a id="ay2" class="ay"></a>
		<a id="hid2" class="hid"></a>
		</div>
<div  id="in3" class="in">
		<a id="az3" class="az"></a>
		<a id="azz3" class="azz"></a>
		<a id="azzz3" class="azzz"></a>
		<a id="ay3" class="ay"></a>
		<a id="hid3" class="hid"></a>
		</div>
<div  id="in4" class="in">
		<a id="az4" class="az"></a>
		<a id="azz4" class="azz"></a>
		<a id="azzz4" class="azzz"></a>
		<a id="ay4" class="ay"></a>
		<a id="hid4" class="hid"></a>
		</div>
<div  id="in5" class="in">
		<a id="az5" class="az"></a>
		<a id="azz5" class="azz"></a>
		<a id="azzz5" class="azzz"></a>
		<a id="ay5" class="ay"></a>
		<a id="hid5" class="hid"></a>
		</div>
<div  id="in6" class="in">
		<a id="az6" class="az"></a>
		<a id="azz6" class="azz"></a>
		<a id="azzz6" class="azzz"></a>
		<a id="ay6" class="ay"></a>
		<a id="hid6" class="hid"></a>
		</div>
	
	
                <div id="demo1">                   
                </div>
</body>
</html>