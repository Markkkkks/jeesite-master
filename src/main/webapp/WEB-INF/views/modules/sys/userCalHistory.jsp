<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<%@page import="java.util.Date"%>
<html>
<head>
<title>计算历史</title>
<meta name="decorator" content="default" />
<script type="text/javascript">
	$(document).ready(function() {
		$("select").select2({
			minimumResultsForSearch : -1
		});
	});
</script>
</head>
<body>
	<ul class="nav nav-tabs">
		<li class="active"><a href="#">历史纪录</a></li>
	</ul>
	
	<sys:message content="${message}"/>
	<table id="contentTable" class="table table-striped table-bordered table-condensed">
		<thead><tr><th>data</th><th>时间</th><th>操作</th></thead>
		<tbody>
		<c:forEach items="${historyList}" var="item">
			<tr>
				<td>${item.data}</td>
				<td><fmt:formatDate value="${item.calculateDate}"  pattern="yyyy-MM-dd HH:mm:ss"/></td>
				<td>    				
					<a href="${ctx}/sys/user/deleteCal?calId=${item.id}" onclick="return confirmx('确认要删除该data吗？', this.href)">删除</a>   				
				</td>
			</tr>
		</c:forEach>
		</tbody>
	</table>
</body>
</html>