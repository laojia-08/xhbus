<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% 
   String contextPath = request.getContextPath(); 
   request.setAttribute("contextPath", contextPath);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Attachment_info Update</title>
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
		    <legend>Attachment_info Update    <a id="index-btn" href="#" class="button button-rounded button-flat-action" style="margin-left:300px;margin-bottom:10px;"><i class="icon-home"></i>attachment_info list</a>
		    </legend>
		    	<form class="form-horizontal" action="${contextPath}/front/attachment_info_update.action">
				  <div class="control-group">
				    <label class="control-label" for="inputAttachment_id">attachment_id</label>
				    <div class="controls">
				      <input type="text" id="inputAttachment_id" name="attachment_info.attachment_id" value="${attachment_info.attachment_id}">
				    </div>
				  </div>
				  <div class="control-group">
				    <label class="control-label" for="inputAttachment_fullname">attachment_fullname</label>
				    <div class="controls">
				      <input type="text" id="inputAttachment_fullname" name="attachment_info.attachment_fullname" value="${attachment_info.attachment_fullname}">
				    </div>
				  </div>
				  <div class="control-group">
				    <label class="control-label" for="inputAttachment_address">attachment_address</label>
				    <div class="controls">
				      <input type="text" id="inputAttachment_address" name="attachment_info.attachment_address" value="${attachment_info.attachment_address}">
				    </div>
				  </div>
				  <div class="control-group">
				    <label class="control-label" for="inputAttachment_type">attachment_type</label>
				    <div class="controls">
				      <input type="text" id="inputAttachment_type" name="attachment_info.attachment_type" value="${attachment_info.attachment_type}">
				    </div>
				  </div>
				  <div class="control-group">
				    <label class="control-label" for="inputAttachment_moudle">attachment_moudle</label>
				    <div class="controls">
				      <input type="text" id="inputAttachment_moudle" name="attachment_info.attachment_moudle" value="${attachment_info.attachment_moudle}">
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
		window.self.location = "${contextPath}/front/attachment_info_index.action";
	});
	$("#index-btn").click(function(){
		window.self.location = "${contextPath}/front/attachment_info_index.action";
	});
	$("#update-btn").click(function(){
		$(".form-horizontal").submit();
	});
});
</script>
</body>
</html>