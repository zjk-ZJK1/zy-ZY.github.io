<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>退出</title>
    <script type="text/javascript">
        function redirectToLogin() {
            // 重定向到顶级窗口的登录页面
            window.top.location.href = 'index.jsp';
        }
    </script>
</head>
<body>
    <%
        // 清除 session
        session.invalidate();
    %>
    <script type="text/javascript">
        // 调用 JavaScript 函数进行重定向
        redirectToLogin();
    </script>
</body>
</html>
