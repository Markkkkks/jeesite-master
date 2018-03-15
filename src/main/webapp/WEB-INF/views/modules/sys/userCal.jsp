<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
<title>calculater</title>
<meta name="decorator" content="default" />
<script type="text/javascript">
	$(document).ready(
			function() {
				$("select").select2({
			        minimumResultsForSearch: -1
			});
				$("#oldPassword").focus();
				
			});
</script>
</head>
<body>
	<ul class="nav nav-tabs">

		<li class="active"><a href="${ctx}/sys/user/Cal">计算器</a></li>
	</ul>
	<br />
	<div>
		<form:form id="inputForm" modelAttribute="user"
			action="${ctx}/sys/user/Cal" method="get" class="form-horizontal">
			<!--<sys:message content="${message}" />
			-->
			<div style="margin-left: 140px">
				<p>${message }</p>
			</div>
			<div class="control-group">
				<label class="control-label">数1:</label>
				<div class="controls">
					<input id="num1" name="num1" type="text" value="${answer}"
						maxlength="20" class="required" /> <span class="help-inline"><font
						color="red">*</font> </span>
				</div>
			</div>
			<div class="control-group">
				<label class="control-label">操作:</label>
				<div class="controls">
					<select name="flag" >
						<option value="+">+</option>
						<option value="-">-</option>
						<option value="*">*</option>
						<option value="/">/</option>
					</select> <span class="help-inline"><font color="red">*</font> </span>
				</div>
			</div>
			<div class="control-group">
				<label class="control-label">数2:</label>
				<div class="controls">
					<input id="num2" name="num2" type="text" value="${num2 }"
						maxlength="20" class="required" /> <span class="help-inline"><font
						color="red">*</font> </span>
				</div>
			</div>

			<div class="control-group">
				<label class="control-label">结果:</label>
				<div class="controls">
					<input id="confirmNewPassword" name="confirmNewPassword"
						type="text" disabled="disabled" value="${answer}" maxlength="10"
						minlength="3" /> <span class="help-inline"><font
						color="red">*</font> </span>
				</div>
			</div>
			<div class="form-actions">
				<input id="btnSubmit" class="btn btn-primary" type="submit"
					value="计算" />
			</div>
		</form:form>
	</div>
	<c:if test="${sessionScope.list != null }">
		<div style="margin:0px 160px">
			<h3>最近操作</h3>

			<c:forEach items="${sessionScope.list}" var="keyword" varStatus="id"
				begin="0">
					<p>${keyword }</p>
			</c:forEach>

		</div>
	</c:if>
</body>
</html>