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
<body>
<%
	//驱动程序名 
	String driverName = "com.mysql.jdbc.Driver";
	//数据库用户名 
	String userName = "root";
	//密码 
	String userPasswd = "sduonline";
	//数据库名 
	String dbName = "stu";
	//表名 
	String tableName = "userinfo";
	//联结字符串 
	String url = "jdbc:mysql://localhost:3307/"+dbName+"?user="+userName+"&password="+userPasswd;
	Class.forName("com.mysql.jdbc.Driver").newInstance();
	Connection connection = DriverManager.getConnection(url);
	String nn=request.getParameter("id");
	String cur=request.getParameter("cur");
	//out.println(nn);
	String sql = "select * from praise where id='"+nn+"'";
	Statement stmt=connection.createStatement();
	ResultSet rs=stmt.executeQuery(sql);
	rs.next();
	int i=rs.getInt("beizan");
	//String ss=request.getParameter("beizan");
	//out.print(ss);///////
	//int i = Integer.parseInt(ss);
	 // int i=0;//////////
	i++;
	
	String s = String.valueOf(i);	
	String sc=rs.getString("source");
	 
	////////////////////////////
	  int ii=0;char ch=48;  boolean ck=false;
	  aa:
  while (ii<sc.length())
  {
	 ch=sc.charAt(ii);
	 if(Character.isDigit(ch)){
		 String st=""+ch;	
		 ii++;
		 ch=sc.charAt(ii);
		 while(Character.isDigit(ch)){
			 st=st+ch;	
			 ii++;
			 ch=sc.charAt(ii);
		 }
		 
		 if(st.equals(cur)){
			 ck=true;
			 break aa;
		 } 
	 }
	 ii++;
  } 
	/////////////////////////////
	//String sc=request.getParameter("source");
	//out.print(sc);
	//nn="1";sc="1;";////////
	if (!ck)
	{
	String sql1="update praise set beizan='"+s+"' where id='"+nn+"'";
	//out.print(sql1);
	sc=sc+cur+";";
	//out.print("<p>"+sc+"</p>");//////
	String sql2="update praise set source='"+sc+"' where id='"+nn+"'";
	stmt.executeUpdate(sql1);
	stmt.executeUpdate(sql2);
	out.print(s); 
	rs.close();
	stmt.close();
    connection.close();
	}else{
		out.print("您已经点赞！");	
		rs.close();
		stmt.close();
	    connection.close();
	}
%>
</body>
</html>

