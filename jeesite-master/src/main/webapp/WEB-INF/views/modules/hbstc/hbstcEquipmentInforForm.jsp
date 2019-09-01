<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>设备信息管理</title>
	<meta name="decorator" content="default"/>
	<script type="text/javascript">
		$(document).ready(function() {
			//$("#name").focus();
			$("#inputForm").validate({
				submitHandler: function(form){
					loading('正在提交，请稍等...');
					form.submit();
				},
				errorContainer: "#messageBox",
				errorPlacement: function(error, element) {
					$("#messageBox").text("输入有误，请先更正。");
					if (element.is(":checkbox")||element.is(":radio")||element.parent().is(".input-append")){
						error.appendTo(element.parent().parent());
					} else {
						error.insertAfter(element);
					}
				}
			});
		});
	</script>
</head>
<body>
	<ul class="nav nav-tabs">
		<li><a href="${ctx}/hbstc/hbstcEquipmentInfor/">设备信息列表</a></li>
		<li class="active"><a href="${ctx}/hbstc/hbstcEquipmentInfor/form?id=${hbstcEquipmentInfor.id}">设备信息<shiro:hasPermission name="hbstc:hbstcEquipmentInfor:edit">${not empty hbstcEquipmentInfor.id?'修改':'添加'}</shiro:hasPermission><shiro:lacksPermission name="hbstc:hbstcEquipmentInfor:edit">查看</shiro:lacksPermission></a></li>
	</ul><br/>
	<form:form id="inputForm" modelAttribute="hbstcEquipmentInfor" action="${ctx}/hbstc/hbstcEquipmentInfor/save" method="post" class="form-horizontal">
		<form:hidden path="id"/>
		<sys:message content="${message}"/>		
		<div class="control-group">
			<label class="control-label">设备编号：</label>
			<div class="controls">
				<form:input path="equipmentNo" htmlEscape="false" maxlength="64" class="input-xlarge required"/>
				<span class="help-inline"><font color="red">*</font> </span>
			</div>
		</div>
		<%--<div class="control-group">
			<label class="control-label">分类编号：</label>
			<div class="controls">
				<form:input path="classifyNo" htmlEscape="false" maxlength="64" class="input-xlarge required"/>
				<span class="help-inline"><font color="red">*</font> </span>
			</div>
		</div>--%>
		<div class="control-group">
			<label class="control-label">设备名称：</label>
			<div class="controls">
				<form:input path="equipmentName" htmlEscape="false" maxlength="64" class="input-xlarge required"/>
				<span class="help-inline"><font color="red">*</font> </span>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">详细参数：</label>
			<div class="controls">
				<form:input path="parameter" htmlEscape="false" maxlength="255" class="input-xlarge required"/>
				<span class="help-inline"><font color="red">*</font> </span>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">购置价钱：</label>
			<div class="controls">
				<form:input path="price" htmlEscape="false" maxlength="255" />
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">使用地点：</label>
			<div class="controls">
				<form:input path="placeUse" htmlEscape="false" maxlength="255" />
			</div>
		</div>

		<div class="control-group">
			<label class="control-label">购买时间：</label>
			<div class="controls">
				<input name="datePurchase" type="text" readonly="readonly" maxlength="20" class="input-medium Wdate "
					value="<fmt:formatDate value="${hbstcEquipmentInfor.datePurchase}" pattern="yyyy-MM-dd "/>"
					onclick="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss',isShowClear:false});"/>
			</div>
		</div>

		<%--<div class="control-group">
			<label class="control-label">归还时间：</label>
			<div class="controls">
				<input name="returnDate" type="text" readonly="readonly" maxlength="20" class="input-medium Wdate "
					value="<fmt:formatDate value="${hbstcEquipmentInfor.returnDate}" pattern="yyyy-MM-dd HH:mm:ss"/>"
					onclick="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss',isShowClear:false});"/>
			</div>
		</div>--%>
	<%--	<div class="control-group">
			<label class="control-label">借出时间：</label>
			<div class="controls">
				<input name="lendDate" type="text" readonly="readonly" maxlength="20" class="input-medium Wdate "
					value="<fmt:formatDate value="${hbstcEquipmentInfor.lendDate}" pattern="yyyy-MM-dd HH:mm:ss"/>"
					onclick="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss',isShowClear:false});"/>
			</div>
		</div>--%>
		<%--<div class="control-group">
			<label class="control-label">使用人员：</label>
			<div class="controls">
				<form:input path="lendName" htmlEscape="false" maxlength="64" class="input-xlarge "/>
			</div>
		</div>--%>
		<%--<div class="control-group">
			<label class="control-label">使用人员：</label>
			<div class="controls">
				<sys:treeselect id="oaNotifyRecord" name="oaNotifyRecordIds" value="${oaNotify.oaNotifyRecordIds}" labelName="createBy.name" labelValue="${oaNotify.oaNotifyRecordNames}"
								title="使用人员" url="/sys/office/treeData?type=3"  notAllowSelectParent="true"   allowClear="true"  cssClass="input"/>
				&lt;%&ndash;<span class="help-inline"><font color="red">*</font> </span>&ndash;%&gt;
			</div>
		</div>--%>
		<div class="control-group">
			<label class="control-label">选择使用人员：</label>
			<div class="controls">
				<sys:treeselect id="user" name="user.id" value="${hbstcEquipmentInfor.user.id}" labelName="hbstcEquipmentInfor.user.id" labelValue="${hbstcEquipmentInfor.user.name}"
								title="用户" url="/sys/office/treeData?type=3" allowClear="true" notAllowSelectParent="true" cssClass="input"/>&nbsp;&nbsp;&nbsp;&nbsp;
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">设备分类:</label>
			<div class="controls">
				<sys:treeselect id="hbstcEquipmentClassification" name="hbstcEquipmentClassification.id" value="${hbstcEquipmentInfor.hbstcEquipmentClassification.id}" labelName="hbstcEquipmentClassification.name" labelValue="${hbstcEquipmentInfor.hbstcEquipmentClassification.name}"
								title="设备分类" url="/hbstc/hbstcEquipmentClassification/treeData" cssClass="required" notAllowSelectParent="true"/>
				<span class="help-inline"><font color="red">*</font> </span>
			</div>


		</div>
		<div class="control-group">
			<label class="control-label">附件：</label>
			<div class="controls">
				<form:input path="accessory" htmlEscape="false" maxlength="1000" class="input-xlarge "/>
			</div>
		</div>
		<%--<div class="control-group">
			<label class="control-label">&lt;%&ndash;0:在库；1：借出；2：外借：&ndash;%&gt;设备在库状态</label>
			<div class="controls">
				<form:select path="deviceStatus" class="input-xlarge ">
					&lt;%&ndash;<form:option value="" label=""/>&ndash;%&gt;
					<form:options items="${fns:getDictList('hbstc_ef_deviceStatus')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
				</form:select>
			</div>
		</div>--%>
		<%--<div class="control-group">
			<label class="control-label">设备使用状态</label>
			<div class="controls">
				<form:select path="useStatus" class="input-xlarge ">
					&lt;%&ndash;<form:option value="" label=""/>&ndash;%&gt;
					<form:options items="${fns:getDictList('hbstc_ef_userStatus')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
				</form:select>
			</div>
		</div>--%>
		<div class="control-group">
			<label class="control-label">备注信息：</label>
			<div class="controls">
				<form:textarea path="remarks" htmlEscape="false" rows="4" maxlength="255" class="input-xxlarge "/>
			</div>
		</div>
		<div class="form-actions">
			<%--<shiro:hasPermission name="hbstc:hbstcEquipmentInfor:edit">--%><input id="btnSubmit" class="btn btn-primary" type="submit" value="保 存"/>&nbsp;<%--</shiro:hasPermission>--%>
			<input id="btnCancel" class="btn" type="button" value="返 回" onclick="history.go(-1)"/>
		</div>
	</form:form>
</body>
</html>