<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
 <head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<title>考研平台个人中心</title>

<link rel="stylesheet" type="text/css" href="css/main.css">

<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/jquery-ui.min.js"></script>
<script type="text/javascript" src="js/jquery.simplesidebar.js"></script>

</head>
  
  <body>
<iframe name="info" src="19.1.html" style="width:100%;height:648px;border:none;"></iframe>
<div class="toolbar">
	<div id="open-sb" class="menu-button menu-left"></div>
</div>
<section class="sidebar">
	<center><div class="subNav" ><h1>个人中心</h1></div>
	<hr />
	<div class="subNav"><a href="19.1.html" target="info"><h6> 首页</h6></a></div>
	<div class="subNav"><h6>个人信息管理</h6></div>
	<ul class="navContent">
		<li><a href="baseinformation.jsp" target="info">基本信息</a></li>
		<li><a href="#">资料修改</a></li>
		<li><a href="#">头像修改</a></li>
	</ul>

	<div class="subNav"><h6>资源管理</h6></div>
	<ul class="navContent">
		<li><a href="fileUpload.jsp">文件上传</a></li>
		<li><a href="#">文件下载</a></li>
	</ul>

	<div class="subNav"><h6>安全设置</h6></div>
	<ul class="navContent">
	    <li><a href="#">手机号绑定</a></li>
		<li><a href="#">修改密码</a></li>
	</ul>
	<div class="subNav"><h6>帮助中心</h6></div>
	<ul class="navContent">
		<li><a href="#">常见问题</a></li>
		<li><a href="#">联系我们</a></li>
	</ul>
	<div class="subNav"><h6>早起签到</h6></div>
	</center>
</section>

<script type="text/javascript">
$( document ).ready(function() {
	$( '.sidebar' ).simpleSidebar({
		settings: {
			opener: '#open-sb',
			wrapper: '.wrapper',
			animation: {
				duration: 500,
				easing: 'easeOutQuint'
			}
		},
		sidebar: {
			align: 'left',
			width: 200,
			closingLinks: 'a',
		}
	});
});
</script>

<script type="text/javascript">
$(function(){
$(".subNav").click(function(){
			// 修改数字控制速度， slideUp(500)控制卷起速度
			$(this).next(".navContent").slideToggle(500);
	})	
})
</script>

</body>
</html>
