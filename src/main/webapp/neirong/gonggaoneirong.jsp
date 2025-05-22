<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<% Jcpeizhi newJcpeizhi = (Jcpeizhi)session.getAttribute("jcpeizhi"); %>   
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ include file="gonggao.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title><%=gonggao.getGonggaoName()%></title>
    <style>
        /* 设置页面全局样式 */
        body, html {
            margin: 0;
            padding: 0;
            width: 100%;
            height: 100%;
            display: flex;
            justify-content: center;
            align-items: center;
            background-image: url('<%=basePath%>shouye/image/shouye.jpg'); /* 设置背景图 */
            background-size: cover;
            background-position: center;
            font-family: Arial, sans-serif;
            overflow: hidden; /* 禁止整个页面滚动 */
        }

        /* 设置新闻容器样式 */
        .news-container {
            width: 1200px;
            max-height: 90vh; /* 设置容器的最大高度为 90% 的视口高度 */
            background-color: rgba(255, 255, 255, 0.8); /* 半透明背景 */
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            overflow-y: auto; /* 超出部分启用滚动条 */
        }

        /* 新闻标题样式 */
        .news-title {
            font-size: 2em;
            font-weight: bold;
            margin: 0;
            color: #333;
        }

        /* 新闻元数据样式 */
        .news-meta {
            margin: 10px 0;
            font-size: 0.9em;
            color: #555;
        }

        /* 新闻内容样式 */
        .news-content {
            font-size: 1.1em;
            line-height: 1.6;
            color: #444;
        }
    </style>
</head>
<body>
    <div class="news-container">
      <%if(gonggao!=null) {%>
        <h1 class="news-title"><%=gonggao.getGonggaoName()%></h1>
        <div class="news-meta">
            类型：<%=gonggao.getGgtypeName()%>
        </div>
        <div class="news-content">
            <p style="text-indent: 2em;">
                <%=gonggao.getGonggaoMark()%>
            </p>
        </div>
	  <%}else{ %>
	  	没有选择<%=newJcpeizhi.getGonggaoBieming() %>
	  <%} %>
    </div>
</body>
</html>