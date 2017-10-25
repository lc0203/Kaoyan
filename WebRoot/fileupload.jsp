    <%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>  
    <%  
    String path = request.getContextPath();  
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";  
    %>  
      
    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">  
    <html>  
      <head>  
        <base href="<%=basePath%>">  
          
        <title>My JSP 'fileupload.jsp' starting page</title>  
          
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
         <!-- enctype 默认是 application/x-www-form-urlencoded -->  
         <center style="margin-top:150px;">
         <form action="FileUpload2" enctype="multipart/form-data" method="post" >  
         <input type="text" name="usename" style="visibility:hidden;">
              <table>
            
                   <tr>
                   <td>上传文件</td>
                   <td><input type="file" name="file1"></td>
                   </tr>   
                   <tr>               
                  <td><input type="submit" value="提交"/></td>
                  </tr>
           </table>
         </form>  
           </center>
           
           
      </body>  
    </html>  