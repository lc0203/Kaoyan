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
<script type="text/javascript" src="./js/pagedoc.js"></script>
  </head>
  
  <body>
 		
 		<%
 		List<Resource> list = (List<Resource>)session.getAttribute("resourcelist");
 		Page pages=(Page)session.getAttribute("page");
 		
 		//String name =list.get(0).getSname();		
 		%>
 		
 		<div style="height:100px;line-height:100px;text-align: center;">
 		<center>
		<ul >
			<table border=1>
				<tr>
					<td width="200" colspan=2 height="60">文档名</td>
					<td width="200" height="60">上传时间</td>
					<td width="200" height="60">下载量</td>
						<td width="200" height="60">下载</td>
				</tr>
			</table>
			<%
				for (int i = 0; i < list.size(); i++) {
			%>
			<%-- <li>
			  <div>
			  <img src=<%=plist.get(i).getPicpath() %> width="200" height="150"  />
			  </div><div style="width:auto;">
			  <table border=1 name="video_info" class="video_info">
			<!--   <tr>
			  <td width="145" colspan=2>商品名</td>
			  <td width="145">价格</td>
			  </tr> -->
			  <tr><td colspan="2" rowspan="2">
			  <p>&nbsp;&nbsp;<%=list.get(i).getSname()%></p>
		            <td height="80px">购买量:<%=list.get(i).getHotNum()%></td>
			        </tr>
			      <tr>
		            <td>	<input type="button" value="加入购物车"  ></td>
			        </tr>
		        </table>
			  </div>
			</li> --%>
		
			<table border=1>
				<tr>
					<td width="200" colspan=2 height="50"><%=list.get(i).getSname()%></td>
					<td width="200"  height="50"><%=list.get(i).getDate()%></td>
					<td width="200"  height="50"><%=list.get(i).getHotNum()%></td>
					<td width="200"  height="50">
					<%-- <form action="download_action" >
		 			<input type="submit" value="下载" >
		 			<input type="hidden" value=<%=list.get(i).getSid()%> name="did">
		 			</form> --%>
		 			<a href="download_action?did=<%=list.get(i).getSid()%>">下载</a>
		 			</td>
					</tr>
			</table>


			<%
				}
			%>

		</ul>
</center>


		<%
 		int currentpage=pages.getCurpage();
 		int curpagecount=pages.getTotalPages();
 		 %>
 		 <hr>
 		<div id="page_num" >
	<div class="page_number">
				
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
	</div>
	</div>
	
	</div>
	
  </body>
</html>
