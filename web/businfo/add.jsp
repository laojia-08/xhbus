<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% 
   String contextPath = request.getContextPath(); 
   request.setAttribute("contextPath", contextPath);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>BusInfo Add</title>
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
		    <legend>BusInfo Add    <a id="index-btn" href="#" class="button button-rounded button-flat-action" style="margin-left:300px;margin-bottom:10px;"><i class="icon-home"></i>busInfo list</a>
		    </legend>
		    	<form class="form-horizontal" action="${contextPath}/front/businfo_add.action">
				  <div class="control-group">
				    <label class="control-label" for="inputBus_id">bus_id</label>
				    <div class="controls">
				      <input type="text" id="inputBus_id" name="busInfo.bus_id">
				    </div>
				  </div>
				  <div class="control-group">
				    <label class="control-label" for="inputBus_number">bus_number</label>
				    <div class="controls">
				      <input type="text" id="inputBus_number" name="busInfo.bus_number">
				    </div>
				  </div>
				  <div class="control-group">
				    <label class="control-label" for="inputBus_color">bus_color</label>
				    <div class="controls">
				      <input type="text" id="inputBus_color" name="busInfo.bus_color">
				    </div>
				  </div>
				  <div class="control-group">
				    <label class="control-label" for="inputSeat_count">seat_count</label>
				    <div class="controls">
				      <input type="text" id="inputSeat_count" name="busInfo.seat_count">
				    </div>
				  </div>
				  <div class="control-group">
				    <label class="control-label" for="inputBus_fullname">bus_fullname</label>
				    <div class="controls">
				      <input type="text" id="inputBus_fullname" name="busInfo.bus_fullname">
				    </div>
				  </div>
				  <div class="control-group">
				    <label class="control-label" for="inputBus_shortname">bus_shortname</label>
				    <div class="controls">
				      <input type="text" id="inputBus_shortname" name="busInfo.bus_shortname">
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
		window.self.location = "${contextPath}/front/businfo_index.action";
	});
	$("#index-btn").click(function(){
		window.self.location = "${contextPath}/front/businfo_index.action";
	});
	$("#add-btn").click(function(){
		$(".form-horizontal").submit();
	});
});
</script>
</body>
</html>