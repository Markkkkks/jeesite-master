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
		$("#oldPassword").focus();

	});
</script>
</head>
<body>
	<div style="" align="center">
		<h1>历史操作</h1>

	</div>
	<c:if test="${historyList ==null} ">
		<h1>没有历史记录</h1>
	</c:if>
	<c:if test="${historyList != null }">
		<c:forEach items="${historyList}" var="item" varStatus="id"
			begin="0">
			${item.data } </br><fmt:formatDate value="${item.calculateDate}"  pattern="yyyy-MM-dd HH:mm:ss"/></br>
		</c:forEach>
	</c:if>
</body>
</html>