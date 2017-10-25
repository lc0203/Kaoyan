<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
 <%@ page import="cn.enity.*"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>Video Study</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

	<link rel="stylesheet" type="text/css" href="css/Video_study.css">


  </head>
  
  <body>
	
    <% Student st=(Student)session.getAttribute("user");
%>
    <div class="puBuLiu">
     <%Iterator<StudyPlan> it=st.getStudyPlan().iterator();
     	int i=0;
		while(it.hasNext()){ StudyPlan video=(StudyPlan)it.next();
			Resource rc=video.getResource();
		if(i%4==0){%>
        <div class="puBu">
        <%} %>
           <a href="videoPlay.jsp?videoUrl=<%=rc.getUrl()%>" target="self">
            <div class="puBuLiu2">
				<img src="<%=rc.getPath()%>">
				<h3><%=rc.getSname() %></a></h3>
            </div>
            </a>
					<% i++; }%>

    	<%if(i%4==1){%></div>
    	<%} %>
	</div>
  </body>
</html>
