<%@ page language="java" contentType="text/html; charset=utf-8" import="com.model.*,com.util.*,java.util.List,java.util.ArrayList"
	pageEncoding="utf-8"%>
<% Jcpeizhi newJcpeizhi = (Jcpeizhi)session.getAttribute("jcpeizhi"); %>

<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
	
	String tijiaoUrl = (String) request.getParameter("tijiaoUrl");
	request.removeAttribute("tijiaoUrl");
	if(StringUtil.isEmpty(tijiaoUrl)){
		tijiaoUrl = (String) session.getAttribute("tijiaoUrl");
	}

	User user = (User)session.getAttribute("user");
	int userId = -1;
	if(user!=null){
		userId = user.getUserId();
	}
	
	List<String> tongjiNames = new ArrayList<String>();
	tongjiNames = (List) session.getAttribute("tongjiNames");
	List<Double> tongjiZongshus = new ArrayList<Double>();
	tongjiZongshus = (List) session.getAttribute("tongjiZongshus");
	Double zongshu = (Double) session.getAttribute("zongshu");
	session.removeAttribute("tongjiNames");
	session.removeAttribute("tongjiZongshus");
	session.removeAttribute("zongshu");
	session.removeAttribute("tijiaoUrl");
	
	int shuliang = 0;
	if(tongjiZongshus!=null){
		shuliang = tongjiZongshus.size();
	}
	
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>柱状图信息统计</title>
</head>
<body>
<script src="<%=basePath %>tongjitu/js/highcharts.js"></script>
<script src="<%=basePath %>tongjitu/js/exporting.js"></script>
<script src="<%=basePath %>tongjitu/js/export-data.js"></script>
<script type="text/javascript" src="<%=basePath %>My97DatePicker/WdatePicker.js"></script>
<link rel="stylesheet" type="text/css" href="../jquery-easyui-1.3.3/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="../jquery-easyui-1.3.3/themes/icon.css">
<script type="text/javascript" src="../jquery-easyui-1.3.3/jquery.min.js"></script>
<script type="text/javascript" src="../jquery-easyui-1.3.3/jquery.easyui.min.js"></script>
<script type="text/javascript" src="../jquery-easyui-1.3.3/locale/easyui-lang-zh_CN.js"></script>



<div id="container" style="min-width: 310px; height: 400px; margin: 0 auto"></div>


<script type="text/javascript">
Highcharts.chart('container', {
    chart: {
        type: 'column'
    },
    title: {
        text: '柱状图信息统计'
    },
    xAxis: {
        categories: ['柱状图信息统计']
    },
    credits: {
        enabled: false
    },
    series: [
    <%if(shuliang!=0){%>
    	{
        name: '<%=tongjiNames.get(0)%>',
        data: [<%=tongjiZongshus.get(0)%>]
    	}
    	<%for(int i = 1;i < shuliang;i++){%>
    	,
    	{
        name: '<%=tongjiNames.get(i)%>',
        data: [<%=tongjiZongshus.get(i)%>]
    	}
    	<%}%>
    <%}%>
    ]
});
</script>

<div>
	<%if(shuliang!=0){%>
		<%for(int i = 0;i < shuliang;i++){%>
			<%=tongjiNames.get(i)%>：<%=tongjiZongshus.get(i)%>；
		<%}%>
		<b>合计：</b><%=zongshu %>
	<%}%>
	<form action="<%=basePath %><%=tijiaoUrl %>" method="post" >
	<%if(userId!=-1){%>
	<input id="userId" name="userId" type="hidden" value="<%=userId%>"/>
	<%}%>
	<input id="tijiaoUrl" name="tijiaoUrl" type="hidden" value="<%=tijiaoUrl%>"/>
	<input id="tongjitu" name="tongjitu" type="hidden" value="zhuzhuangtu"/>
	名称：&nbsp;<input type="text" name="shujuName" id="shujuName" size="10"/> 
	<input type="submit" value="查询"/>
	</form>
</div>

	</body>
</html>