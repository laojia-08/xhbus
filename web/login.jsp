<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html lang="en"><!--<![endif]-->
<head>
    <meta charset="utf-8">
    <title>香河社区班车后台登录</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/bootstrap-responsive.min.css" rel="stylesheet">
    <link href="css/site.css" rel="stylesheet">
    <!--[if lt IE 9]><script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script><![endif]-->
</head>
<body>
<div id="login-page" class="container">
    <h1>香河社区班车后台</h1>
    <form id="login-form" class="well" action="index.jsp">
        <input type="text" class="span2" placeholder="Email" /><br />
        <input type="password" class="span2" placeholder="Password" /><br />
        <label class="checkbox"> <input type="checkbox" />记住我</label>
        <button type="submit" class="btn btn-primary">登录</button>
        <button type="submit" class="btn">忘记密码</button>
    </form>
</div>
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/site.js"></script>
</body>
</html>