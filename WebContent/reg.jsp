<%@ page contentType="text/html; charset=gb2312"%>
<%@ page language="java"%>
<%@ page import="com.mysql.jdbc.Driver"%>
<%@ page import="java.sql.*"%>


<script language="javascript">
function on_submit()
 {
	  if (form1.username.value.length<5)
	    {
	     alert("�û������5λ�������������û�����");
	     form1.username.focus();
	     return false;
	    }
  if (form1.username.value == "")
    {
     alert("�û�������Ϊ�գ��������û�����");
     form1.username.focus();
     return false;
    }
  var strr=form1.username.value;
  if(escape(strr).indexOf("%u")>=0){ 
  alert("�û������ܰ��������ַ���");
  form1.username.value="";
  form1.username.focus();
  return false;
  }       
    if (form1.pass.value == "")
    {
     alert("�û����벻��Ϊ�գ����������룡");
     form1.pass.focus();
     return false;
    }
    if (form1.pass.value.length<5)
    {
     alert("�������5λ���������������룡");
     form1.pass.value="";
     form1.passcom.value="";
     form1.pass.focus();
     return false;
    }
    var strr1=form1.pass.value;
    if(escape(strr1).indexOf("%u")>=0){ 
    alert("���벻�ܰ��������ַ���");
    form1.pass.value="";
    form1.pass.focus();
    return false;
    }       
    if (form1.passcom.value == "")
    {
     alert("�û�ȷ�����벻��Ϊ�գ����������룡");
     form1.passcom.focus();
     return false;
    }
    
    
    
   
    var str=form1.real.value;
    if(escape(str).indexOf("%u")<0){ 
    alert("��������ʵ������");
    form1.real.value="";
    form1.real.focus();
    return false;
    }       
    
   if (form1.pass.value != form1.passcom.value)
    {
    alert("������ȷ�����벻ͬ");
    form1.pass.value="";
    form1.passcom.value="";
    form1.pass.focus();
     return false;
    }
   
   var data=form1.date.value;
   var patrn=/^[0-9]{4}(-)((0[1-9])|(1[0-2]))(-)(([0-2][1-9])|(3[0-1]))$/; 
   if(!patrn.exec(data)){
    alert("��������ȷ������(��ʽ��YYYY-MM-DD)��");
    form1.date.focus();
    return false;
   }
   var maildata=form1.mail.value;
   var patrnmail=/^[a-z0-9]+([._\\-]*[a-z0-9])*@([a-z0-9]+[-a-z0-9]*[a-z0-9]+.){1,63}[a-z0-9]+$/;
   if(!patrnmail.exec(maildata)){
    alert("��������ȷ�����䣡");    
    form1.mail.focus();
    return false;
   }
  
   var re = /^[0-9]+.?[0-9]*$/; 
   var nn=form1.tel.value;
   if(!re.exec(nn)){
	    alert("��������ȷ�ĵ绰���룡");    
	    form1.tel.focus();
	    return false;
	   }
 }
</script>
<script language="javascript">
function check(action)
{
 form1.action=action; 
    form1.submit(); 
 if (form1.username.value == "")
    {
     alert("�û�������Ϊ�գ��������û�����");
     window.location.href="reg.jsp";
    }
}
</script>

<html>
<head>
<style>

//html{width:100%;height:100%;}
body{background:#fff;font-size:18px;font-family:"Arial", "Tahoma", "΢���ź�", "�ź�";line-height:18px;padding:0px;margin:0px;text-align:center;}
div{padding:18px}
input, button{font-family:"Arial", "Tahoma", "΢���ź�", "�ź�";border:0;vertical-align:middle;margin:8px;line-height:20px;font-size:18px}

</style>

<style type="text/css">	
			input {
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
				font-family: Arial, Verdana, sans-serif;
				color: #111111;}
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


<title>
��ӭע��ѧ�ߣ�
</title>
</head>
<body>
<form action = "register.jsp"  name="form1" method = "post"onSubmit="return on_submit()">
<br /><br />
<center>
<h1><strong>��ӭע��!</strong></h1><hr>
<br><br>
<table border="1">
  <tbody>
    <tr>
      <td width="186"><label for="textfield">�û���:</label></td>
      <td width="236"><input type="text" name="username" id="textfield"maxlength="20"placeholder="5-20���ַ�"required="required"></td>
    </tr>
    <tr>
      <td><label for="password2">�� ��:</label></td>
      <td><input type="password" name="pass" id="password"placeholder="5-20���ַ�"maxlength="20"required="required"></td>
    </tr>
     <tr>
      <td><label for="password2">ȷ���� ��:</label></td>
      <td><input type="password" name="passcom" id="passcom"maxlength="20"placeholder="��ȷ������"required="required"></td>
    </tr>
    <tr>
      <td><label for="textfield3">��ʵ����:</label></td>
      <td><input type="text" name="real" id="textfield2"placeholder="�����뺺��"maxlength="20"required="required"></td>
    </tr>
    <tr>
      <td>�Ա�</td>
      <td><p>
        <label>
          <input type="radio" name="Radio" value="��" id="Radio_0" checked="checked">
          ��</label>
        <label>
          <input type="radio" name="Radio" value="Ů" id="Radio_1">
          Ů</label>
        <br>
      </p></td>
    </tr>
    <tr>
      <td>����</td>
      <td><input type="date" name="date" id="date"placeholder="��������-��-�� "required="required"maxlength="10"></td>
    </tr>
    <tr>
      <td>�绰</td>
      <td><input type="tel" name="tel" id="tel"placeholder="�������ֻ�����"maxlength="20"required="required"></td>
    </tr>
     <tr>
      <td>����</td>
      <td><input type="tel" name="mail" id="mail"placeholder="����������"maxlength="30"required="required"></td>
    </tr>
  </tbody>
</table>
<input type="submit" value="�� ��" name="submit" id="submit" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type = "reset" value = "�� ��"id="reset" />
</center>
</form>






</body>
</html>
