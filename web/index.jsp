<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="pg" uri="http://jsptags.com/tags/navigation/pager"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
  String contextPath = request.getContextPath();
  request.setAttribute("contextPath", contextPath);
%>
<!DOCTYPE>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
  <title>BusInfo</title>
  <link type="text/css" rel="stylesheet" href="${contextPath}/css/bootstrap.min.css" >
  <link type="text/css" rel="stylesheet" href="${contextPath}/css/bootstrap-responsive.min.css" >
  <link type="text/css" rel="stylesheet" href="${contextPath}/plugin/buttons/css/font-awesome.min.css" />
  <link type="text/css" rel="stylesheet" href="${contextPath}/plugin/buttons/css/buttons.css" />
  <style type="text/css">
    a:hover{color:white;text-decoration:none;}
    table{border-collapse:separate;}
  </style>
</head>
<body>
<div class="container" style="margin-top:30px;">
  <fieldset>
    <legend>车辆信息</legend>
    <div>
      <a href="${contextPath}/front/businfo_index.action"
         class="button button-rounded button-flat-action">
        车辆信息
      </a>
    </div>
    <legend>驾驶员</legend>
    <div>
      <a href="${contextPath}/front/driver_info_index.action"
         class="button button-rounded button-flat-action">
        驾驶员
      </a>
    </div>
    <legend>站点信息</legend>
    <div>
      <a href="${contextPath}/front/station_info_index.action"
         class="button button-rounded button-flat-action">
        站点信息
      </a>
    </div>
    <legend>路线信息</legend>
    <div>
      <a href="${contextPath}/front/line_info_index.action"
         class="button button-rounded button-flat-action">
        路线信息
      </a>
    </div>
    <legend>附件信息</legend>
    <div>
      <a href="${contextPath}/front/attachment_info_index.action"
         class="button button-rounded button-flat-action">
        附件信息
      </a>
    </div>
    <legend>管理员</legend>
    <div>
      <a href="${contextPath}/front/admin_user_info_index.action"
         class="button button-rounded button-flat-action">
        管理员
      </a>
    </div>
  </fieldset>
</div>
</body>
</html>