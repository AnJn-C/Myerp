<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="../css/comm.css"/>
</head>
<body>

<p class="path">当前位置：夜鹰进销存管理系统/系统配置/密码修改</p>
<form action="../passwordedit" method="post">
<table border="0" cellspacing="0" cellpadding="0" class="tb">
	<tr><td class="lable">原密码</td><td><input type="text" name="oldpassword" id="oldpassword"/></td></tr>
	<tr><td class="lable">新密码</td><td><input type="text" name="newpassword" id="newpassword"/></td></tr>
	<tr><td class="lable">确认密码</td><td><input type="text" name="newpassword1" id="newpassword1"/></td></tr>
	<tr><td class="lable">&nbsp;</td><td><input type="submit" name="btnsave" value="保存" id="btnsave"/></td></tr>
</table>
</form>

<script src="../js/jquery-1.11.0.js"></script>
		<script>
			$("#btnsave").click(function(e){
				var oldpassword=$("#oldpassword");
				if(!oldpassword.val().length>0)
				{
					alert("请输入原密码！");
					oldpassword.focus();
					e.preventDefault();
					return false;
				}
				
				var newpassword=$("#newpassword");
				if(!newpassword.val().length>0)
				{
					alert("请输入新密码！");
					newpassword.focus();
					e.preventDefault();
					return false;
				}
				
				var newpassword1=$("#newpassword1");
				if(newpassword.val() !=newpassword1.val() )
				{
					alert("两次输入密码不一致！");
					newpassword1.focus();
					e.preventDefault();
					return false;
				}
			});
		
		    
			
			
		</script>
</body>
</html>