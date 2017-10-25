<%@ page language="java" import="java.util.*,java.net.URLEncoder" pageEncoding="utf-8"%>
<%@ page import="java.net.URLDecoder"%>
    <%@ page import="people.*,cn.enity.*" %>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

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
          href="css/end.css" />
    <link rel="stylesheet" type="text/css"
          href="css/reg&log.css"/>
    <link rel="stylesheet" type="text/css"
          href="css/body.css"/>
    <link rel="stylesheet" type="text/css"
    	  href="css/personal.css"/>
    <script type="text/javascript" src="js/reg&log.js"></script>
    <script type="text/javascript" src="js/checklogin.js"></script>
    <script type="text/javascript" src="js/checkresign.js"></script>
    <script type="text/javascript">
    	function modify(){
    		var table1=document.getElementById("modify_information").style;
    		var table2=document.getElementById("displayInformation").style;
    		table1.display='block';
    		table2.display='none';
    	}
    	function cancelModify(){
    		var table1=document.getElementById("modify_information").style;
    		var table2=document.getElementById("displayInformation").style;
    		table1.display='none';
    		table2.display='block';
    	}
    </script>

</head>

<body >

   <% 
        if(session.getAttribute("user")==null){
        response.sendRedirect("index.jsp");
    } 
        Student stu=(Student)session.getAttribute("user");
    %>
    <div id="header">
    <div class="header1">
    <div class="header1logo">
    <a href=""><img src="picture/head_left.jpg" width="152" height="48"  />			</a></div>
    <a href=""> <div id="header1jianshen">
    <img src="picture/u=3158375482,1329673154&fm=23&gp=0.jpg" width="103" height="45" >
    </div>
    </a>
       <%if(stu!=null){ %>
    <div id="logged">
    <div class="hello"><span> <%=stu.getUid() %>,欢迎回来</span></div><%} %>
    <div class="icon"> <a href="MyServlet?action=myself"><img src="picture/1bfcab492af0b35963fcb257ddeff7b8.png"  ></a></div>
    </div>


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
            <input type=password id="password2"  placeholder="密码" >
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
            <li style="margin-left: 250px;border-radius:5px;" ><a href="index.jsp">首页
            </a></li>
            <li class="headerTwoZiXun"><a
                    href="resource_action">资源</a></li>
            <li><a href="study.jsp">学习</a></li>
            <li><a href="">论坛</a></li>
            <li style="background-color: #8d60ad;border-radius:5px;">
            <a href="personal.jsp"
            style="color: #fff;">个人
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
    <span>个人中心</span>
</div></div>
<!--链接位置-->
	<iframe src="personal_index.jsp" style="height:650px;width:100%;border:none;" ></iframe>
  
  
  </body>
</html>
