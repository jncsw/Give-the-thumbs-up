<%@ page contentType="text/html; charset=gb2312"%>
<%@ page language="java"%>
<%@ page import="com.mysql.jdbc.Driver"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<%@ page import="java.util.*"%>
<%! String trans(String str)
{
	String result=null;
	byte temp[];
	try
	{
		temp=str.getBytes("gb2312");
		result=new String(temp);		
	}
	catch(UnsupportedEncodingException e)
	{
		System.out.println(e.toString());
		
	}return result;
}

%>
<script type="text/javascript">
function loadXMLDoc(idd,cur)
{	
	
	//alert("id="+idd);
	//alert("cur="+cur);
var xmlhttp;
if (window.XMLHttpRequest)
  {// code for IE7+, Firefox, Chrome, Opera, Safari
  xmlhttp=new XMLHttpRequest();
  }
else
  {// code for IE6, IE5
  xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
  }
xmlhttp.onreadystatechange=function()
  {
  if (xmlhttp.readyState==4 && xmlhttp.status==200)
    {
	 
    document.getElementById(idd).innerHTML=xmlhttp.responseText;
    }
  }
//alert("cg.jsp?id="+idd+"&cur="+cur);
xmlhttp.open("GET","cg.jsp?id="+idd+"&cur="+cur,true);
xmlhttp.send();
}
</script> 
<script type="text/javascript">
function QXZ(idd,cur)
{	
	
	//alert("id="+idd);
	//alert("cur="+cur);
var xmlhttp;
if (window.XMLHttpRequest)
  {// code for IE7+, Firefox, Chrome, Opera, Safari
  xmlhttp=new XMLHttpRequest();
  }
else
  {// code for IE6, IE5
  xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
  }
xmlhttp.onreadystatechange=function()
  {
  if (xmlhttp.readyState==4 && xmlhttp.status==200)
    {
	 
    document.getElementById(idd).innerHTML=xmlhttp.responseText;
    }
  }
//alert("cg.jsp?id="+idd+"&cur="+cur);
xmlhttp.open("GET","qx.jsp?id="+idd+"&cur="+cur,true);
xmlhttp.send();
}
</script> 

<html>
<head>
<title>����</title>
<style type="text/css">
body {
				font-family: Arial, Verdana, sans-serif;
				color: #111111;}
				body{
  background-color:#83c887;
  }
			table {
				width: 600px;}
			th, td {
				padding: 7px 10px 10px 10px;}
			th {
				text-transform: uppercase;
				letter-spacing: 0.1em;
				font-size: 90%;
				border-bottom: 2px solid #111111;
				border-top: 1px solid #999;
				text-align: left;}
			tr.even {
				background-color: #efefef;}
			tr:hover {
				background-color: #c3e6e5;}
			</style>
</head>
<body>
<h1 align="center"><strong>����ҳ��</strong></h1>
<br><br><hr>
<table width="800"border="1"align="center">
<tr>
  <td>�û���</td>
  <td>���޴���</td>  
  <td>��Ҫ���ޣ�</td>
  <td>ȡ�����ޣ�</td>
  </tr>
<%
	//���������� 
	String driverName = "com.mysql.jdbc.Driver";
	//���ݿ��û��� 
	String userName = "root";
	//���� 
	String userPasswd = "sduonline";
	//���ݿ��� 
	String dbName = "stu";
	//���� 
	String tableName = "praise";
	//�����ַ��� 
	String url = "jdbc:mysql://localhost:3307/" + dbName + "?user=" + userName + "&password=" + userPasswd;
	Class.forName("com.mysql.jdbc.Driver").newInstance();
	Connection conn = DriverManager.getConnection(url);
	String sql = "select * from praise ";
	Statement stmt=conn.createStatement();
	ResultSet rs=stmt.executeQuery(sql);
	
	   while(rs.next()){
	    %>
	    <tr>
	      <td><%=trans(rs.getString("username")) %></td>
	      <td><div id=<%=rs.getInt("id")%> ><%=rs.getInt("beizan") %></div></td>	      	  
	      <td><button type="button" id=<%=rs.getInt("id")%> onclick="loadXMLDoc(id,<%=request.getParameter("cur")%>)">��һ��</button>
</td>  
          <td><button type="button"  id=<%=rs.getInt("id")%> onclick="QXZ(id,<%=request.getParameter("cur")%>)">ȡ����</button>
</td>   
          
	      </tr>
	      <%
	   }
	rs.close();
	stmt.close();
	conn.close();
%>
</table>
</body>
</html>
