<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags"%>
<jsp:include page="util.jsp" flush="true" />

<!-- MetisMenu CSS -->
<link rel="stylesheet"
	href="<c:url value="/rescource/vendor/metisMenu/metisMenu.min.css" />" />

<!-- Custom CSS -->
<link rel="stylesheet"
	href="<c:url value="/rescource/sb_dist/css/sb-admin-2.css" />" />

<!-- Custom Fonts -->
<link rel="stylesheet"
	href="<c:url value="/rescource/vendor/font-awesome/css/font-awesome.min.css" />" />

<body>
	<t:header currentModule="登录" />
	<div class="container">
		<div class="row">
			<div class="col-md-4 col-md-offset-4">
				<div class="login-panel panel panel-default">
					<div class="panel-heading">
						<h3 class="panel-title">请登录</h3>
					</div>
					<div class="panel-body">
						<form id="loginForm" role="form" action="/writGenerator/api/login" method="POST">
							<fieldset>
								<div class="form-group">
									<input class="form-control" placeholder="账号" name="username"
										autofocus>
								</div>
								<div class="form-group">
									<input class="form-control" placeholder="密码" name="password"
										type="password" value="">
								</div>
								<c:if test="${!empty error}">
									<div class="form-group"><span style="color:red">用户名或密码错误</span></div>
								</c:if>
								<div class="checkbox">
									<label> <input name="remember" type="checkbox"
										value="Remember Me">记住我
									</label>
								</div>
								<!-- Change this to a button or input when using this as a form -->
								<a href="javascript:login()"
									class="btn btn-lg btn-success btn-block" style="color: white">登录</a>
							</fieldset>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Metis Menu Plugin JavaScript -->
	<script type="text/javascript"
		src="<c:url value="/rescource/vendor/metisMenu/metisMenu.min.js" />"></script>

	<!-- Custom Theme JavaScript -->
	<script type="text/javascript"
		src="<c:url value="/rescource/sb_dist/js/sb-admin-2.js" />"></script>

</body>

<script>
	function login() {
		$("#loginForm").submit();
	}
</script>

