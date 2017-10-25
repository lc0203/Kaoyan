<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">  
<html>  
<head>  
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">  
<title>伪专家html5视频播放器,音乐播放器</title>  
<meta name="viewport" content="width=device-width, initial-scale=1.0">  
<link rel="stylesheet" href="http://code.jquery.com/mobile/1.3.2/jquery.mobile-1.3.2.min.css">  
<script src="http://code.jquery.com/jquery-1.8.3.min.js"></script>  
<script src="http://code.jquery.com/mobile/1.3.2/jquery.mobile-1.3.2.min.js"></script>  
<link href="video-js.css" rel="stylesheet" type="text/css">  
<script src="video.js"></script>  
<script>  
   videojs.options.flash.swf = "video-js.swf";  
</script>  
</head>  
<body>  
<div data-role="page">  
  <div data-role="header" data-position="fixed">  
    <h1>考研平台html5视频播放器,音乐播放器</h1>  
  </div>  
  
  <div data-role="content">  
    <p><b>如有疑问：请加qq群595579122，共同学习！！！</b></p>  
  
    <p><b>如有疑问：请加qq群595579122，共同学习！！！</b></p>  
     <video id="example_video_1" class="video-js vjs-default-skin" controls preload="none"   
      poster="herman.png"  
      data-setup="{}">  
    <source src="<%=request.getParameter("videoUrl") %>" type='video/mp4' />  
     
    <track kind="captions" src="demo.captions.vtt" srclang="en" label="English"></track>  
    <track kind="subtitles" src="demo.captions.vtt" srclang="en" label="English"></track>  
  </video>  
  </div>  
  
  <div data-role="footer" data-position="fixed">  
    <h1>伪专家html5视频播放器,音乐播放器</h1>  
  </div>  
</div>  
</body>  
</html>  
