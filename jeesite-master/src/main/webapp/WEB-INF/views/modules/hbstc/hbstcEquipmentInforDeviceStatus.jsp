<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/2/9
  Time: 9:17
  To change this template use File | Settings | File Templates.
--%>
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
    function changeDevicestatus(id) {
      top.$.jBox.open("iframe:${ctx}/hbstc/hbstcEquipmentInfor/toChangeDevicestatus?id=" + id, "借出设备", 1000, $(top.document).height()-180, {
        buttons:{"确定":"ok", "取消":true},
        submit:function(v, h, f) {

        },closed:function() {
          $("#searchForm").submit();
        },loaded:function(h) {
          $(".jbox-content", top.document).css("overflow-y","hidden");
        }
      });
    }

    <%--借出设备--%>
    function changeDevicestatus222(id){
      isFreshFlag="1";
      jBox.open(
              "iframe:${ctx}/hbstc/hbstcEquipmentInfor/toChangeDevicestatus?id=" + id,
              "借出设备", 600, 220, {
                buttons: {"确定": "ok", "取消": true},
                submit: function (v, h, f) {
                        if(v =="ok"){
                          var receiberForm = h.find("iframe")[0].contentWindow.$("#inputForm");
                          var remarks = $(receiberForm).find("#remarks").val();
                          var lendName = $(receiberForm).find("#user").val();
                          if(!remarks ){
                            top.$.jBox.tip("必填不能未空！！");
                            return false;
                          }
                          $.ajax({
                            type:"post",
                            url:"${ctx}/hbstc/hbstcEquipmentInfor/changeDevicestatus",
                            data:$(receiberForm).serialize(),
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
                        }
                },  loaded: function (h) {
                  $(".jbox-content", top.document).css("overflow-y", "hidden");
                }


              });
    }
    /*外借设备*/
    function changeDevicestatus333(id){

      jBox.open(
              "iframe:${ctx}/hbstc/hbstcEquipmentInfor/toChangeDevicestatus?id=" + id,
              "外借设备", 650, 260, {
                buttons: {"确定": "ok", "取消": true},
                submit: function (v, h, f) {
                  if(v =="ok"){
                    var receiberForm = h.find("iframe")[0].contentWindow.$("#inputForm");
                    var remarks = $(receiberForm).find("#remarks").val();
                    var accessory = $(receiberForm).find("#user1").val();
                    if(!remarks ){
                      top.$.jBox.tip("必填不能未空！！");
                      return false;
                    }
                    $.ajax({
                      type:"post",
                      url:"${ctx}/hbstc/hbstcEquipmentInfor/changeDevicestatusOut",
                      data:$(receiberForm).serialize(),
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
                  }
                },  loaded: function (h) {
                  $(".jbox-content", top.document).css("overflow-y", "hidden");
                }


              });
    }
  </script>
</head>
<body>
<ul class="nav nav-tabs">
  <li class="active"><a href="${ctx}/hbstc/hbstcEquipmentInfor/deviceStatus?deviceStatus=0">设备信息列表</a></li>
  <%--<shiro:hasPermission name="hbstc:hbstcEquipmentInfor:edit"><li><a href="${ctx}/hbstc/hbstcEquipmentInfor/form">设备信息添加</a></li></shiro:hasPermission>--%>
</ul>
<form:form id="searchForm" modelAttribute="hbstcEquipmentInfor" action="${ctx}/hbstc/hbstcEquipmentInfor/deviceStatus" method="post" class="breadcrumb form-search">
  <input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
  <input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
  <ul class="ul-form">
   <%-- <li><label>归属分类：</label><sys:treeselect id="hbstcEquipmentClassification" name="hbstcEquipmentClassification.id" value="${hbstcEquipmentInfor.hbstcEquipmentClassification.id}" labelName="hbstcEquipmentClassification.name" labelValue="${hbstcEquipmentInfor.hbstcEquipmentClassification.name}"
                                            title="设备" url="/hbstc/hbstcEquipmentClassification/treeData?type=2" cssClass="input-small" allowClear="true" notAllowSelectParent="true"/></li>--%>
   <%-- <li><label>设备名称：</label>
      <form:input path="equipmentName" htmlEscape="false" maxlength="64" class="input-medium"/>
    </li>--%>
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
<ul class="nav nav-tabs">
  <li class="active"><a href="${ctx}/hbstc/hbstcEquipmentInfor/deviceStatus">在库设备列表</a></li>
  <%--<shiro:hasPermission name="hbstc:hbstcEquipmentInfor:edit"><li><a href="${ctx}/hbstc/hbstcEquipmentInfor/form">设备信息添加</a></li></shiro:hasPermission>--%>
  <li><a href="${ctx}/hbstc/hbstcEquipmentInfor/deviceStatus1?deviceStatus=1">借出设备列表</a></li>
  <li><a href="${ctx}/hbstc/hbstcEquipmentInfor/deviceStatus2?deviceStatus=2">外借设备列表</a></li>
</ul>
<sys:message content="${message}"/>
<table id="contentTable" class="table table-striped table-bordered table-condensed">
  <thead>
  <tr>
    <th>总  号</th>
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
        ${hbstcEquipmentInfor.user.name}
      </td>
      <shiro:hasPermission name="hbstc:hbstcEquipmentInfor:edit"><td>
        <%--<a href="${ctx}/hbstc/hbstcEquipmentInfor/form?id=${hbstcEquipmentInfor.id}">修改</a>--%>
        <%--<a href="${ctx}/hbstc/hbstcEquipmentInfor/changeDevicestatus?id=${hbstcEquipmentInfor.id}" class="btn btn-warning" onclick="return confirmx('确认要借出该设备吗？', this.href)">借出设备</a>
          <a href="${ctx}/hbstc/hbstcEquipmentInfor/changeDevicestatusOut?id=${hbstcEquipmentInfor.id}" class="btn btn-danger" onclick="return confirmx('确认要将该设备外借吗？', this.href)">外借设备</a>
          <a href="####" onclick="changeDevicestatus('${hbstcEquipmentInfor.id}')" class="btn btn-mini"><i class="icon-headphones"></i>&nbsp;借出设备</a>--%>
          <a href="####" onclick="changeDevicestatus222('${hbstcEquipmentInfor.id}')" class="btn btn-warning"><i class="icon ion-ios-information"></i>&nbsp;借出设备</a>
          &nbsp;&nbsp;
          <a href="####" onclick="changeDevicestatus333('${hbstcEquipmentInfor.id}')" class="btn btn-danger"><i class="icon ion-ios-information"></i>&nbsp;外借设备</a>
      </td></shiro:hasPermission>
    </tr>
  </c:forEach>
  </tbody>
</table>
<div class="pagination">${page}</div>
</body>

</html>
