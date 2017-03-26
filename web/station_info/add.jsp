<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% 
   String contextPath = request.getContextPath(); 
   request.setAttribute("contextPath", contextPath);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Station_info Add</title>
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
		    <legend>Station_info Add    <a id="index-btn" href="#" class="button button-rounded button-flat-action" style="margin-left:300px;margin-bottom:10px;"><i class="icon-home"></i>station_info list</a>
		    </legend>
		    	<form class="form-horizontal" action="${contextPath}/front/station_info_add.action">
				  <div class="control-group">
				    <label class="control-label" for="inputStation_id">station_id</label>
				    <div class="controls">
				      <input type="text" id="inputStation_id" name="station_info.station_id">
				    </div>
				  </div>
				  <div class="control-group">
				    <label class="control-label" for="inputStation_fullname">station_fullname</label>
				    <div class="controls">
				      <input type="text" id="inputStation_fullname" name="station_info.station_fullname">
				    </div>
				  </div>
				  <div class="control-group">
				    <label class="control-label" for="inputStation_shortname">station_shortname</label>
				    <div class="controls">
				      <input type="text" id="inputStation_shortname" name="station_info.station_shortname">
				    </div>
				  </div>
				  <div class="control-group">
				    <label class="control-label" for="inputStation_x">station_x</label>
				    <div class="controls">
				      <input type="text" id="inputStation_x" name="station_info.station_x">
				    </div>
				  </div>
				  <div class="control-group">
				    <label class="control-label" for="inputStation_y">station_y</label>
				    <div class="controls">
				      <input type="text" id="inputStation_y" name="station_info.station_y">
				    </div>
				  </div>
				  <div class="control-group">
				    <label class="control-label" for="inputStation_description">station_description</label>
				    <div class="controls">
				      <input type="text" id="inputStation_description" name="station_info.station_description">
				    </div>
				  </div>
				  <div class="control-group">
				    <div class="controls">
				      <a href="#" id="add-btn" class="button button-rounded button-flat-action">添加</a>
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
		window.self.location = "${contextPath}/front/station_info_index.action";
	});
	$("#index-btn").click(function(){
		window.self.location = "${contextPath}/front/station_info_index.action";
	});
	$("#add-btn").click(function(){
		$(".form-horizontal").submit();
	});
});
</script>
</body>
</html>