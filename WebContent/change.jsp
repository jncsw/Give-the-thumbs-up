<%@ page contentType="text/html; charset=gb2312"%>
<%@ page language="java"%>
<%@ page import="com.mysql.jdbc.Driver"%>
<%@ page import="java.sql.*"%>
<script language ="javascript">
function on_submit()
 {	
	
	var ss = document.getElementById("upda").selectedIndex;
		if (ss=="5") {if (form2.text.value == "")
    {
     alert("�û����벻��Ϊ�գ����������룡");
     form2.text.focus();
     return false; 
    }}
	
	if (ss=="1") {if (form2.text.value != "��") {if (form2.text.value != "Ů")
    {
     alert("�������Ա� ��/Ů!");
     form2.text.value="";
     form2.text.focus();
     return false;  
    }}}
	if (ss=="5") {if (form2.text.value.length<5)
    {
     alert("�������5λ���������������룡");
     form2.text.value="";
     form2.text.focus();
     return false;
    }
	}
    var strr1=form2.text.value;
    if(ss=="5") { if(escape(strr1).indexOf("%u")>=0){ 
    alert("���벻�ܰ��������ַ���");
    form2.text.value="";
    form2.text.focus();
    return false;
    }       }
    var str=form2.text.value;
    if (ss=="0")  { if(escape(str).indexOf("%u")<0){ 
    alert("��������ʵ������");
    form2.text.value="";
    form2.text.focus();
    return false;
    }       }
    
   var data=form2.text.value;
   var patrn=/^[0-9]{4}(-)((0[1-9])|(1[0-2]))(-)(([0-2][1-9])|(3[0-1]))$/; 
   if (ss=="2") { if(!patrn.exec(data)){
    alert("��������ȷ������(��ʽ��YYYY-MM-DD)��");
    form2.text.focus();
    return false;
   }}
   var maildata=form2.text.value;
   var patrnmail=/^[a-z0-9]+([._\\-]*[a-z0-9])*@([a-z0-9]+[-a-z0-9]*[a-z0-9]+.){1,63}[a-z0-9]+$/;
   if (ss=="4")  {if(!patrnmail.exec(maildata)){
    alert("��������ȷ�����䣡");    
    form2.text.focus();
    return false;
   }
   }
   var re = /^[0-9]+.?[0-9]*$/; 
   var nn=form2.text.value;
   if (ss=="3"){ if(!re.exec(nn)){
	    alert("��������ȷ�ĵ绰���룡");    
	    form2.text.focus();
	    return false;
	   }}
	 }
</script>
<html>
<head>
<title>�޸ĸ�����Ϣ</title>
<style>
//html{width:100%;height:100%;}
body{background:#fff;font-size:18px;font-family:"Arial", "Tahoma", "΢���ź�", "�ź�";line-height:18px;padding:0px;margin:0px;text-align:center;}
div{padding:18px}
input, button{font-family:"Arial", "Tahoma", ""΢���ź�", "�ź�";border:0;vertical-align:middle;margin:8px;line-height:18px;font-size:18px}
</style>
<style type="text/css">	
            body{
  background-color:#83c887;
  }
			input,select {
				font-size: 120%;
				color: #5a5854;
				background-color: #f2f2f2;
				border: 1px solid #bdbdbd;
				border-radius: 5px;
				padding: 5px 30px 5px 30px;
				background-repeat: no-repeat;
				background-position: 8px 9px;
				//display: block;
				margin-bottom: 10px;}
			input:focus, input:hover {
				background-color: #ffffff;
				border: 1px solid #b1e1e4;}
		
			input#submit {
				color: #444444;
				text-shadow: 0px 1px 1px #ffffff;
				border-bottom: 1px solid #b2b2b2;
				background-color: #b9e4e3;
				background: -webkit-gradient(linear, left top, left bottom, from(#beeae9), to(#a8cfce));
				background: -moz-linear-gradient(top, #beeae9, #a8cfce);
				background: -o-linear-gradient(top, #beeae9, #a8cfce);
				background: -ms-linear-gradient(top, #beeae9, #a8cfce);
				display: inline;
				}
			input#submit:hover {
				color: #111111;
				border: 1px solid #a4a4a4;
				border-top: 1px solid #b2b2b2;
				background-color: #a0dbc4;
				background: -webkit-gradient(linear, left top, left bottom, from(#a8cfce), to(#beeae9));
				background: -moz-linear-gradient(top, #a8cfce, #beeae9);
				background: -o-linear-gradient(top, #a8cfce, #beeae9);
				background: -ms-linear-gradient(top, #a8cfce, #beeae9);
				display: inline;
				}
				input#reset {
				color: #444444;
				text-shadow: 0px 1px 1px #ffffff;
				border-bottom: 1px solid #b2b2b2;
				background-color: #b9e4e3;
				background: -webkit-gradient(linear, left top, left bottom, from(#beeae9), to(#a8cfce));
				background: -moz-linear-gradient(top, #beeae9, #a8cfce);
				background: -o-linear-gradient(top, #beeae9, #a8cfce);
				background: -ms-linear-gradient(top, #beeae9, #a8cfce);
				display: inline;
				}
			input#reset:hover {
				color: #111111;
				border: 1px solid #a4a4a4;
				border-top: 1px solid #b2b2b2;
				background-color: #a0dbc4;
				background: -webkit-gradient(linear, left top, left bottom, from(#a8cfce), to(#beeae9));
				background: -moz-linear-gradient(top, #a8cfce, #beeae9);
				background: -o-linear-gradient(top, #a8cfce, #beeae9);
				background: -ms-linear-gradient(top, #a8cfce, #beeae9);
				display: inline;
				}											
			body {
				background-image: url("images/stdol.png");
				background-repeat: no-repeat;
				background-attachment: fixed;
				color: #665544;
				padding: 0px;}
</style>
</head>
<body>
<br>
<h1 align="center"><strong>�޸ĸ�����Ϣ</strong></h1>
<hr /><br><br>
<form name="form2" id="form2" method = "post" onSubmit="return on_submit()" action="update.jsp" target="_blank">
<br>			<p align="center">��Ҫ����
			<select name="upda"id="upda">
				<option value="realname">��ʵ����</option>
				<option value="sex">�Ա�</option>
				<option value="birthday">����</option>
				<option value="tel">�绰</option>
				<option value="mail">����</option>
				<option value="password">����</option>
			</select>
			�޸�Ϊ��
			<input type="text" name="text" id="text"maxlength="20"placeholder="��ȷ���޸�"required="required">
			<input type="submit"value="�޸�" name="submit" id="submit" />
			  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			  <input type = "reset" value = "����"id="reset" />
	        <input type="hidden" name="ne" value="<%=request.getParameter("names")%>" >
			</p>
			
		</form>
</body>
</html>