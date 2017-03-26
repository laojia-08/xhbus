<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% 
   String contextPath = request.getContextPath(); 
   request.setAttribute("contextPath", contextPath);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Admin_user_info Add</title>
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
		    <legend>Admin_user_info Add    <a id="index-btn" href="#" class="button button-rounded button-flat-action" style="margin-left:300px;margin-bottom:10px;"><i class="icon-home"></i>admin_user_info list</a>
		    </legend>
		    	<form class="form-horizontal" action="${contextPath}/front/admin_user_info_add.action">
				  <div class="control-group">
				    <label class="control-label" for="inputUser_id">user_id</label>
				    <div class="controls">
				      <input type="text" id="inputUser_id" name="admin_user_info.user_id">
				    </div>
				  </div>
				  <div class="control-group">
				    <label class="control-label" for="inputUser_loginname">user_loginname</label>
				    <div class="controls">
				      <input type="text" id="inputUser_loginname" name="admin_user_info.user_loginname">
				    </div>
				  </div>
				  <div class="control-group">
				    <label class="control-label" for="inputUser_password">user_password</label>
				    <div class="controls">
				      <input type="text" id="inputUser_password" name="admin_user_info.user_password">
				    </div>
				  </div>
				  <div class="control-group">
				    <label class="control-label" for="inputUser_realname">user_realname</label>
				    <div class="controls">
				      <input type="text" id="inputUser_realname" name="admin_user_info.user_realname">
				    </div>
				  </div>
				  <div class="control-group">
				    <label class="control-label" for="inputUser_telephone">user_telephone</label>
				    <div class="controls">
				      <input type="text" id="inputUser_telephone" name="admin_user_info.user_telephone">
				    </div>
				  </div>
				  <div class="control-group">
				    <label class="control-label" for="inputUser_email">user_email</label>
				    <div class="controls">
				      <input type="text" id="inputUser_email" name="admin_user_info.user_email">
				    </div>
				  </div>
				  <div class="control-group">
				    <label class="control-label" for="inputUser_sex">user_sex</label>
				    <div class="controls">
				      <input type="text" id="inputUser_sex" name="admin_user_info.user_sex">
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
		window.self.location = "${contextPath}/front/admin_user_info_index.action";
	});
	$("#index-btn").click(function(){
		window.self.location = "${contextPath}/front/admin_user_info_index.action";
	});
	$("#add-btn").click(function(){
		$(".form-horizontal").submit();
	});
});
</script>
</body>
</html>