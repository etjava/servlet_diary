<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<html lang="zh">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<!-- 响应式 -->
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>个人日记本登录</title>
<link href="${pageContext.request.contextPath}/bootstrap/css/bootstrap.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/bootstrap/css/bootstrap-responsive.css" rel="stylesheet">
<script src="${pageContext.request.contextPath}/bootstrap/js/jQuery.js"></script>
<script src="${pageContext.request.contextPath}/bootstrap/js/bootstrap.js"></script>
<style type="text/css">
	  body {
        padding-top: 200px;
        padding-bottom: 40px;
        background-image: url('images/bg.jpg');
      }
      
      .form-signin-heading{
      	text-align: center;
      }

      .form-signin {
        max-width: 300px;
        padding: 19px 29px 0px;
        margin: 0 auto 20px;
        background-color: #fff;
        border: 1px solid #e5e5e5;
        -webkit-border-radius: 5px;
           -moz-border-radius: 5px;
                border-radius: 5px;
        -webkit-box-shadow: 0 1px 2px rgba(0,0,0,.05);
           -moz-box-shadow: 0 1px 2px rgba(0,0,0,.05);
                box-shadow: 0 1px 2px rgba(0,0,0,.05);
      }
      .form-signin .form-signin-heading,
      .form-signin .checkbox {
        margin-bottom: 10px;
      }
      .form-signin input[type="text"],
      .form-signin input[type="password"] {
        font-size: 16px;
        height: auto;
        margin-bottom: 15px;
        padding: 7px 9px;
      }

</style>

<script type="text/javascript">
	function checkFrm(){
		var userName = $("#userName").val();
		var password = $("#password").val();
		if(userName=='' || password==''){
			$("#error").html('用户名或密码不能为空');
			return false;
		}else{
			return true;
		}
	}
</script>

</head>
<body>
<div class="container">
      <form name="myForm" class="form-signin" action="login" method="post" onsubmit="return checkFrm()">
        <h2 class="form-signin-heading">个人日记本</h2>
        <input id="userName" name="userName" value="${user.userName  }"  type="text" class="input-block-level" placeholder="用户名...">
        <input id="password" name="password" value="${user.password }"  type="password" class="input-block-level" placeholder="用户名密码..." >
        <label class="checkbox">
          <input id="remember" name="remember" type="checkbox" value="remember-me">记住我 &nbsp;&nbsp;&nbsp;&nbsp; <font id="error" color="red">${error }</font>  
        </label>
        <button class="btn btn-large btn-primary" type="submit">登录</button>
        &nbsp;&nbsp;&nbsp;&nbsp;
        <button class="btn btn-large btn-primary" type="button" >重置</button>
		<p align="center" style="padding-top: 15px;">版权信息   </p>
      </form>
</div>
</body>
</html>