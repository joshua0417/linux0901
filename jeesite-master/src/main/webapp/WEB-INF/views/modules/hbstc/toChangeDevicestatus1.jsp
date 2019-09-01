
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
    <title>设备借出</title>
  <meta name="decorator" content="default"/>
  <script type="text/javascript">
    $(document).ready(function(){

    });
    function doSave() {
      $.ajax({
        type:"post",
        url:"${ctx}/hbstc/hbstcEquipmentInfor/changeDevicestatus",
        data:$("#inputForm").serialize(),
        dataType:"json",
        async:false,
        /*error:function(data){
          $.jBox().alert(data,"错误信息");
          document.getElementById("btnSubmit").disabled = false;
          $("#btnSubmit").removeattr("disabled");
        },*/
        error:function(data){
          top.$.jBox.tip("出错啦！！"+data);
        },
        success:function(data){
          top.$.jBox.tip("设备已借出，页面将自动刷新！！！");


          location.reload();


        }
      });
      $("#inputForm").submit(function(){
        window.close();
      });
    }
  </script>
</head>
<body>
     <h3 align="center" > 设备编号：${hbstcEquipmentInfor.equipmentNo}  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 设备名称：${hbstcEquipmentInfor.equipmentName} </h3>
        <form form id="inputForm" modelAttribute="hbstcEquipmentInfor" action="${ctx}/hbstc/hbstcEquipmentInfor/changeDevicestatus" method="post" class="form-horizontal">
          <form:hidden path="hbstcEquipmentInfor.id"/>
          <sys:message content="${message}"/>
          <div class="control-group">
            <label class="control-label">借设备人员：</label>
            <div class="controls">
              <sys:treeselect id="user" name="user.id" value="${hbstcEquipmentInfor.user.id}" labelName="hbstcEquipmentInfor.user.id" labelValue="${hbstcEquipmentInfor.user.name}"
                              title="用户" url="/sys/office/treeData?type=3" allowClear="true" notAllowSelectParent="true" cssClass="input"/>&nbsp;&nbsp;&nbsp;&nbsp;
              <span class="help-inline"><font color="red">*</font> </span>
            </div>
          </div>
          <div class="control-group">
            <label class="control-label">备注信息：</label>
            <div class="controls">
              <form:input id="remarks" path="hbstcEquipmentInfor.remarks" htmlEscape="false" maxlength="64" class="input-xlarge required"/>
              <span class="help-inline"><font color="red">*</font> </span>
            </div>
          </div>


        </form>
</body>
</html>
