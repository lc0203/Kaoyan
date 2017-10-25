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

<body style="background:url(picture/2-810-jpg_6-1080-0-0-1080.jpg);
background-size: 100% 100%;" >

   <% 
        Student stu=(Student)session.getAttribute("user");
    All_information info;
	if(session.getAttribute("user_info")!=null){
		info=(All_information)session.getAttribute("user_info");}
	else{
		info=new All_information();
		info.setEmpty();
		if(stu!=null){
		info.setName(stu.getUname());}//将昵称暂时赋给真名
	} %>
	<center style="margin-top:50px;" id="displayInformation">
		<div style="width:50%;opacity: 0.8;"><br>
		<table style="font-size:20px;">
			<tr><td width=130px;>姓名</td><td width=200px;><%=info.getName() %></td></tr>
			<tr><td>年龄</td><td><%=info.getAge() %> </td></tr>
			<tr><td>性别</td><td><%=info.getSex() %> </td></tr>
			<tr><td>所在地区</td><td><%=info.getArea() %> </td></tr>
			<tr><td>本科院校</td><td><%=info.getSchool1() %> </td></tr>
			<tr><td>考研年份</td><td><%=info.getYear() %> </td></tr>
			<tr><td>报考专业</td> <td><%=info.getMajor() %> </td></tr>
			<tr><td>报考院校</td><td><%=info.getSchool2() %> </td></tr>
			<tr><td>邮箱</td><td><%=info.getEmail() %> </td></tr>
			<tr><td>个人简介</td><td rowspan=3><%=info.getProduce() %> </td></tr>
			<tr></tr><tr></tr>
			<tr><td></td> <td><input style="margin-left:100px;" type="button" value="修改" onClick="modify()" /></td>
		</table>
		</div>
	</center>
	<!-- 修改信息↓ -->
   <div id="modify_information" style="display:none;margin-top:50px">
  <center style="margin-top:50px;">
  <form action="addInformation" method="post">   
  <table style="font-size:20px;">
  <tr> 
      <td width=130px;>姓名</td>
      <td><input type="text" name="info.name" value="<%=info.getName()%>"></td> 
  </tr>
  <tr><td colspan=2>
  <input type="text" readonly="readonly" 
  style="border:none;color:red;BACKGROUND-COLOR: transparent;margin-left:130px;" 
  value="请输入您的真实姓名"/></td></tr>
  <tr> 
      <td>年龄</td>
      <td><input type="text" name="info.age" ></td>
  </tr>
  <tr> 
      <td>性别</td>
      <td>
      <input type="radio" name="info.sex" value="男"/>男
      <input type="radio" name="info.sex" value="女" checked/>女
      </td>
  </tr>
  <tr> 
      <td>所在地区</td>
      <td><input type="text" name="info.area" ></td>
  </tr>
  <tr> 
      <td>本科院校</td>
      <td><input type="text" name="info.school1" ></td>
  </tr>
  <tr> 
      <td>考研年份</td>
      <td>
      <select name="info.year">
      <option value="2017">2017</option>
      <option value="2018">2018</option>
      <option value="2019">2019</option>
      </select>
      </td>
  </tr>
  <tr> 
      <td>报考专业</td>
      <td><input type="text" name="info.major" ></td>
  </tr>
  <tr> 
      <td>报考院校</td>
      <td><input type="text" name="info.school2" ></td>
  </tr>
  <tr> 
      <td>邮箱</td>
      <td><input type="text" name="info.email" ></td>
  </tr>
  <tr> 
      <td>个人简介</td>
      <td><textarea name="info.produce" cols="30" rows="3"></textarea></td>
  </tr> 
   <tr> 
      <td><input type="submit" value="提交"></td>
      <td><input type="reset" value="重置"> 
      <input type="button" style="margin-left:50px;" value="取消" onClick="cancelModify()"/></td>
  </tr> 
  </table>
  <%if(stu!=null){ %>
  <input type="text" style="visibility:hidden" name="info.id" value="<%=stu.getUid() %>" /><%} %>
  </form>  
  </center>
  </div>
  <!-- 修改信息↑ -->
  
  
  </body>
</html>
