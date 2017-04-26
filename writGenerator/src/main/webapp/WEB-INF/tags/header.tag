<%@ tag language="java" pageEncoding="UTF-8"%>
<%@attribute name="currentModule" required="false" type="String"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<style>
.navbar-nav>li>a {
	padding-top: 10px;
	padding-bottom: 10px;
}

.navbar-brand {
	height: 40px;
	padding-top: 10px;
}

.navbar {
	min-height: 40px;
}

.navbar-toggle {
	margin-top: 4px;
	margin-bottom: 4px;
}
</style>
<nav class="navbar navbar-default" role="navigation">
	<div class="navbar-header">
		<a class="navbar-brand" href="#">文书生成工具</a>
	</div>

	<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">

		<ul class="nav navbar-nav navbar-body">
			<c:if test="${not empty currentModule}">
				<div>
					<ul class="nav navbar-nav">
						<li class="active"><a href="#"> ${currentModule}</a></li>
					</ul>
				</div>
			</c:if>
		</ul>

		<ul class="nav navbar-nav navbar-right">
			<li class="dropdown" id="userInfo"><a href="#"
				class="dropdown-toggle" data-toggle="dropdown" role="button"
				aria-haspopup="true" aria-expanded="false"> <span
					class="glyphicon glyphicon glyphicon-user" aria-hidden="true"></span>
					<span id="aboutMe">关于我</span> <span class="notifi-count"></span> <span
					class="caret"></span></a>
				<ul class="dropdown-menu">
					<li><a href="mywrits">我的文书</a></li>
					<li><a href="accountManage">用户管理</a></li>
					<c:choose>
						<c:when test="${model.userRole eq 1}">
							<li><a href="＃">个人信息</a></li>
						</c:when>
						<c:otherwise>
							<li><a href="＃">个人信息</a></li>
						</c:otherwise>
					</c:choose>
					<li><a href="＃">使用帮助</a></li>
					<li class="red"><a href="＃">注销</a></li>
				</ul></li>
		</ul>
	</div>
</nav>