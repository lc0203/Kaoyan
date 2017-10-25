<%@ page language="java" import="java.util.*,java.net.URLEncoder" pageEncoding="utf-8"%>
<%@page import="cn.enity.*" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

    <title>Welcome</title>
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
    <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
    <link rel="stylesheet" type="text/css"
          href="css/header.css"/>
    <link rel="stylesheet" type="text/css"
          href="css/body.css" />
    <link rel="stylesheet" type="text/css"
          href="css/end.css" />
    <link rel="stylesheet" type="text/css"
          href="css/reg&log.css"/>
    <script type="text/javascript" src="js/reg&log.js"></script>
    <script type="text/javascript" src="js/checklogin.js"></script>
    <script type="text/javascript" src="js/checkresign.js"></script>
</head>

<body>
<div id="header">
    <div class="header1">
        <div class="header1logo">
            <a href=""><img src="picture/head_left.jpg" width="152" height="48"  />			</a></div>
        	<a href=""><div id="header1jianshen" >
            <img src="picture/u=3158375482,1329673154&fm=23&gp=0.jpg" width="103" height="45" >
        </div>
        </a>
        <%if(session.getAttribute("user")==null) {%>
        <div id="headerOneReg" onClick="reg()" onmouseover="this.style.cursor='hand'"    >注册
        </div>
        <div id="headerOneLogin" class="headerOneLogin" onClick=log()  onmouseover="this.style.cursor='hand'">登录
        </div>
       
        <%}
        else{%>
		<%Student stu=(Student)session.getAttribute("user"); %>
        <div id="logged">
            <div class="hello"><span> <%=stu.getUid() %>,欢迎回来</span></div>
            <div class="icon"> <a href="MyServlet?action=myself"><img src="picture/1bfcab492af0b35963fcb257ddeff7b8.png"  ></a></div>
        </div>


        <%}%>
       
    </div>
</div>

<!--登入注册窗口的实现-->
<div id="reg&log" style="background:url(picture/c379f1a1f8e6b23b715abf15a1800e8e.jpg);">
    <div id="logOn" class="logOn hid">
        <span>用户登录</span>
        <div id="cd-login">
            <form action="logOnStudentAction" id="form_logOn">
                <input type="hidden" name="action" value="login">
                <!--登录表单--><br/>
                <div><span>账号（手机号）&nbsp;</span>
                    <input type="text"  name="id" id="st.id"  placeholder="手机号"  >
                </div><br/><div><span>密码&nbsp;&nbsp;</span>
                <input  type="password" name="password" id="st.password" placeholder="" >
            </div><br/><input  style="align:center;" type="button" onClick="logOn()"   value="登入">
            </form>
        </div></div>
<!--↑登录，↓注册-->
    <div id="regOn" class="regOn hid">
        <div><span>用户注册</span></div>

        <br/>
        <!--注册-->
        <form  action="addStudentAction" id="form_regOn" >
            <input type="hidden" name=action value=resign>
            <div><span>手机号&nbsp;</span>
                <input type="text"  name="st.uid" placeholder="手机号" >
            </div><br/>
            <div><span>密码&nbsp;&nbsp;</span>
            <input type=password name="st.password" id="password1" placeholder="密码" >
        </div><br/>
        <div><span>确认密码</span>
            <input type=password id="password2" id="password2" placeholder="密码" >
        </div><br>
        <div><span>姓名&nbsp;</span>
            <input type="text" name="st.uname" placeholder="姓名">
        </div><br/>
        <div><span>专业&nbsp;</span>
            <select name="st.major">
                <option value="software engineer">software engineer</option>
                <option value="art">art</option>
                <option value="computer science">computer science</option>
                <option value="journalist">journalist</option>
                <option value="metal science">metal science</option>
                <option value="finance">finance</option>
                <option value="language">language</option>
            </select></div>
            <input type="button" value="提交" onClick="regOn()">
        </form>
    </div></div>
<!--登录注册窗口实现结束-->


<div id="headerer">
    <div class="headerTwo">
        <ul>
            <li class="headerTwoShouye" style="background-color: #8d60ad;"><a href="index.jsp">首页
            </a></li>
            <li class="headerTwoZiXun"><a
                    href="resource_action">资源</a></li>
            <li><a href="study.jsp">学习</a></li>
            <li><a href="">论坛</a></li>
            <li><a href="personal.jsp">个人
            </a></li>
        </ul>
        <div class="headerTwoSosuoB">
            <input name="text" type="text">
            <div class="headerTwoSosuoA"></div>
        </div>
    </div>
</div>
<!--header-->
<div id="lianJieWeiZi"><div class="lianJieWeiZiBody">
    您的位置<a href="">链接位置</a> 
    <span>首页</span>
</div></div>
<!--链接位置-->
<!--
<div id="body1" >
    <div class="main_pic">
        <iframe class="video_iframe" style="z-index:1;" src="http://v.qq.com/iframe/player.html?vid=k0199t5ltyy&amp;
	 width=600&amp;height=400&amp;auto=0"  frameborder="0" height="400" width="600"  ></iframe>
        <div id="description">
            <div style="font-size:40px;color:#33CCFF; border-right:0px;" >奇迹健身</div>
            <br/><p>&nbsp;&nbsp;齐全的健身设备，专业的教练指导，良好的健身氛围。</p>
            <p>&nbsp;&nbsp;低价健身视频售卖，腹肌、胸肌、背阔肌全套训练！
            <p>&nbsp;&nbsp;包年套餐！只要998！只要998！年卡带回家！</p>
        </div>
    </div>

 -->
    <div id="body1" >
	<div class="main_pic">
	 <iframe class="video_iframe" style="z-index:1;" src="lunbo/LunBo.html" 
	 width=600&amp;height=400&amp;auto=0" allowfullscreen="" frameborder="0" height="400" width="600"  >
	  
</iframe>
	  <div id="description">
	  <div style="font-size:40px;color:#33CCFF;border-right:">大学索引</div>
	  <br/><a href="" target="_blank">北京：</a>&nbsp;&nbsp;<img src="icon/1.jpg"><a href="http://www.pku.edu.cn/" target="_blank">北大</a>&nbsp;&nbsp;<img src="icon/2.jpg"><a href="http://www.tsinghua.edu.cn/publish/newthu/index.html" target="_blank">清华</a>&nbsp;&nbsp;<img src="icon/3.jpg"><a href="http://www.ruc.edu.cn/" target="_blank">人大</a>
	  <br/><a href="" target="_blank">上海：</a>&nbsp;&nbsp;<img src="icon/4.jpg"><a href="http://www.fudan.edu.cn/2016/index.html" target="_blank">复旦</a>&nbsp;&nbsp;<img src="icon/5.jpg"><a href="https://www.tongji.edu.cn/" target="_blank">同济</a>&nbsp;&nbsp;<img src="icon/6.jpg"><a href="http://www.ecnu.edu.cn/" target="_blank">华师</a>
	  <br/><a href="" target="_blank">辽宁：</a>&nbsp;&nbsp;<img src="icon/7.jpg"><a href="" target="_blank">东大</a>&nbsp;&nbsp;<img src="icon/8.jpg"><a href="" target="_blank">大工</a>&nbsp;&nbsp;<img src="icon/9.jpg"><a href="" target="_blank">中医大</a>
	  <div style="font-size:20px;color:#33CCFF;border-right:">
	  <p><a href="http://www.kaoyan.com/beijing/" target="_blank">北京</a>&nbsp;&nbsp;<a href="http://www.kaoyan.com/jiangsu/" target="_blank">江苏</a>&nbsp;&nbsp;<a href="http://www.kaoyan.com/shanghai/" target="_blank">上海</a>&nbsp;&nbsp;<a href="http://www.kaoyan.com/guangdong/" target="_blank">广东</a>&nbsp;&nbsp;<a href="http://www.kaoyan.com/shaanxi/" target="_blank">陕西</a>&nbsp;&nbsp;<a href="http://www.kaoyan.com/hubei/" target="_blank">湖北</a>&nbsp;&nbsp;</p>
	  <p><a href="http://www.kaoyan.com/shandong/" target="_blank">山东</a>&nbsp;&nbsp;<a href="http://www.kaoyan.com/liaoning/" target="_blank">辽宁</a>&nbsp;&nbsp;<a href="http://www.kaoyan.com/guangdong/" target="_blank">河北</a>&nbsp;&nbsp;<a href="http://www.kaoyan.com/sichuan/" target="_blank">四川</a>&nbsp;&nbsp;<a href="http://www.kaoyan.com/tianjin/" target="_blank">天津</a>&nbsp;&nbsp;<a href="http://www.kaoyan.com/zhejiang/" target="_blank">浙江</a>&nbsp;&nbsp;</p>
	  <p><a href="http://www.kaoyan.com/hunan/" target="_blank">湖南</a>&nbsp;&nbsp;<a href="http://www.kaoyan.com/chongqing/" target="_blank">重庆</a>&nbsp;&nbsp;<a href="http://www.kaoyan.com/guangdong/" target="_blank">安徽</a>&nbsp;&nbsp;<a href="http://www.kaoyan.com/henan/" target="_blank">河南</a>&nbsp;&nbsp;<a href="http://www.kaoyan.com/jilin/" target="_blank">吉林</a>&nbsp;&nbsp;<a href="http://www.kaoyan.com/fujian/" target="_blank">福建</a>&nbsp;&nbsp;</p>
	  <p><a href="http://www.kaoyan.com/guizhou/" target="_blank">贵州</a>&nbsp;&nbsp;<a href="http://www.kaoyan.com/yunnan/" target="_blank">云南</a>&nbsp;&nbsp;<a href="http://www.kaoyan.com/guangdong/" target="_blank">山西</a>&nbsp;&nbsp;<a href="http://www.kaoyan.com/jiangxi/" target="_blank">江西</a>&nbsp;&nbsp;<a href="http://www.kaoyan.com/guangxi/" target="_blank">广西</a>&nbsp;&nbsp;<a href="http://www.kaoyan.com/gusu/" target="_blank">甘肃</a>&nbsp;&nbsp;</p>
	  <p><a href="http://www.kaoyan.com/xinjiang/" target="_blank">新疆</a>&nbsp;&nbsp;<a href="http://www.kaoyan.com/hainan/" target="_blank">海南</a>&nbsp;&nbsp;<a href="http://www.kaoyan.com/guangdong/" target="_blank">宁夏</a>&nbsp;&nbsp;<a href="http://www.kaoyan.com/xizang/" target="_blank">西藏</a>&nbsp;&nbsp;<a href="http://www.kaoyan.com/qinghai/" target="_blank">青海</a>&nbsp;&nbsp;</p>
	  <!-- <p><a href="http://www.kaoyan.com/heilongjiang/" target="_blank">黑龙江</a>&nbsp;&nbsp;<a href="http://www.kaoyan.com/neimenggu/">内蒙古</a>&nbsp;&nbsp;<a href="http://www.kaoyan.com/pages/211/">211</a>&nbsp;&nbsp;<a href="http://www.kaoyan.com/pages/985/">985</a>&nbsp;&nbsp;<a href="http://www.kaoyan.com/pages/34/" target="_blank">34所</a>&nbsp;&nbsp;</p> -->
	  </div>
	  </div>
    </div>
	  
	<!--BODY1-->
		<!-- end -->
	<div id="end">
	<div class="endIn">
	<ul><li>
	<a href="" style="color:#3366FF">友情链接</a>
	</li><li>
	<a href="https://p.bokecc.com/qrplay.bo?uid=FE644790DE9D154A&vid=B692812EA0F5B5829C33DC5901307461" style="color:#3366FF" target="_blank">陈永生考研班</a>
	</li><li>
	<a href="https://p.bokecc.com/qrplay.bo?uid=FE644790DE9D154A&vid=DE86C15794E5494B9C33DC5901307461" style="color:#3366FF" target="_blank">王冲考研班</a>
	</li><li>
	<a href="http://www.kaoyan.com/" style="color:#3366FF" target="_blank">考研帮</a>
	</li><li>
	<a href="http://www.chinakaoyan.com/" style="color:#3366FF" target="_blank">中国考研网</a>
	</li><li>
	
	</li></ul>
	</div></div>
	</div>
</body>
</html>
