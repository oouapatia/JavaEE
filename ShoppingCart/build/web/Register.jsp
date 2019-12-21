<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<script type="text/javascript">
	function a(){	
            var username = loginCheck.username.value;
            var pwd = loginCheck.pwd.value;
            var confirm_pwd = loginCheck.confirm_pwd.value;
            
            if(username == ""){
                alert("用户名不能为空！");
                return false;//false:阻止提交表单
            }
            else if(pwd == ""){
                    alert("密码不能为空！");
                    return false;//false:阻止提交表单
                }
                else if(confirm_pwd == ""){
                        alert("请确认密码！");
                        return false;//false:阻止提交表单
                    }
                    else if(pwd != confirm_pwd){
                            alert("密码不一致！");
                            return false;
                        }
                        else
                            return true;
	}
</script>

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <link href="css/Register.css" rel="stylesheet" type="text/css" />
    <title>用户注册</title>
</head>

<body>
    <div class="login-box">
        <h1>用户注册</h1>
        <form name="loginCheck" action="RegisterCheck.jsp" method="post"  onsubmit="return a()">
            <div class="textbox">
                <input type="text" placeholder="用户名" name="username" id="user"/>
            </div>
            
            <div class="textbox">
                <input type="password" placeholder="密码" name="pwd" id="password"/>
            </div>
            
            <div class="textbox">
                <input type="password" placeholder="确认密码" name="confirm_pwd" id="password"/>
            </div>
            <input name="button"  type="submit"  class="btn" value="注册" >
        </form> 
    </div>
</body>
</html>