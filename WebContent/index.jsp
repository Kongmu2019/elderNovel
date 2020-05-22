<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>长者小说网</title>

<!-- 使用相对定位书籍图片链接 -->
<style type="text/css">
.bookblocks{position:relative;left=30px;}
</style>


</head>
<body>
<!-- 未登录的主页 -->
<p>

<!-- 长者小说网logo -->
<img alt="logo loading false." src="image/logo.png">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

<!-- 登录、注册按钮 -->
<a href="login.html"><img border="0" src="image/register.png"></a>
&nbsp;

<!-- 书架按钮 -->
<a href="bookshelf.jsp"><img border="0" src="image/bookshelf.png"></a>

<!-- 轮播图实现 -->
<%@include file="lunbotu.jsp" %>
</p>

<!-- 书籍列表 -->
<img alt="?加载失败?" src="image/hotbook.png">
<br/><hr/>

<div>
<a href="details.jsp"><img border="0" src="image/book0.jpg" height="400" width="250"></a>
<a href="detailsby.jsp"><img border="0" src="image/bookby.png"  height="400" width="250"></a>
<a href="details-han.jsp"><img border="0" src="image/bookjidu.jpg" height="400" width="250"></a>
<a href="details-tang.jsp"><img border="0" src="image/booktang.png" height="400" width="250"></a>
<a href="details-mar.jsp"><img border="0" src="image/bookmar.png" height="400" width="250"></a>
<!-- 酌情可不要allbook.jsp界面 -->
<a href="allbook.jsp待实现。。"><img border="0" src="image/booketc.png" height="400" width="250"></a>
</div>








</body>
</html>