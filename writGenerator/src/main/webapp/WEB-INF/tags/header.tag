<%@ tag language="java" pageEncoding="UTF-8"%>
<%@attribute name="currentModule" required="false" type="String"%>

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
	<div class="container-fluid">
		<div class="navbar-header">
			<a class="navbar-brand" href="#">文书生成工具</a>
		</div>
		<div>
			<ul class="nav navbar-nav">
				<li class="active"><a href="#">iOS</a></li>
				<li><a href="#">SVN</a></li>
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown"> Java <b class="caret"></b>
				</a>
					<ul class="dropdown-menu">
						<li><a href="#">jmeter</a></li>
						<li><a href="#">EJB</a></li>
						<li><a href="#">Jasper Report</a></li>
						<li class="divider"></li>
						<li><a href="#">分离的链接</a></li>
						<li class="divider"></li>
						<li><a href="#">另一个分离的链接</a></li>
					</ul></li>
			</ul>
		</div>
	</div>
</nav>