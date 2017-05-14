<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<jsp:include page="util.jsp" flush="true" />
<%@ taglib prefix="t" tagdir="/WEB-INF/tags"%>

<style type="text/css">
#code {
	float: left;
	height: 40px;
	width: 400px;
}

#searchBtn2 {
	height: 40px;
	line-height: 30px;
	font-size: 16px;
	padding: 0 15px;
	margin: 0 10px;
}
</style>
<body>
	<t:header/>
	<form id="searchForm" action="codeRecord" method="post" autocomplete="off"
		style="position: relative; margin: 230px;">
		<input type="input" name="code" id="code"
			class="form-control center-block" placeholder="输入案号">
		<button type="button" id="searchBtn2" class="btn btn-primary">
			<span class="glyphicon glyphicon-search"></span>&nbsp;&nbsp;搜索
		</button>
		<ul class="results" >
			 <li><a href="index.html">Search Result #1<br /><span>Description...</span></a></li>
			 <li><a href="index.html">Search Result #2<br /><span>Description...</span></a></li>
	 		<li><a href="index.html">Search Result #3<br /><span>Description...</span></a></li>
         	<li><a href="index.html">Search Result #4</a></li>
		 </ul>
	</form>
</body>

<script type="text/javascript">
	function search() {
		$.ajax({
			url : "/writGenerator/api/searchCode",
			data : {
				"code" : $("#code").val()
			},
			type : "POST",
			success : function(r) {
				if (r) {
					$("#searchForm").submit();
				} else {
					alert("更新失败，点击确定重新载入编辑页面");
				}
			}
		});
	}
	
	function autoComplete(){
		$.ajax({
			url:"/writGenerator/api/searchAutoComplete",
			data:{
				keyword:$("#code").val()
			},
			type:"POST",
			success:function(data){
				console.log(data);
				$(".results").empty();
				var max = 8;
				if(data.length < 8){
					max = data.length;
				}
				for(var i = 0;i < max;i ++){
					$('.results').append(
						$('<li>').append(
								data[i].ah
						)
					);
				}
				
			}
		});
	}
	
	$(document).ready(function(){
		$("#searchBtn2").click(function() {
			search();
		});
		
		$(".results").hide();
		
		$("#code").blur(function(){
			$(".results").hide();
		});
		
		$("#code").focus(function(){
			$(".results").show();
		});
		
		$("#code").change(function(){
			autoComplete();
		});

		$("#code").keydown(function(event) {
			if (event.which == "13") {
				search();
				return false;
			}
		});
	});
	

	
	
</script>
