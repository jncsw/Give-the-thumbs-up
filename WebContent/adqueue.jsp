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

<html>
<head>
<title>��ѯ�û���Ϣ</title>
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
<h1 align="center"><strong>�û���Ϣ</strong></h1>
<br><br><hr>
<table width="800"border="1"align="center">
<tr>
  <td>�û���</td>
  <td>��ʵ����</td>
  <td>�Ա�</td>
  <td>����</td>
  <td>�绰</td>
  <td>����</td>
  <td>����¼����</td>
  <td>ע��ʱ��</td>
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
	String tableName = "userinfo";
	//�����ַ��� 
	String url = "jdbc:mysql://localhost:3307/" + dbName + "?user=" + userName + "&password=" + userPasswd;
	Class.forName("com.mysql.jdbc.Driver").newInstance();
	Connection conn = DriverManager.getConnection(url);
	String sql = "select * from userinfo ";
	Statement stmt=conn.createStatement();
	ResultSet rs=stmt.executeQuery(sql);
	
	   while(rs.next()){
	    %>
	    <tr>
	      <td><%=trans(rs.getString("name")) %></td>
	      <td><%=trans(rs.getString("realname")) %></td>
	      <td><%=trans(rs.getString("sex")) %></td>
	      <td><%=trans(rs.getString("birthday")) %></td>
	      <td><%=trans(rs.getString("tel")) %></td>
	      <td><%=trans(rs.getString("mail")) %></td>
	      <td><%=trans(rs.getString("logintime")) %></td>
	      <td><%=trans(rs.getString("regtime")) %></td>
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
