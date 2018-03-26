<%@ page language="java" contentType="text/html; charset=gb2312"%>
<%@ page language="java" %>
<script language="javascript" type="text/javascript">
var request = new XMLHttpRequest();
</script>


<style type="text/css">
  body{
  background-color:#83c887;
  }
  
			ul {
				list-style-image: url("images/star1.png");}
			li {
				margin: 10px 0px 0px 0px;}
				body {
				background-image: url("images/head.png");
				background-repeat: no-repeat;
				background-position: center top;
				color: #665544;
				padding: 80px;}
		</style>	

<html>
<head>
<title>登录成功</title>
</head>
<body>
<% 
  
  String na=request.getParameter("name");
  if (na==null){
	  %>
		<script language="javascript">
		top.location='index.html'; 
		</script>
	<%
	  
  }else{
	  
  
%>
<h1 align="center"><strong>登录成功</strong></h1>

<br>
<br>
<p>恭喜，登陆成功，欢迎你，<%=request.getParameter("name")%>！</p> 
<p>上次登录时间：<%=request.getParameter("logt")%></p>
<p>你可以：</p>

  
<ul>

			<li ><a href="queue.jsp?names=<%=request.getParameter("name")%>" target="_blank">查询个人资料</a></li>
			
			<%
			if(na.equals("admin"))
			{
			   
				out.print("<li><a href='adqueue.jsp'target='_blank'>查询用户信息</a></li>");
			
			}
			
			%>
			<li><a href="change.jsp?names=<%=request.getParameter("name")%>" target="_blank">修改个人信息</a></li>
			<li><a href="praise.jsp?cur=<%=request.getParameter("cur")%>"target="_blank">点赞</a></li>				
			<li><a href="index.html">退出登录</a></li>
		</ul>


<br><br><br><br><hr>
<h4>友情链接：</h4>

<a href="https://www.online.sdu.edu.cn/" target="_blank" title=学生在线>
<span lang=EN-US style='color:black;text-decoration:none;text-underline:none'>
<span lang=EN-US>学生在线</span></span></a> 

<a href="http://www.univs.cn/" target="_blank" title=中国大学生在线>
<span lang=EN-US style='color:black;text-decoration:none;text-underline:none'>
<span lang=EN-US>中国大学生在线</span></span></a> 

<a href="http://www.sdu.edu.cn/" target="_blank" title=山东大学>
<span lang=EN-US style='color:black;text-decoration:none;text-underline:none'>
<span lang=EN-US>山东大学 </span></span></a>

<a href="http://www.view.sdu.edu.cn/" target="_blank" title=山大视点>
<span lang=EN-US style='color:black;text-decoration:none;text-underline:none'>
<span lang=EN-US>山大视点 </span></span></a>

<a href="http://www.bkjx1.sdu.edu.cn/default.site" target="_blank" title=本科生院>
<span lang=EN-US style='color:black;text-decoration:none;text-underline:none'>
<span lang=EN-US>本科生院</span></span></a> 

<a href="http://www.youth.sdu.edu.cn/" target="_blank" title=青春山大>
<span lang=EN-US style='color:black;text-decoration:none;text-underline:none'>
<span lang=EN-US>青春山大</span></span></a>
<br> <br>
<%} %>
</body>

</html>