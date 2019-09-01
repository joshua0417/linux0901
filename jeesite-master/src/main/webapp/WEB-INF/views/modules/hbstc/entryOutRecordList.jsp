<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>设备进出记录管理</title>
	<meta name="decorator" content="default"/>
	<script type="text/javascript">
		$(document).ready(function() {
			
		});
		function page(n,s){
			$("#pageNo").val(n);
			$("#pageSize").val(s);
			$("#searchForm").submit();
        	return false;
        }
	</script>
</head>
<body>
	<ul class="nav nav-tabs">
		<li class="active"><a href="${ctx}/hbstc/entryOutRecord/">设备进出记录列表</a></li>
		<%--<shiro:hasPermission name="hbstc:entryOutRecord:edit"><li><a href="${ctx}/hbstc/entryOutRecord/form">设备进出记录添加</a></li></shiro:hasPermission>--%>
	</ul>
	<form:form id="searchForm" modelAttribute="entryOutRecord" action="${ctx}/hbstc/entryOutRecord/" method="post" class="breadcrumb form-search">
		<input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
		<input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
		<ul class="ul-form">
			<li><label>经手人：</label>
				<form:input path="transactor" htmlEscape="false" maxlength="64" class="input-medium"/>
			</li>
			<li><label>借设备人员：</label>
				<form:input path="lendName" htmlEscape="false" maxlength="64" class="input-medium"/>
			</li>
			<li><label>借设备的原因：</label>
				<form:input path="lendReason" htmlEscape="false" maxlength="64" class="input-medium"/>
			</li>
			<li class="btns"><input id="btnSubmit" class="btn btn-primary" type="submit" value="查询"/></li>
			<li class="clearfix"></li>
		</ul>
	</form:form>
	<sys:message content="${message}"/>
	<table id="contentTable" class="table table-striped table-bordered table-condensed">
		<thead>
			<tr>
				<th>经手人</th>
				<th>借设备人员</th>
				<th>借设备的原因</th>
				<th>设备借出时间</th>
				<th>归还时间</th>
				<%--<shiro:hasPermission name="hbstc:entryOutRecord:edit"><th>操作</th></shiro:hasPermission>--%>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${page.list}" var="entryOutRecord">
			<tr>
				<td><a href="${ctx}/hbstc/entryOutRecord/form?id=${entryOutRecord.id}">
					${entryOutRecord.transactor}
				</a></td>
				<td>
					${entryOutRecord.lendName}
				</td>
				<td>
					${entryOutRecord.lendReason}
				</td>
				<td>
					<fmt:formatDate value="${entryOutRecord.lendTime}" pattern="yyyy-MM-dd HH:mm:ss"/>
				</td>
				<td>
					<fmt:formatDate value="${entryOutRecord.returnTime}" pattern="yyyy-MM-dd HH:mm:ss"/>
				</td>
				<%--<shiro:hasPermission name="hbstc:entryOutRecord:edit"><td>--%>
    				<%--<a href="${ctx}/hbstc/entryOutRecord/form?id=${entryOutRecord.id}">修改</a>
					<a href="${ctx}/hbstc/entryOutRecord/delete?id=${entryOutRecord.id}" onclick="return confirmx('确认要删除该设备进出记录吗？', this.href)">删除</a>
				</td></shiro:hasPermission>--%>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	<div class="pagination">${page}</div>
</body>
</html>