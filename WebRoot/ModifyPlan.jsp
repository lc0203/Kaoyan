<%@ page language="java" import="java.util.*,cn.enity.*;" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'StudyPlan.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<style type="text/css">
	  .Title{
		font-size: 24px;
		color: #FF0000;
		font-style: italic;
	  }
	  
	  .body{
	 	font-size: 16px;
		color: #000000;
		font-style: italic;
	  }
	  </style>

  </head>
  
  <body>
  
  
  <form action="planStudySetAction" id="for_PlanSet">
      <div style = "align:center">
      <div class = "center" style="width:50%;margin:0 auto;border:1px dashed#000">
      <div class="Title" style = "text-align:center">学习计划制定:</div><br><br><br>
      
      <div class="body"><span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;数学计划制定：</span></div><br>
      <div class="body" style ="text-align:center"><span>数学试卷：</span>
      <select name="sp.numPaperMath">
      <option value="">---请选择---</option>
      <option value="1">1 </option>
      <option value="2">2 </option>
      <option value="3">3 </option>
      <option value="4">4 </option>
      </select></div><br>
      <div class="body" style ="text-align:center"><span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;其他：</span>
      <input type="text" name="sp.othersMath" placeholder="请输入你的其余数学计划" />
      </div><br><br><br>
      
      <div class="body"><span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;英语计划制定：</span></div><br>
      <div class="body" style ="text-align:center"><span>英语试卷：</span>
      <select name="sp.numPaperEnglish">
      <option value="">---请选择---</option>
      <option value="1">1 </option>
      <option value="2">2 </option>
      <option value="3">3 </option>
      <option value="4">4 </option>
      </select></div><br>
      <div class="body" style ="text-align:center"><span>英语单词：</span>
      <select name="sp.numWordEnglish">
      <option value="">---请选择---</option>
      <option value="50">50 </option>
      <option value="75">75 </option>
      <option value="100">100 </option>
      <option value="125">125 </option>
      <option value="150">150 </option>
      <option value="175">175 </option> 
	  <option value="200">200 </option>   
      </select></div><br>
      <div class="body" style ="text-align:center"><span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;其他：</span>
      <input type="text" name="sp.othersEnglish" placeholder="请输入你的其余英语计划">
      </div><br><br><br>     
      
      <div class="body"><span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;专业课计划制定：</span></div><br>
      <div class="body" style ="text-align:center"><span>专业课试卷：</span>
      <select name="sp.numPaperMajor">
      <option value="">---请选择---</option>
      <option value="1">1 </option>
      <option value="2">2 </option>
      <option value="3">3 </option>
      <option value="4">4 </option>
      </select></div><br>
      <div class="body" style ="text-align:center"><span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;其他：</span>
      <input type="text" name="sp.othersMajor" placeholder="请输入你的其余专业课计划">
      </div><br><br><br>
      
      <div class="body"><span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;政治计划制定：</span></div><br>
      <div class="body" style ="text-align:center"><span>政治试卷：</span>
      <select name="sp.numPaperPolitics">
      <option value="">---请选择---</option>
      <option value="1">1 </option>
      <option value="2">2 </option>
      <option value="3">3 </option>
      <option value="4">4 </option>
      </select></div><br>
      <div class="body" style ="text-align:center"><span>政治选择题：</span>
      <select name="sp.numChoicePolitics">
      <option value="">---请选择---</option>
      <option value="25">25 </option>
      <option value="50">50 </option>
      <option value="75">75 </option>
      <option value="100">100 </option>
      <option value="125">125 </option>
      <option value="150">150 </option> 
      </select></div><br>
      <div class="body" style ="text-align:center"><span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;其他：</span>
      <input type="text" name="sp.othersPolitics" placeholder="请输入你的其余政治计划">
      </div><br><br><br>  
      <%Student st=(Student)session.getAttribute("user");%>
      <input style="visibility:hidden;" value ="<%=st.getUid() %>" name="sp.id">
      <input type="submit" value="完成" >            
      </div>
      </div>
      </form>
  </body>
</html>
