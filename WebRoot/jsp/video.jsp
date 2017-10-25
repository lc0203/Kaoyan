<%@ page language="java" import="java.util.*,cn.enity.Resource,cn.enity.Page" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  
    <base href="<%=basePath%>">
    
    <title>My JSP 'doc.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="stylesheet" type="text/css" href="./css/Video_study.css">
	
	<script type="text/javascript" src="./js/pagevideo.js"></script>
<!-- 	<script type="text/javascript" src="./js/page.js"></script> -->
<style type="text/css">
	div{
		float:left
	}
</style>
</head>
 
  <body>
  	<%
 		List<Resource> list = (List<Resource>)session.getAttribute("resourcelist");
 		Page pages=(Page)session.getAttribute("page");
 		
 		//String name =list.get(0).getSname();		
 		%>
 	
    <div class="puBuLiu">
     <%for(int i=0;i<list.size();i++){%>
       		
       <div style="width:32%; height:55%;margin:3;background-color: #92E6C5" >
      
       		
       	<div style="padding: 2">
       		<img width=100%  height=200 src="./picture/<%=list.get(i).getPath()%>" />
     	</div>
     <table>
       			<tr>   			
       					<td colspan="2"><%=list.get(i).getSname() %></td>     				
       			</tr>   
       			<tr>
       					<td width=75%><font color="red">热度：<%=list.get(i).getHotNum() %></font></td>
       					<td><input type="button" value="加入学习"  onclick="joinstudy(<%=list.get(i).getSid()%>)" style="border: none">	</td>
       			</tr>  		
       		</table>
       		
       </div>
       
    	<%}%>
	</div>
 		<%
 		int currentpage=pages.getCurpage();
 		int curpagecount=pages.getTotalPages();
 		 %>
 		
 	<hr>
 	
 		 <center>
 		
 	<!-- 	<div id="page_num"  >
	<div class="page_number"> -->
				
				<%if(currentpage>1){ %>
	<%-- 	<a href="page_action?curpage=1">首页</a>
		<a href="page_action?curpage=<%=currentpage-1%>">上一页</a> --%>
		<input type="button"  value="首页" onclick="changepage(1)">
		<input type="button"  value="上一页" onclick="changepage(<%=currentpage-1%>)">
				<%} %>
		<%
		int i=currentpage-2;
		int j=i<0?5:(i==0?4:3);
		int lastlength = curpagecount-currentpage;
		i=lastlength>=2?5-j:(lastlength==0?4:3);
		for(int m=i;m>0;m--){
					if(currentpage-m>0){
				%>
						<input type="button"  value=<%=currentpage-m%> onclick="changepage(<%=currentpage-m%>)">
				<%
			}
			}
				for(int m=0;m<j;m++){
							if(currentpage+m<=curpagecount){
					%>
						<input type="button" value=<%=currentpage+m%>  onclick="changepage(<%=currentpage+m%>)"></a>
				<%}
		 %>
		<%}
		%>
		<%if(currentpage<curpagecount){ %>
		<%-- <a href="page_action?curpage=<%=currentpage+1%>">下一页</a>		 --%>
		<input type="button" value="下一页"  onclick="changepage(<%=currentpage+1%>)" >
		<%-- <a href="page_action?curpage=<%=curpagecount%>">尾页</a> --%>
		<input type="button" value="尾页"  onclick="changepage(<%=curpagecount%>)" >
		<%} %>
		当前页:<%=currentpage %> 总页:<%=curpagecount %>
<!-- 	</div>
	</div> -->

	</center>
	
  </body>
	

</html>
