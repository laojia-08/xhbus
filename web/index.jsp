<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="pg" uri="http://jsptags.com/tags/navigation/pager"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
  String contextPath = request.getContextPath();
  request.setAttribute("contextPath", contextPath);
%>
<!DOCTYPE>
<html><!--<![endif]-->
<head>
  <meta charset="utf-8">
  <title>首页 - 班车后台</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link href="css/bootstrap.min.css" rel="stylesheet">
  <link href="css/bootstrap-responsive.min.css" rel="stylesheet">
  <link href="css/site.css" rel="stylesheet">
  <!--[if lt IE 9]><script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script><![endif]-->
</head>
<body>
<div class="container">
  <div class="navbar">
    <div class="navbar-inner">
      <div class="container">
        <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse"> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </a> <a class="brand" href="#">班车后台</a>
        <div class="nav-collapse">
          <ul class="nav">
            <li class="active">
              <a href="index.jsp">首页</a>
            </li>
            <li>
              <a href="${contextPath}/front/businfo_index.action">车辆管理</a>
            </li>
            <li>
              <a href="${contextPath}/front/station_info_index.action">站点管理</a>
            </li>
            <li>
              <a href="${contextPath}/front/line_info_index.action">路线管理</a>
            </li>
            <li class="dropdown">
              <a href="help.htm" class="dropdown-toggle" data-toggle="dropdown">人员管理<b class="caret"></b></a>
              <ul class="dropdown-menu">
                <li>
                  <a href="${contextPath}/front/driver_info_index.action">驾驶员</a>
                </li>
                <li>
                  <a href="${contextPath}/front/driver_info_index.action">班长</a>
                </li>
                <li>
                  <a href="${contextPath}/front/admin_user_info_index.action">管理员</a>
                </li>
              </ul>
            </li>
          </ul>
          <ul class="nav pull-right">
            <li>
              <a href="profile.htm">@username</a>
            </li>
            <li>
              <a href="login.htm">退出</a>
            </li>
          </ul>
        </div>
      </div>
    </div>
  </div>
  <div class="row">
    <div class="span3">
      <div class="well" style="padding: 8px 0;">
        <ul class="nav nav-list">
          <li class="nav-header">
            车辆管理
          </li>
          <li class="active">
            <a href="${contextPath}/businfo/add.jsp"><i class="icon-white icon-home"></i>添加车辆</a>
          </li>
          <li>
            <a href="${contextPath}/front/businfo_index.action"><i class="icon-folder-open"></i>查看车辆</a>
          </li>
          <li class="nav-header">
            站点管理
          </li>
          <li>
            <a href="${contextPath}/station_info/add.jsp"><i class="icon-user"></i>添加站点</a>
          </li>
          <li>
            <a href="${contextPath}/front/station_info_index.action"><i class="icon-cog"></i>查看站点</a>
          </li>
          <li class="nav-header">
            路线管理
          </li>
          <li>
            <a href="${contextPath}/line_info/add.jsp"><i class="icon-user"></i>添加站点</a>
          </li>
          <li>
            <a href="${contextPath}/front/line_info_index.action"><i class="icon-cog"></i>查看站点</a>
          </li>
          <li class="nav-header">
            人员管理
          </li>
          <li>
            <a href="${contextPath}/front/driver_info_index.action"><i class="icon-user"></i>驾驶员</a>
          </li>
          <li>
            <a href="${contextPath}/front/driver_info_index.action"><i class="icon-cog"></i>班长</a>
          </li>
          <li>
            <a href="${contextPath}/front/admin_user_info_index.action"><i class="icon-cog"></i>管理员</a>
          </li>
        </ul>
      </div>
    </div>
    <div class="span9">
      <h1>
        首页
      </h1>
      <div class="hero-unit">
        <h1>
          Welcome!
        </h1>
        <p>
          欢迎使用香河社区班车管理系统！
        </p>
      </div>
    </div>
  </div>
</div>
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/site.js"></script>
</body>
</html>