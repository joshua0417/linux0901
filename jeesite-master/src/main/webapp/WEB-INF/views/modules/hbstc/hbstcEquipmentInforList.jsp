<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>设备信息管理</title>
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
		<li class="active"><a href="${ctx}/hbstc/hbstcEquipmentInfor/">设备信息列表</a></li>
		<shiro:hasPermission name="hbstc:hbstcEquipmentInfor:edit"><li><a href="${ctx}/hbstc/hbstcEquipmentInfor/form">设备信息添加</a></li></shiro:hasPermission>
	</ul>
	<form:form id="searchForm" modelAttribute="hbstcEquipmentInfor" action="${ctx}/hbstc/hbstcEquipmentInfor/" method="post" class="breadcrumb form-search">
		<input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
		<input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
		<ul class="ul-form">
			<li><label>设备名称：</label>
				<form:input path="equipmentName" htmlEscape="false" maxlength="64" class="input-medium"/>
			</li>
			<li><label>设备编号：</label>
				<form:input path="classifyNo" htmlEscape="false" maxlength="64" class="input-medium"/>
			</li>

			<li><label>具体参数：</label>
				<form:input path="parameter" htmlEscape="false" maxlength="255" class="input-medium"/>
			</li>
			<li class="btns"><input id="btnSubmit" class="btn btn-primary" type="submit" value="查询"/></li>
			<li class="clearfix"></li>
		</ul>
	</form:form>
	<sys:message content="${message}"/>
	<table id="contentTable" class="table table-striped table-bordered table-condensed">
		<thead>
			<tr>
				<th>设备编号</th>
				<%--<th>分  号</th>--%>
				<th>设备名称</th>
				<th>主要参数</th>
				<th>购置时间</th>
				<th>购置价格</th>
				<th>使用地点</th>
				<th>使用人员</th>
				<shiro:hasPermission name="hbstc:hbstcEquipmentInfor:edit"><th>操作</th></shiro:hasPermission>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${page.list}" var="hbstcEquipmentInfor">
			<tr>
				<td><a href="${ctx}/hbstc/hbstcEquipmentInfor/form?id=${hbstcEquipmentInfor.id}">
						${hbstcEquipmentInfor.equipmentNo}</a>
				</td>
				<%--<td>
						${hbstcEquipmentInfor.classifyNo}
				</td>--%>
				<td>
						${hbstcEquipmentInfor.equipmentName}
				</td>

				<td>
					${hbstcEquipmentInfor.parameter}
				</td>
				<td>
					<fmt:formatDate value="${hbstcEquipmentInfor.datePurchase}" pattern="yyyy-MM-dd HH:mm:ss"/>
				</td>
				<td>
					${hbstcEquipmentInfor.price}
				</td>
				<td>
						${hbstcEquipmentInfor.placeUse}
				</td>
				<td>
						<%--${hbstcEquipmentInfor.lendName.split(',')[1]}--%>
								${hbstcEquipmentInfor.user.name}
				</td>
				<shiro:hasPermission name="hbstc:hbstcEquipmentInfor:edit"><td>
    				<a href="${ctx}/hbstc/hbstcEquipmentInfor/form?id=${hbstcEquipmentInfor.id}">修改</a>
					<a href="${ctx}/hbstc/hbstcEquipmentInfor/delete?id=${hbstcEquipmentInfor.id}" onclick="return confirmx('确认要删除该设备信息吗？', this.href)">删除</a>
				</td></shiro:hasPermission>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	<div class="pagination">${page}</div>
</body>
</html>