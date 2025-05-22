<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ include file="../jiazai/jcpeizhibaohan.jsp"%>
<%
	Jcpeizhi newJcpeizhi = (Jcpeizhi)session.getAttribute("jcpeizhi");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><%=newJcpeizhi.getJcpeizhiName()%></title>
    <style>
        body {
            margin: 0;
            font-family: Arial, sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            background: url('<%=basePath%>file/shouye1.jpg') no-repeat center center fixed;
            background-size: cover;
        }
        .container {
            width: 1200px;
            background: rgba(255, 255, 255, 0.9);
            padding: 20px;
            border-radius: 8px;
        }
        .header {
            text-align: center;
            padding: 20px 0;
            font-size: 2em;
            font-weight: bold;
        }
        .carousel {
            position: relative;
            width: 100%;
            height: 200px;
            overflow: hidden;
        }
        .carousel img {
            width: 100%;
            height: 100%;
            object-fit: cover;
        }
        .carousel .prev, .carousel .next {
            position: absolute;
            top: 50%;
            transform: translateY(-50%);
            background-color: rgba(0, 0, 0, 0.5);
            color: white;
            padding: 10px;
            cursor: pointer;
        }
        .carousel .prev {
            left: 10px;
        }
        .carousel .next {
            right: 10px;
        }
        .form-container {
            display: flex;
            flex-direction: column;
            align-items: center;
            margin-top: 20px;
        }
        .form-container form {
            display: flex;
            flex-direction: column;
            align-items: center;
            width: 100%;
        }
        .form-container input, .form-container select {
            width: 300px;
            padding: 10px;
            margin: 10px 0;
            font-size: 16px;
            box-sizing: border-box;
        }
        .form-container button {
            width: 320px;
            padding: 10px;
            font-size: 16px;
            background-color: #333;
            color: white;
            border: none;
            cursor: pointer;
            margin: 10px 0;
        }
        .form-container button:hover {
            background-color: #555;
        }
        .toggle-button {
            margin-top: 10px;
            color: #333;
            cursor: pointer;
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="header"><%=newJcpeizhi.getJcpeizhiName()%></div>
        <div class="carousel">
            <img src="<%=basePath%>file/daohang1.jpg" alt="Image 1">
            <img src="<%=basePath%>file/daohang2.jpg" alt="Image 2" style="display:none;">
            <img src="<%=basePath%>file/daohang3.jpg" alt="Image 3" style="display:none;">
            <div class="prev" onclick="changeSlide(-1)">&#10094;</div>
            <div class="next" onclick="changeSlide(1)">&#10095;</div>
        </div>
        <div class="form-container" id="login-form">
            <form action="<%=basePath%>login" name="login" method="post" onSubmit="return checklogin();">
            <h2>登录</h2>
            <input type="text" name="userName" id="userName" placeholder="登录账号" required>
            <input type="password" name="password" id="password" placeholder="登录密码" required>
            <select name="loginType" required>
                <option value="" disabled selected>选择角色</option>
                <option value="user"><%=newJcpeizhi.getUserBieming()%></option>
                <option value="yonghu"><%=newJcpeizhi.getYonghuBieming()%></option>
                <option value="admin">管理员</option>
            </select>
            <button type="submit">登录</button>
            </form>
            <div class="toggle-button" onclick="toggleForm()">点击注册</div>
            <div style="padding:10px;"><font color="red">${error }</font></div>
        </div>
        <div class="form-container" id="register-form" style="display:none;">
            <form action="<%=basePath%>zhuceUser" name="form1" method="post" onsubmit="return check()">
            <input type="text" name="userName" id="userName" placeholder="用户名" required>
            <input type="password" name="userPassword" id="userPassword" placeholder="密码" required>
            <input type="password" name="userPassword1" id="userPassword1" placeholder="重复密码" required>
            <input type="text" name="userXingming" id="userXingming" placeholder="姓名" required>
            <input type="text" name="userAge" id="userAge" placeholder="年龄" required>
            <select id="userSex" name="userSex" required>
                <option value="" disabled selected>性别</option>
                <option value="0">男</option>
                <option value="1">女</option>
            </select>
            <input type="tel" placeholder="电话" name="userPhone" id="userPhone" required>
            <button type="submit" onclick = "return check()">注册</button>
            </form>
            <div class="toggle-button" onclick="toggleForm()">返回登录</div>
        </div>
    </div>
    <script>
        let currentSlide = 0;
        const slides = document.querySelectorAll('.carousel img');

        function changeSlide(direction) {
            slides[currentSlide].style.display = 'none';
            currentSlide = (currentSlide + direction + slides.length) % slides.length;
            slides[currentSlide].style.display = 'block';
        }

        function toggleForm() {
            const loginForm = document.getElementById('login-form');
            const registerForm = document.getElementById('register-form');
            if (loginForm.style.display === 'none') {
                loginForm.style.display = 'flex';
                registerForm.style.display = 'none';
            } else {
                loginForm.style.display = 'none';
                registerForm.style.display = 'flex';
            }
        }

        function check() {
			var userName = document.form1.userName.value;
			var userPassword = document.form1.userPassword.value;
			var userPassword1 = document.form1.userPassword1.value;
			var userXingming = document.form1.userXingming.value;
			var userAge = document.form1.userAge.value;
			var userPhone = document.form1.userPhone.value;
			var reg = /^[a-zA-Z0-9_]{6,}$/;
			if (!reg.test(userName)) {
				document.form1.userName.focus();
				alert("用户名不符合规则，6位以上");
				return false;
			}
			if (!reg.test(userPassword)) {
				document.form1.userPassword.focus();
				alert("密码不符合规则，6位以上");
				return false;
			}

			if (document.form1.userPassword1.value == "") {
				alert("请输入确认密码");
				document.form1.userPassword1.focus();
				return false;
			}
			if (document.form1.userPassword.value != document.form1.userPassword1.value) {
				alert("两次输入密码不一致");
				document.form1.userPassword1.focus();
				return false;
			}
			if (document.form1.userXingming.value == "") {
				alert("姓名为必填");
				document.form1.userXingming.focus();
				return false;
			}
			
			//定义正则表达式部分    
			var reg1 = /^[0-9]{0,}$/;
			var reg2 = /^[1-9]{1}[0-9]{0,}$/;
			//alert(numberValue);
			if(userAge ==null || userAge.length==0 || userAge.length>2){
				alert('请输入有效的年龄！');
				document.form1.userAge.focus();
				return false;
			}
			if((!reg1.test(userAge))||(!reg2.test(userAge))){
				alert('请输入有效的年龄！');
				document.form1.userAge.focus();
				return false;
			}
			
			//定义正则表达式部分    手机号码和邮箱
			var regphone = /^[1][3,4,5,7,8][0-9]{9}$/;
			var regemail = /^[a-zA-Z0-9_.-]+@[a-zA-Z0-9-]+(\.[a-zA-Z0-9-]+)*\.[a-zA-Z0-9]{2,6}$/;
			if (!regphone.test(userPhone)) {
				alert('请输入有效的手机号码！');
				document.form1.userPhone.focus();
				return false;
			}
		}
    </script>
</body>
</html>