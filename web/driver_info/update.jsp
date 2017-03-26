<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% 
   String contextPath = request.getContextPath(); 
   request.setAttribute("contextPath", contextPath);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Driver_info Update</title>
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
		    <legend>Driver_info Update    <a id="index-btn" href="#" class="button button-rounded button-flat-action" style="margin-left:300px;margin-bottom:10px;"><i class="icon-home"></i>driver_info list</a>
		    </legend>
		    	<form class="form-horizontal" action="${contextPath}/front/driver_info_update.action">
				  <div class="control-group">
				    <label class="control-label" for="inputDirver_id">dirver_id</label>
				    <div class="controls">
				      <input type="text" id="inputDirver_id" name="driver_info.dirver_id" value="${driver_info.dirver_id}">
				    </div>
				  </div>
				  <div class="control-group">
				    <label class="control-label" for="inputDirver_name">dirver_name</label>
				    <div class="controls">
				      <input type="text" id="inputDirver_name" name="driver_info.dirver_name" value="${driver_info.dirver_name}">
				    </div>
				  </div>
				  <div class="control-group">
				    <label class="control-label" for="inputDirver_sex">dirver_sex</label>
				    <div class="controls">
				      <input type="text" id="inputDirver_sex" name="driver_info.dirver_sex" value="${driver_info.dirver_sex}">
				    </div>
				  </div>
				  <div class="control-group">
				    <label class="control-label" for="inputDirver_birthday">dirver_birthday</label>
				    <div class="controls">
				      <input type="text" id="inputDirver_birthday" name="driver_info.dirver_birthday" value="${driver_info.dirver_birthday}">
				    </div>
				  </div>
				  <div class="control-group">
				    <label class="control-label" for="inputDirver_age">dirver_age</label>
				    <div class="controls">
				      <input type="text" id="inputDirver_age" name="driver_info.dirver_age" value="${driver_info.dirver_age}">
				    </div>
				  </div>
				  <div class="control-group">
				    <label class="control-label" for="inputDirver_telephone">dirver_telephone</label>
				    <div class="controls">
				      <input type="text" id="inputDirver_telephone" name="driver_info.dirver_telephone" value="${driver_info.dirver_telephone}">
				    </div>
				  </div>
				  <div class="control-group">
				    <label class="control-label" for="inputDirver_weChat">dirver_weChat</label>
				    <div class="controls">
				      <input type="text" id="inputDirver_weChat" name="driver_info.dirver_weChat" value="${driver_info.dirver_weChat}">
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
		window.self.location = "${contextPath}/front/driver_info_index.action";
	});
	$("#index-btn").click(function(){
		window.self.location = "${contextPath}/front/driver_info_index.action";
	});
	$("#update-btn").click(function(){
		$(".form-horizontal").submit();
	});
});
</script>
</body>
</html>