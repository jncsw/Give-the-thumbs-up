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
<title>��¼�ɹ�</title>
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
<h1 align="center"><strong>��¼�ɹ�</strong></h1>

<br>
<br>
<p>��ϲ����½�ɹ�����ӭ�㣬<%=request.getParameter("name")%>��</p> 
<p>�ϴε�¼ʱ�䣺<%=request.getParameter("logt")%></p>
<p>����ԣ�</p>

  
<ul>

			<li ><a href="queue.jsp?names=<%=request.getParameter("name")%>" target="_blank">��ѯ��������</a></li>
			
			<%
			if(na.equals("admin"))
			{
			   
				out.print("<li><a href='adqueue.jsp'target='_blank'>��ѯ�û���Ϣ</a></li>");
			
			}
			
			%>
			<li><a href="change.jsp?names=<%=request.getParameter("name")%>" target="_blank">�޸ĸ�����Ϣ</a></li>
			<li><a href="praise.jsp?cur=<%=request.getParameter("cur")%>"target="_blank">����</a></li>				
			<li><a href="index.html">�˳���¼</a></li>
		</ul>


<br><br><br><br><hr>
<h4>�������ӣ�</h4>

<a href="https://www.online.sdu.edu.cn/" target="_blank" title=ѧ������>
<span lang=EN-US style='color:black;text-decoration:none;text-underline:none'>
<span lang=EN-US>ѧ������</span></span></a> 

<a href="http://www.univs.cn/" target="_blank" title=�й���ѧ������>
<span lang=EN-US style='color:black;text-decoration:none;text-underline:none'>
<span lang=EN-US>�й���ѧ������</span></span></a> 

<a href="http://www.sdu.edu.cn/" target="_blank" title=ɽ����ѧ>
<span lang=EN-US style='color:black;text-decoration:none;text-underline:none'>
<span lang=EN-US>ɽ����ѧ </span></span></a>

<a href="http://www.view.sdu.edu.cn/" target="_blank" title=ɽ���ӵ�>
<span lang=EN-US style='color:black;text-decoration:none;text-underline:none'>
<span lang=EN-US>ɽ���ӵ� </span></span></a>

<a href="http://www.bkjx1.sdu.edu.cn/default.site" target="_blank" title=������Ժ>
<span lang=EN-US style='color:black;text-decoration:none;text-underline:none'>
<span lang=EN-US>������Ժ</span></span></a> 

<a href="http://www.youth.sdu.edu.cn/" target="_blank" title=�ഺɽ��>
<span lang=EN-US style='color:black;text-decoration:none;text-underline:none'>
<span lang=EN-US>�ഺɽ��</span></span></a>
<br> <br>
<%} %>
</body>

</html>