<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page language="java" import="java.util.*" %>
<%@ page language="java" import="java.sql.*" %>
<%@ page language="java" import="java.util.regex.*" %>
<%
	String msg =(String)request.getAttribute("msg");
	if(msg==null)
	{
		msg="";
	}
%>

<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>	电器仓库进销存管理系统 V1.1</title>
	<style type="text/css">
        h3.title{
            text-align: center;
			width: 300px;
			height: 30px;
			margin: auto auto;
			margin-top: -20px;
			padding-top: 30px;
        }

		body {
			background-size: 100%, 100%;
			background-attachment: fixed;
			text-align: center;
			background-image: url("../img/login1.jpg");
			background-origin: content;
			/*从content区域开始显示背景*/
			background-position: 50P%;
			/*             图片上下左右居中  */
		}

		#form1{
			width: 500px;
			height: 300px;
			background-color:rgba(125,125,125,0.5);
			margin: auto auto;
			margin-top: 200px;
			border-radius: 8px;
		}

		.title{
			font-family: "幼圆";
		}

		.one1{
			width: 300px;
			height: 30px;
			border-radius: 6px;
			background-color: darkgrey;
			margin: 0 auto;
			margin-top:10px;
		}
		
		.two2{
			width: 300px;
			height: 30px;
			border-radius: 6px;
			background-color: darkgrey;
			margin: 0 auto;
			margin-top:20px;
		}

		input{
                background-color: darkgrey;
                border:none;
                outline:medium;
                width: 250px;
        		height: 20px;
            }
      
        #btnlogin{
        	width: 300px;
        	height: 30px;
        	border-radius: 6px;
        	background-color: darkgrey;
        	margin-top:20px;
        }
        
        #btnlogin:hover
		{ 
		    background-color:#b9b9b9;
		    color:#f9f5f5;
		}

        #msg{
       		margin-top:25px;
       		
        }
    </style>
</head>
<body class="">
    <form name="form1" method="post" action="/myerp/login" id="form1"  >
			<div id="logincontainer">
				<h3 style="font-size: 16px;"	 class="title"><img style="position: relative; top: 5px;" src="../img/xiaoxun1.png" width="21px"; height="21px";></img>&nbsp;电器仓库进销存管理系统v1.1</h3>
				<div class="loginform">
					<p id="msg" style="font-size: 13px;"><%=msg %></p>
					<div class="one1">
						<p> <span class="lablespan"><img style="position: relative; top: 5px;" src="../img/dlpic.png" width="21.5px"; height="21.5px";></img></span><span><input name="username" type="text" id="username" /></span></p>
					</div>
					<div class="two2">
						<p> <span class="lablespan"><img style="position: relative; top: 5px;" src="../img/pspic.png" width="22px"; height="22px";></img></span><span><input name="password" type="password" id="password" /></span> </p>
					</div>

					<p><span><input type="submit" name="btnlogin" value="登 录" id="btnlogin" /></span></p>
				</div>
			</div>
		</form>
   <script src="../js/jquery-1.11.0.js"></script>
    <script>
        $("#btnlogin").click(function (e) {
            var username = $("#username");
            if (!username.val().length > 0)
            {
                $("#msg").text("请输入用户名");
                username.focus();
                e.preventDefault();
                return false;
            }

            var password = $("#password");
            if (!password.val().length > 0) {
                $("#msg").text("请输入密码");
                password.focus();
                e.preventDefault();
                return false;
            }
        });
    </script>
</body>
</html>
