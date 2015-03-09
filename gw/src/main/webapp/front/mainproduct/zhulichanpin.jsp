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
<title>果园老农－－主力产品</title>
<link rel="stylesheet" type="text/css"
	href="jscss/jPaginate/css/style.css" media="screen" />
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
			url : "productByPage.do",
			type : "post",
			data : params,
			cache : false,
			dataType : "json",
			success : function(e) {
				totalPages=Math.ceil(e.jqpage.totalRecords/25);
//				var from = document.getElementById('tf');
				for(var i=0;i<e.entity.length;i++){
	//			var img = document.createElement('img');
		//		img.id = "tf"+i;
			//	img.setAttribute("class", "tf");
				//img.src="upload/"+e[i].filename.split(".")[0]+"min"+"."+e[i].filename.split(".")[1];
				//from.appendChild(img);
				document.getElementById('tdspan'+i).innerHTML=e.entity[i].name;
				document.getElementById('td'+i).name=e.entity[i].id;
				document.getElementById('tdimg'+i).src="uploadimg/"+e.entity[i].imgpath.substring(1,e.entity[i].imgpath.length-1).split(", ")[0];
			//	im[x].src="uploadimg/"+e[i].imgpath.substring(1,e[i].imgpath.length-1).split(", ")[0];
				}
				$("#demo1").paginate({
					count 		: totalPages,
					start 		:page,
					display     : 5,
					border					: true,
					text_color  			: '#6c6c6c',
					background_color    	: '',	
					border_color:'#6c6c6c',
					text_hover_color  		: '#6c6c6c',
					background_hover_color	: '',
					images:false,
					onChange:function(p){
						window.location.href="front/mainproduct/zhulichanpin.jsp?type=1&rows=25&page="+p;
					}
				});

			},
			error:function(e){
				alert('error'+e);
			}
		
		}); 
});

$(function() {
	
	});
	
	function xiangxi(e){
		window.parent.location.href="<%=basePath %>front/productdetailed.html?id="+e.name;
	}
</script>
<style type="text/css">


.Section0 table tr td p span{
font-size: 14px;
  font-family: "Microsoft YaHei";
  color: rgb( 255, 255, 255 );
  text-transform: uppercase;
  line-height: 1.664;
  text-align: center;
}
.Section0 table tr td p img{
cursor: url('front/images/newproduct/newproduct_0000s_zoom.png');
}
#demo1{
width: 195px;
}
.p0{
cursor: pointer;}
td{
text-align: center;}
</style>
</head>
<body style="height:830px">
	<!--StartFragment-->
	<div class="Section0" >
		<table
			style="border-collapse: collapse; width: 691px; mso-table-layout-alt: fixed; ">
			<tr height=155px;>
				<td id="td0" width=135 valign=top onclick="xiangxi(this);" 
					style="  border-right: 1px solid rgb(108, 108, 108); mso-border-right-alt: 1px solid rgb(108, 108, 108); border-bottom: 1px solid rgb(108, 108, 108); mso-border-bottom-alt: 1px solid rgb(108, 108, 108);"><p
						class=p0 style="margin-bottom: 0pt; margin-top: 0pt;">
						<img id="tdimg0" width=125 height=135 alt="" src="">
						<span id="tdspan0"></span>
					</p></td>
				<td id="td1" width=135 valign=top onclick="xiangxi(this);" 
					style="  border-left: 1px solid rgb(108, 108, 108); mso-border-left-alt: 1px solid rgb(108, 108, 108); border-right: 1px solid rgb(108, 108, 108); mso-border-right-alt: 1px solid rgb(108, 108, 108); border-bottom: 1px solid rgb(108, 108, 108); mso-border-bottom-alt: 1px solid rgb(108, 108, 108);"><p
						class=p0 style="margin-bottom: 0pt; margin-top: 0pt;">
						<img id="tdimg1" width=125 height=135 alt="" src="">
						<span id="tdspan1"></span>
					</p></td>
				<td id="td2" width=135 valign=top onclick="xiangxi(this);" 
					style="  border-left: 1px solid rgb(108, 108, 108); mso-border-left-alt: 1px solid rgb(108, 108, 108); border-right: 1px solid rgb(108, 108, 108); mso-border-right-alt: 1px solid rgb(108, 108, 108); border-bottom: 1px solid rgb(108, 108, 108); mso-border-bottom-alt: 1px solid rgb(108, 108, 108);"><p
						class=p0 style="margin-bottom: 0pt; margin-top: 0pt;">
						<img id="tdimg2" width=125 height=135 alt="" src="">
						<span id="tdspan2"></span>
					</p></td>
				<td id="td3" width=135 valign=top onclick="xiangxi(this);" 
					style="  border-left: 1px solid rgb(108, 108, 108); mso-border-left-alt: 1px solid rgb(108, 108, 108); border-right: 1px solid rgb(108, 108, 108); mso-border-right-alt: 1px solid rgb(108, 108, 108); border-bottom: 1px solid rgb(108, 108, 108); mso-border-bottom-alt: 1px solid rgb(108, 108, 108);"><p
						class=p0 style="margin-bottom: 0pt; margin-top: 0pt;">
						<img id="tdimg3" width=125 height=135 alt="" src="">
						<span id="tdspan3"></span>
					</p></td>
				<td id="td4" width=135 valign=top onclick="xiangxi(this);" 
					style="  border-left: 1px solid rgb(108, 108, 108); mso-border-left-alt: 1px solid rgb(108, 108, 108); border-bottom: 1px solid rgb(108, 108, 108); mso-border-bottom-alt: 1px solid rgb(108, 108, 108);"><p
						class=p0 style="margin-bottom: 0pt; margin-top: 0pt;">
						<img id="tdimg4" width=125 height=135 alt="" src="">
						<span id="tdspan4"></span>
					</p></td>
			</tr>
			<tr height=155px;>
				<td id="td5" width=135 valign=top onclick="xiangxi(this);" 
					style="  border-right: 1px solid rgb(108, 108, 108); mso-border-right-alt: 1px solid rgb(108, 108, 108); border-top: 1px solid rgb(108, 108, 108); mso-border-top-alt: 1px solid rgb(108, 108, 108); border-bottom: 1px solid rgb(108, 108, 108); mso-border-bottom-alt: 1px solid rgb(108, 108, 108);"><p
						class=p0 style="margin-bottom: 0pt; margin-top: 0pt;">
						<img id="tdimg5" width=125 height=135 alt="" src="">
						<span id="tdspan5"></span>
					</p></td>
				<td id="td6" width=135 valign=top onclick="xiangxi(this);" 
					style="  border-left: 1px solid rgb(108, 108, 108); mso-border-left-alt: 1px solid rgb(108, 108, 108); border-right: 1px solid rgb(108, 108, 108); mso-border-right-alt: 1px solid rgb(108, 108, 108); border-top: 1px solid rgb(108, 108, 108); mso-border-top-alt: 1px solid rgb(108, 108, 108); border-bottom: 1px solid rgb(108, 108, 108); mso-border-bottom-alt: 1px solid rgb(108, 108, 108);"><p
						class=p0 style="margin-bottom: 0pt; margin-top: 0pt;">
						<img id="tdimg6" width=125 height=135 alt="" src="">
						<span id="tdspan6"></span>
					</p></td>
				<td id="td7" width=135 valign=top onclick="xiangxi(this);" 
					style="  border-left: 1px solid rgb(108, 108, 108); mso-border-left-alt: 1px solid rgb(108, 108, 108); border-right: 1px solid rgb(108, 108, 108); mso-border-right-alt: 1px solid rgb(108, 108, 108); border-top: 1px solid rgb(108, 108, 108); mso-border-top-alt: 1px solid rgb(108, 108, 108); border-bottom: 1px solid rgb(108, 108, 108); mso-border-bottom-alt: 1px solid rgb(108, 108, 108);"><p
						class=p0 style="margin-bottom: 0pt; margin-top: 0pt;">
						<img id="tdimg7" width=125 height=135 alt="" src="">
						<span id="tdspan7"></span>
					</p></td>
				<td id="td8" width=135 valign=top onclick="xiangxi(this);" 
					style="  border-left: 1px solid rgb(108, 108, 108); mso-border-left-alt: 1px solid rgb(108, 108, 108); border-right: 1px solid rgb(108, 108, 108); mso-border-right-alt: 1px solid rgb(108, 108, 108); border-top: 1px solid rgb(108, 108, 108); mso-border-top-alt: 1px solid rgb(108, 108, 108); border-bottom: 1px solid rgb(108, 108, 108); mso-border-bottom-alt: 1px solid rgb(108, 108, 108);"><p
						class=p0 style="margin-bottom: 0pt; margin-top: 0pt;">
						<img id="tdimg8" width=125 height=135 alt="" src="">
						<span id="tdspan8"></span>
					</p></td>
				<td id="td9" width=135 valign=top onclick="xiangxi(this);" 
					style="  border-left: 1px solid rgb(108, 108, 108); mso-border-left-alt: 1px solid rgb(108, 108, 108); border-top: 1px solid rgb(108, 108, 108); mso-border-top-alt: 1px solid rgb(108, 108, 108); border-bottom: 1px solid rgb(108, 108, 108); mso-border-bottom-alt: 1px solid rgb(108, 108, 108);"><p
						class=p0 style="margin-bottom: 0pt; margin-top: 0pt;">
						<img id="tdimg9" width=125 height=135 alt="" src="">
						<span id="tdspan9"></span>
					</p></td>
			</tr>
			<tr height=155px;>
				<td id="td10" width=135 valign=top onclick="xiangxi(this);" 
					style="  border-right: 1px solid rgb(108, 108, 108); mso-border-right-alt: 1px solid rgb(108, 108, 108); border-top: 1px solid rgb(108, 108, 108); mso-border-top-alt: 1px solid rgb(108, 108, 108); border-bottom: 1px solid rgb(108, 108, 108); mso-border-bottom-alt: 1px solid rgb(108, 108, 108);"><p
						class=p0 style="margin-bottom: 0pt; margin-top: 0pt;">
						<img id="tdimg10" width=125 height=135 alt="" src="">
						<span id="tdspan10"></span>
					</p></td>
				<td id="td11" width=135 valign=top onclick="xiangxi(this);" 
					style="  border-left: 1px solid rgb(108, 108, 108); mso-border-left-alt: 1px solid rgb(108, 108, 108); border-right: 1px solid rgb(108, 108, 108); mso-border-right-alt: 1px solid rgb(108, 108, 108); border-top: 1px solid rgb(108, 108, 108); mso-border-top-alt: 1px solid rgb(108, 108, 108); border-bottom: 1px solid rgb(108, 108, 108); mso-border-bottom-alt: 1px solid rgb(108, 108, 108);"><p
						class=p0 style="margin-bottom: 0pt; margin-top: 0pt;">
						<img id="tdimg11" width=125 height=135 alt="" src="">
						<span id="tdspan11"></span>
					</p></td>
				<td id="td12" width=135 valign=top onclick="xiangxi(this);" 
					style="  border-left: 1px solid rgb(108, 108, 108); mso-border-left-alt: 1px solid rgb(108, 108, 108); border-right: 1px solid rgb(108, 108, 108); mso-border-right-alt: 1px solid rgb(108, 108, 108); border-top: 1px solid rgb(108, 108, 108); mso-border-top-alt: 1px solid rgb(108, 108, 108); border-bottom: 1px solid rgb(108, 108, 108); mso-border-bottom-alt: 1px solid rgb(108, 108, 108);"><p
						class=p0 style="margin-bottom: 0pt; margin-top: 0pt;">
						<img id="tdimg12" width=125 height=135 alt="" src="">
						<span id="tdspan12"></span>
				<td id="td13" width=135 valign=top onclick="xiangxi(this);" 
					style="  border-left: 1px solid rgb(108, 108, 108); mso-border-left-alt: 1px solid rgb(108, 108, 108); border-right: 1px solid rgb(108, 108, 108); mso-border-right-alt: 1px solid rgb(108, 108, 108); border-top: 1px solid rgb(108, 108, 108); mso-border-top-alt: 1px solid rgb(108, 108, 108); border-bottom: 1px solid rgb(108, 108, 108); mso-border-bottom-alt: 1px solid rgb(108, 108, 108);"><p
						class=p0 style="margin-bottom: 0pt; margin-top: 0pt;">
						<img id="tdimg13" width=125 height=135 alt="" src="">
						<span id="tdspan13"></span>
					</p></td>
				<td id="td14" width=135 valign=top onclick="xiangxi(this);" 
					style="  border-left: 1px solid rgb(108, 108, 108); mso-border-left-alt: 1px solid rgb(108, 108, 108); border-top: 1px solid rgb(108, 108, 108); mso-border-top-alt: 1px solid rgb(108, 108, 108); border-bottom: 1px solid rgb(108, 108, 108); mso-border-bottom-alt: 1px solid rgb(108, 108, 108);"><p
						class=p0 style="margin-bottom: 0pt; margin-top: 0pt;">
						<img id="tdimg14" width=125 height=135 alt="" src="">
						<span id="tdspan14"></span>
					</p></td>
			</tr>
			<tr height=155px;>
				<td id="td15" width=135 valign=top onclick="xiangxi(this);" 
					style="  border-right: 1px solid rgb(108, 108, 108); mso-border-right-alt: 1px solid rgb(108, 108, 108); border-top: 1px solid rgb(108, 108, 108); mso-border-top-alt: 1px solid rgb(108, 108, 108); border-bottom: 1px solid rgb(108, 108, 108); mso-border-bottom-alt: 1px solid rgb(108, 108, 108);"><p
						class=p0 style="margin-bottom: 0pt; margin-top: 0pt;">
						<img id="tdimg15" width=125 height=135 alt="" src="">
						<span id="tdspan15"></span>
					</p></td>
				<td id="td16" width=135 valign=top onclick="xiangxi(this);" 
					style="  border-left: 1px solid rgb(108, 108, 108); mso-border-left-alt: 1px solid rgb(108, 108, 108); border-right: 1px solid rgb(108, 108, 108); mso-border-right-alt: 1px solid rgb(108, 108, 108); border-top: 1px solid rgb(108, 108, 108); mso-border-top-alt: 1px solid rgb(108, 108, 108); border-bottom: 1px solid rgb(108, 108, 108); mso-border-bottom-alt: 1px solid rgb(108, 108, 108);"><p
						class=p0 style="margin-bottom: 0pt; margin-top: 0pt;">
						<img id="tdimg16" width=125 height=135 alt="" src="">
						<span id="tdspan16"></span>
					</p></td>
				<td id="td17" width=135 valign=top onclick="xiangxi(this);" 
					style="  border-left: 1px solid rgb(108, 108, 108); mso-border-left-alt: 1px solid rgb(108, 108, 108); border-right: 1px solid rgb(108, 108, 108); mso-border-right-alt: 1px solid rgb(108, 108, 108); border-top: 1px solid rgb(108, 108, 108); mso-border-top-alt: 1px solid rgb(108, 108, 108); border-bottom: 1px solid rgb(108, 108, 108); mso-border-bottom-alt: 1px solid rgb(108, 108, 108);"><p
						class=p0 style="margin-bottom: 0pt; margin-top: 0pt;">
						<img id="tdimg17" width=125 height=135 alt="" src="">
						<span id="tdspan17"></span>
				<td id="td18" width=135 valign=top onclick="xiangxi(this);" 
					style="  border-left: 1px solid rgb(108, 108, 108); mso-border-left-alt: 1px solid rgb(108, 108, 108); border-right: 1px solid rgb(108, 108, 108); mso-border-right-alt: 1px solid rgb(108, 108, 108); border-top: 1px solid rgb(108, 108, 108); mso-border-top-alt: 1px solid rgb(108, 108, 108); border-bottom: 1px solid rgb(108, 108, 108); mso-border-bottom-alt: 1px solid rgb(108, 108, 108);"><p
						class=p0 style="margin-bottom: 0pt; margin-top: 0pt;">
						<img id="tdimg18" width=125 height=135 alt="" src="">
						<span id="tdspan18"></span>
					</p></td>
				<td id="td19" width=135 valign=top onclick="xiangxi(this);" 
					style="  border-left: 1px solid rgb(108, 108, 108); mso-border-left-alt: 1px solid rgb(108, 108, 108); border-top: 1px solid rgb(108, 108, 108); mso-border-top-alt: 1px solid rgb(108, 108, 108); border-bottom: 1px solid rgb(108, 108, 108); mso-border-bottom-alt: 1px solid rgb(108, 108, 108);"><p
						class=p0 style="margin-bottom: 0pt; margin-top: 0pt;">
						<img id="tdimg19" width=125 height=135 alt="" src="">
						<span id="tdspan19"></span>
					</p></td>
			</tr>
			<tr height=155px;>
				<td id="td20" width=135 valign=top onclick="xiangxi(this);" 
					style="  border-right: 1px solid rgb(108, 108, 108); mso-border-right-alt: 1px solid rgb(108, 108, 108); border-top: 1px solid rgb(108, 108, 108); mso-border-top-alt: 1px solid rgb(108, 108, 108);"><p
						class=p0 style="margin-bottom: 0pt; margin-top: 0pt;">
						<img id="tdimg20" width=125 height=135 alt="" src="">
						<span id="tdspan20"></span>
					</p></td>
				<td id="td21" width=135 valign=top onclick="xiangxi(this);" 
					style="  border-left: 1px solid rgb(108, 108, 108); mso-border-left-alt: 1px solid rgb(108, 108, 108); border-right: 1px solid rgb(108, 108, 108); mso-border-right-alt: 1px solid rgb(108, 108, 108); border-top: 1px solid rgb(108, 108, 108); mso-border-top-alt: 1px solid rgb(108, 108, 108);"><p
						class=p0 style="margin-bottom: 0pt; margin-top: 0pt;">
						<img id="tdimg21" width=125 height=135 alt="" src="">
						<span id="tdspan21"></span>
					</p></td>
				<td id="td22" width=135 valign=top onclick="xiangxi(this);" 
					style="  border-left: 1px solid rgb(108, 108, 108); mso-border-left-alt: 1px solid rgb(108, 108, 108); border-right: 1px solid rgb(108, 108, 108); mso-border-right-alt: 1px solid rgb(108, 108, 108); border-top: 1px solid rgb(108, 108, 108); mso-border-top-alt: 1px solid rgb(108, 108, 108);"><p
						class=p0 style="margin-bottom: 0pt; margin-top: 0pt;">
						<img id="tdimg22" width=125 height=135 alt="" src="">
						<span id="tdspan22"></span>
				<td id="td23" width=135 valign=top onclick="xiangxi(this);" 
					style="  border-left: 1px solid rgb(108, 108, 108); mso-border-left-alt: 1px solid rgb(108, 108, 108); border-right: 1px solid rgb(108, 108, 108); mso-border-right-alt: 1px solid rgb(108, 108, 108); border-top: 1px solid rgb(108, 108, 108); mso-border-top-alt: 1px solid rgb(108, 108, 108);"><p
						class=p0 style="margin-bottom: 0pt; margin-top: 0pt;">
						<img id="tdimg23" width=125 height=135 alt="" src="">
						<span id="tdspan223"></span>
					</p></td>
				<td id="td24" width=135 valign=top onclick="xiangxi(this);" 
					style="  border-left: 1px solid rgb(108, 108, 108); mso-border-left-alt: 1px solid rgb(108, 108, 108); border-top: 1px solid rgb(108, 108, 108); mso-border-top-alt: 1px solid rgb(108, 108, 108);"><p
						class=p0 style="margin-bottom: 0pt; margin-top: 0pt;">
						<img id="tdimg24" width=125 height=135 alt="" src="">
						<span id="tdspan24"></span>
					</p></td>
			</tr>
		</table>
	</div>

	<div id="demo1"></div>
</body>
</html>