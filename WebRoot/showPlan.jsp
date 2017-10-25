<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="Plan.*,people.*,cn.enity.*" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'showPlan.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<style>
	  .Title{
  		font-size: 24px;
		color: #FF0000;
		font-style: italic;
  }
  
  .Middle{
  		font-size: 20px;
		color: #FF0000;
		font-style: italic;
  }
  
   .body{
 	font-size: 16px;
	color: #000000;
	font-style: italic;
  }
  
  .plan{
    margin-left:75%;
}
	.daily{
	margin-left:50%;
	}
	  </style>
	  
	  <script type="text/javascript">
	function func(){
		var options=document.getElementsByName("checkbox");
		var check=true;
		for (var i=0;i<options.length;i++){
			if(!options[i].checked){
				check=false;}
			}
		if(check==false){		
			for (var j=0;j<options.length;j++){
					options[j].checked=true;
			}
		}else{
				for (var m=0;m<options.length;m++){
					options[m].checked=false;	}
				}
		}
	function finishSchedule(){
		var options=document.getElementsByName("checkbox");
		var check = true;
		for (var i=0;i<options.length;i++){
			if(!options[i].checked){
				check = false;
				break;
			}
		}
		if(check){
			document.getElementById("for_ScheduleFinish").submit();
		}else{
		alert("你还未完成今天的计划！不能打卡！");
		}
	}
	
	</script>
 </head>
  
  <body>
  <form action="finishScheduleAction" id="for_ScheduleFinish">
  	<div style = "align:center">
    <div class = "center" style="width:50%;margin:0 auto;">
   <%Student stu=(Student)session.getAttribute("user"); 
   Schedule schedule =(Schedule)session.getAttribute("user_schedule"); 
   if(schedule==null){
	   schedule=new Schedule();
	   schedule.setId(stu.getUid());
   }
   if (schedule.getFinished()==0){
  	 SelfStudyPlan sp=(SelfStudyPlan)session.getAttribute("user_plan"); 
	boolean isEmptyMath=true,isEmptyEnglish=true,isEmptyMajor=true,isEmptyPolitics=true;%>
  <%if(sp!=null){ 
  
	if((sp.getNumPaperMath()==null||sp.getNumPaperMath().equals("")) && (sp.getOthersMath()==null||sp.getOthersMath().equals("")))
		isEmptyMath = true;
	else
		isEmptyMath = false;
	
	if((sp.getNumPaperEnglish()==null||sp.getNumPaperEnglish().equals(""))&&(sp.getNumWordEnglish()==null||sp.getNumWordEnglish().equals(""))&&(sp.getOthersEnglish()==null||sp.getOthersEnglish().equals("")))
		isEmptyEnglish = true;
	else
		isEmptyEnglish = false;
		
	if((sp.getNumPaperMajor()==null||sp.getNumPaperMajor().equals(""))&&(sp.getOthersMajor()==null||sp.getOthersMajor().equals("")))
		isEmptyMajor = true;
	else
		isEmptyMajor = false;
		
	if((sp.getNumPaperPolitics()==null||sp.getNumPaperPolitics().equals(""))&&(sp.getNumChoicePolitics()==null||sp.getNumChoicePolitics().equals(""))&&(sp.getOthersPolitics()==null||sp.getOthersPolitics().equals("")))
		isEmptyPolitics = true;
	else
		isEmptyPolitics = false;		
%>

    <div class="Title" style="text-align:center"><span>今天还未完成计划！请继续努力！</span></div><br>
	<div class="plan"><input type="button" value="全选" onclick="func()"></div> 
	<%if(!isEmptyMath){ %> 
	 <div class="Middle">
	 <span>今日的数学计划：</span>
	 </div><br>
    <div class="body" style="width:75%;margin:0 auto;">
    <%if(!(sp.getNumPaperMath()==null||sp.getNumPaperMath().equals(""))){ %>
    <input type="checkbox" id="checkPaperMath" name="checkbox">
    <span>&nbsp;共 <%= sp.getNumPaperMath() %>&nbsp;张数学试卷</span><br>
    <%} 
    if(!(sp.getOthersMath()==null||sp.getOthersMath().equals(""))){%>
    <input type="checkbox" id="checkOthersMath" name="checkbox">
    <span>&nbsp;<%=sp.getOthersMath()%></span><br>
        <%}%>
    </div><br>
    <% } %>
	 <%if(!isEmptyEnglish){ %>
	 <div class="Middle">
	 <span>今日的英语计划：</span>
	 </div><br>
	 
    <div class="body" style="width:75%;margin:0 auto;">
    <%if(!(sp.getNumPaperEnglish()==null||sp.getNumPaperEnglish().equals(""))){ %>
    <input type="checkbox" id="checkPaperEnglish" name="checkbox">
    <span>&nbsp;共<%= sp.getNumPaperEnglish() %>&nbsp;张英语试卷</span><br>
    <%}
    if(!(sp.getNumWordEnglish()==null||sp.getNumWordEnglish().equals(""))) {%>
    <input type="checkbox" id="checkWordEnglish" name="checkbox">
    <span>&nbsp;共<%= sp.getNumWordEnglish() %>&nbsp;个英语单词</span><br>  
    <%}
    if(!(sp.getOthersEnglish()==null||sp.getOthersEnglish().equals(""))){ %> 
    <input type="checkbox" id="checkOthersEnglish" name="checkbox">
    <span>&nbsp;<%= sp.getOthersEnglish() %></span><br>
    <% } %>
    </div>
    <br>
   <%} %>
    
    <%if(!isEmptyMajor){ %>
	 <div class="Middle">
	 <span>今日的专业课计划：</span>
	 </div><br>
    <div class="body" style="width:75%;margin:0 auto;">
    <%if(!(sp.getNumPaperMajor()==null||sp.getNumPaperMajor().equals(""))){ %>
    <input type="checkbox" id="checkPaperMajor" name="checkbox">
    <span>&nbsp;共<%= sp.getNumPaperMajor() %>&nbsp;张专业课试卷</span><br>
    <%}
    if(!(sp.getOthersMajor()==null||sp.getOthersMajor().equals(""))){ %>
    <input type="checkbox" id="checkOthersMajor" name="checkbox">
    <span>&nbsp;<%= sp.getOthersMajor() %></span><br>
   <% } %>
    </div> <br>
   <%} %>
	<%if(!isEmptyPolitics){ %>     
	 <div class="Middle">
	 <span>今日的政治计划：</span>
	 </div><br>
    <div class="body" style="width:75%;margin:0 auto;">
    <%if(!(sp.getNumPaperPolitics()==null||sp.getNumPaperPolitics().equals(""))){ %>
    <input type="checkbox" id="checkPaperPolitics" name="checkbox">
    <span>&nbsp;共<%= sp.getNumPaperPolitics() %>&nbsp;张政治试卷</span><br>
    <%}
    if(!(sp.getNumChoicePolitics()==null||sp.getNumChoicePolitics().equals(""))){ %>
    <input type="checkbox" id="checkChoicePolitics" name="checkbox">
    <span>&nbsp;共<%= sp.getNumChoicePolitics() %>&nbsp;个政治选择题</span><br>   
    <%}
    if(!(sp.getOthersPolitics()==null||sp.getOthersPolitics().equals(""))){ %>
    <input type="checkbox" id="checkOthersPolitics" name="checkbox">
    <span>&nbsp;<%= sp.getOthersPolitics() %></span><br>
    <%}%>
    </div><br>
   <% }} %>
    <%if(isEmptyMath && isEmptyEnglish && isEmptyMajor && isEmptyPolitics){ %>
    <br><br><br>
    	<div class = "Title" style = "text-align:center"><span>你还没有制定学习计划！请去制定！</span></div>
    	<br><br>
    	<div class = "plan"><input class="body" type="button" value="制定计划" style="width:150px;height:50px;" onClick ="location.href='ModifyPlan.jsp'" ></div><br><br>
    	
    <%}
    else{ %>	     
    <div class="daily"><input class="body" type="button" value="修改计划" style="width:auto;height:25px;" onClick ="location.href='ModifyPlan.jsp'" >&nbsp;
    <input class="body" type="button" value="打卡"  style="width:auto;height:25px" onClick="finishSchedule()"></div>
    <input style="visibility:hidden;" value ="<%=stu.getUid() %>" name="schedule.id">
    <%} } 
    else { %>
    <br><br><br>
    <div class="Title" style="text-align:center"><span>你已经完成了今天的学习计划！</span><br/>
    <span>共完成学习计划<%=schedule.getWorkdays() %>天</span></div><br><br>
    <% } ;%>
    </div></div>
    </form>
  </body>
</html>
