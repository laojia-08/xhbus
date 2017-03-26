<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% 
   String contextPath = request.getContextPath(); 
   request.setAttribute("contextPath", contextPath);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Line_info Update</title>
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
		    <legend>Line_info Update    <a id="index-btn" href="#" class="button button-rounded button-flat-action" style="margin-left:300px;margin-bottom:10px;"><i class="icon-home"></i>line_info list</a>
		    </legend>
		    	<form class="form-horizontal" action="${contextPath}/front/line_info_update.action">
				  <div class="control-group">
				    <label class="control-label" for="inputLine_id">line_id</label>
				    <div class="controls">
				      <input type="text" id="inputLine_id" name="line_info.line_id" value="${line_info.line_id}">
				    </div>
				  </div>
				  <div class="control-group">
				    <label class="control-label" for="inputLine_fullname">line_fullname</label>
				    <div class="controls">
				      <input type="text" id="inputLine_fullname" name="line_info.line_fullname" value="${line_info.line_fullname}">
				    </div>
				  </div>
				  <div class="control-group">
				    <label class="control-label" for="inputLine_shortname">line_shortname</label>
				    <div class="controls">
				      <input type="text" id="inputLine_shortname" name="line_info.line_shortname" value="${line_info.line_shortname}">
				    </div>
				  </div>
				  <div class="control-group">
				    <label class="control-label" for="inputBus_id">bus_id</label>
				    <div class="controls">
				      <input type="text" id="inputBus_id" name="line_info.bus_id" value="${line_info.bus_id}">
				    </div>
				  </div>
				  <div class="control-group">
				    <label class="control-label" for="inputStation_id">station_id</label>
				    <div class="controls">
				      <input type="text" id="inputStation_id" name="line_info.station_id" value="${line_info.station_id}">
				    </div>
				  </div>
				  <div class="control-group">
				    <label class="control-label" for="inputStation_order">station_order</label>
				    <div class="controls">
				      <input type="text" id="inputStation_order" name="line_info.station_order" value="${line_info.station_order}">
				    </div>
				  </div>
				  <div class="control-group">
				    <label class="control-label" for="inputLine_stationtime">line_stationtime</label>
				    <div class="controls">
				      <input type="text" id="inputLine_stationtime" name="line_info.line_stationtime" value="${line_info.line_stationtime}">
				    </div>
				  </div>
				  <div class="control-group">
				    <div class="controls">
				      <a href="#" id="update-btn" class="button button-rounded button-flat-action">保存</a>
                  	  <a href="#" id="cancel-btn" class="button button-rounded button-flat-primary">取消</a>
				    </div>
				  </div>
				</form>
		</fieldset>
   </div><!-- container end -->
<script type="text/javascript" src="${contextPath}/js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="${contextPath}/js/bootstrap.min.js"></script>
<script>
$(function(){
	$("#cancel-btn").click(function(){
		window.self.location = "${contextPath}/front/line_info_index.action";
	});
	$("#index-btn").click(function(){
		window.self.location = "${contextPath}/front/line_info_index.action";
	});
	$("#update-btn").click(function(){
		$(".form-horizontal").submit();
	});
});
</script>
</body>
</html>