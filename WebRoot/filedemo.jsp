<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>  
    <%@ taglib prefix="s" uri="/struts-tags" %>  
      
    <%  
    String path = request.getContextPath();  
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";  
    %>  
      
    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">  
    <html>  
      <head>  
        <base href="<%=basePath%>">  
          
        <title>My JSP 'filedemo2.jsp' starting page</title>  
          
        <meta http-equiv="pragma" content="no-cache">  
        <meta http-equiv="cache-control" content="no-cache">  
        <meta http-equiv="expires" content="0">      
        <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">  
        <meta http-equiv="description" content="This is my page">  
        <!-- 
        <link rel="stylesheet" type="text/css" href="styles.css"> 
        -->  
      
      </head>  
        
      <body>  
      <center style="margin-top:150px;">
               上传成功：<br/>  
     	usename:<s:property value="usename"/><br/>  
        <!-- 遍历值 -->  
        <s:iterator value="file1FileName" id="f"> <!-- id是一个对象，目前是一个字符串集合  可任意命名 -->  
                 文件:<s:property value="#f"/> <br/>    
        <!-- 这里也可以调用方法  <s:property value="#f.toUpperCase()"/> -->  
         </s:iterator> 
        <a href="19.1.html" >返回</a>
          </center>
      </body>  
    </html>  