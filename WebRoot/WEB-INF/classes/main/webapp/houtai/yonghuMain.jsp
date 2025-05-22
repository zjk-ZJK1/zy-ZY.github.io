<%@ page language="java" contentType="text/html; charset=utf-8" import="com.model.*,java.util.List"
    pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
    
<%
	// 权限验证
	Yonghu yonghu = (Yonghu)session.getAttribute("yonghu");
	if(yonghu==null){
		System.out.println("没有得到yonghuId");
		response.sendRedirect("shouye/index.jsp");
		return;
	}
	Jcpeizhi newJcpeizhi = (Jcpeizhi)session.getAttribute("jcpeizhi");
	List<Jcbiaoti> jcbiaotis = (List<Jcbiaoti>)session.getAttribute("jcbiaotis");
	List<List<Jcdaohang>> jcdaohangslist = (List<List<Jcdaohang>>)session.getAttribute("jcdaohangslist");
	String yonghuName = yonghu.getYonghuXingming();
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><%=newJcpeizhi.getJcpeizhiName()%></title>
    <style>
        body {
            margin: 0;
            font-family: Arial, sans-serif;
            background-color: #e2e8f0; /* 浅灰色背景 */
            display: flex;
            justify-content: center;
        }

        .container {
            display: flex;
            width: 1600px;
            height: 100vh;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
        }

        .sidebar {
            width: 250px;
            background-color: #2d3748; /* 深灰色 */
            color: #edf2f7; /* 浅灰色 */
            display: flex;
            flex-direction: column;
        }

        .sidebar-header {
            padding: 20px;
            background-color: #1a202c; /* 更深的灰色 */
            text-align: center;
            font-size: 1.2em;
            font-weight: bold;
            color: #edf2f7;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .sidebar-header img {
            width: 50px;
            height: 50px;
            border-radius: 50%; /* 圆形图片 */
            margin-right: 10px;
        }

        .sidebar-nav {
            flex-grow: 1;
            padding: 0;
            overflow-y: auto;
        }

        .sidebar-nav ul {
            list-style-type: none;
            padding: 0;
            margin: 0;
        }

        .sidebar-nav ul li {
            position: relative;
            border-bottom: 1px solid #4a5568;
        }

        .sidebar-nav ul li a {
            display: block;
            padding: 15px 20px;
            color: #edf2f7;
            text-decoration: none;
            transition: background 0.3s, color 0.3s;
        }

        .sidebar-nav ul li a:hover {
            background-color: #4a5568; /* 更亮的灰色 */
            color: #ffffff;
        }

        .submenu {
            display: none;
            background-color: #2d3748;
        }

        .submenu li a {
            padding-left: 40px;
        }

        .main-content {
            flex-grow: 1;
            display: flex;
            flex-direction: column;
            background-color: #f8fafc;
        }

        .top-bar {
            background-color: #1a202c; /* 深灰色 */
            color: #edf2f7;
            padding: 10px 20px;
            display: flex;
            justify-content: flex-end;
            align-items: center;
        }

        .top-bar .user-info {
            display: flex;
            gap: 15px;
        }

        .top-bar .user-info a {
            color: #edf2f7;
            text-decoration: none;
            transition: color 0.3s;
        }

        .top-bar .user-info a:hover {
            color: #ffffff;
        }

        .content-area {
            flex-grow: 1;
            background-color: #e2e8f0;
            padding: 20px;
            overflow: auto;
        }

        .content-area iframe {
            width: 100%;
            height: 100%;
            border: none;
        }

        .footer {
            background-color: #1a202c; /* 深灰色 */
            color: #edf2f7;
            text-align: center;
            padding: 10px 0;
        }
    </style>
    <!-- 引入字体图标库 -->
    <link rel="stylesheet" href="https://cdn.bootcdn.net/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
</head>
<body>
    <div class="container">
        <!-- 左侧导航栏 -->
        <div class="sidebar">
            <div class="sidebar-header">
                <img src="logo.jpg" alt="Logo">
                <h2><%=newJcpeizhi.getJcpeizhiName()%></h2>
            </div>
            <div class="sidebar-nav">
                <ul>
                    <li class="nav-item">
                        <a href="#" onclick="toggleSubmenu('menu1')"><i class="fa fa-home"></i> 个人信息</a>
                        <ul class="submenu" id="menu1">
                            <li><a href="<%=basePath%>yonghu/yonghu.jsp" target="contentFrame"><i class="fa fa-angle-right"></i> 个人信息</a></li>
                            <li><a href="<%=basePath%>yonghu/yonghumima.jsp" target="contentFrame"><i class="fa fa-angle-right"></i> 修改密码</a></li>
                        </ul>
                    </li>
                    <%for(int i = 0; i < jcbiaotis.size(); i++){ %>
                    <li class="nav-item">
                        <a href="#" onclick="toggleSubmenu('menu<%=i+2%>')"><i class="fa fa-cog"></i> <%=jcbiaotis.get(i).getJcbiaotiName() %></a>
                        <ul class="submenu" id="menu<%=i+2%>">
                            <%for(int j = 0; j < jcdaohangslist.get(i).size(); j++){ %>
                            <li><a href="<%=basePath%>admin/<%=jcdaohangslist.get(i).get(j).getJcdaohangNeirong() %>" target="contentFrame"><i class="fa fa-angle-right"></i> <%=jcdaohangslist.get(i).get(j).getJcdaohangName() %></a></li>
                            <%} %>
                        </ul>
                    </li>
                    <%} %>
                </ul>
            </div>
        </div>

        <!-- 右侧内容 -->
        <div class="main-content">
            <!-- 右上角用户信息 -->
            <div class="top-bar">
                <div class="user-info">
                    <span><%=yonghuName %></span>
                    <a href="<%=basePath%>yonghu/yonghumima.jsp" target="contentFrame"><i class="fa fa-key"></i> 修改密码</a>
                    <a href="<%=basePath%>shouye/tuichu.jsp"><i class="fa fa-sign-out-alt"></i> 退出</a>
                </div>
            </div>

            <!-- 中间内容区域 -->
            <div class="content-area">
                <iframe name="contentFrame" src="<%=basePath%>shouye/neiye.jsp"></iframe>
            </div>

            <!-- 页脚 -->
            <div class="footer">
                <p>&copy; 202X <%=newJcpeizhi.getJcpeizhiName()%></p>
            </div>
        </div>
    </div>

    <script>
        function toggleSubmenu(menuId) {
            var submenu = document.getElementById(menuId);
            submenu.style.display = submenu.style.display === 'block' ? 'none' : 'block';
        }
    </script>
</body>
</html>