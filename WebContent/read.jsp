<%@ page language="java" import="java.util.*,java.io.*"
pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme() + "://"
    + request.getServerName() + ":" + request.getServerPort()
    + path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
   <base href="<%=basePath%>">
</head>
<%
   out.clear();
   out = pageContext.pushBody();
   response.setContentType("application/pdf");

   try {
    String strPdfPath = new String("E://D盘//elderNovel2//WebContent//book//明朝那些儿事.pdf");
    //判断该路径下的文件是否存在
    File file = new File(strPdfPath);
    if (file.exists()) {
     DataOutputStream temps = new DataOutputStream(response
       .getOutputStream());
     DataInputStream in = new DataInputStream(
       new FileInputStream(strPdfPath));

     byte[] b = new byte[2048];
     while ((in.read(b)) != -1) {
      temps.write(b);
      temps.flush();
     }

     in.close();
     temps.close();
    } else {
     out.print(strPdfPath + " 文件不存在!");
    }

   } catch (Exception e) {
    out.println(e.getMessage());
   }
%>
<body>
<!-- 长者小说网logo -->
<img alt="logo loading false." src="image/logo.png">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<br>
</body>
</html>