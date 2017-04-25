var examEvLayer = heredoc(function(){
/*	
 	<div class="form-group" id="examEv_${id}">
		<label for="manager" class="col-sm-2 control-label">证据</label>
		<div class="col-sm-1 div-inline">
			<select id="evName" class="select2 evName">
			</select>
		</div>
		<div class="col-sm-2 div-inline" style="margin-left:50px">
			
			<input type="checkbox" name="confirmed" id="confirmed" class="child" value="可信">可信
		</div>
		<label class="col-sm-2 control-label" style="width:80px" >备注</label>
		<div class="col-sm-2">
			<input type="text" class="form-control" id="comment">
		</div>
	</div>
	
	<script>
		
		$(document).ready(function(){
		
			$("#evName",$("#examEv_${id}")).val(examEvs[${id}].name);
			$("#confirmed",$("#examEv_${id}")).prop("checked",examEvs[${id}].confirmed);
			$("#comment",$("#examEv_${id}")).val(examEvs[${id}].comment);
			
			$("#evName",$("#examEv_${id}")).change(function(){
				examEvs[${id}].name = $("#evName",$("#examEv_${id}")).val();
			});
			$("#confirmed",$("#examEv_${id}")).change(function(){
				examEvs[${id}].confirmed = $("#confirmed",$("#examEv_${id}")).prop("checked");
			});
			$("#comment",$("#examEv_${id}")).change(function(){
				examEvs[${id}].comment = $("#comment",$("#examEv_${id}")).val();
			});
			
			initEvNameSelector(${id});
			$("#evName",$("#examEv_${id}")).click(function(){
				initEvNameSelector(${id});
			});

		
		});
	
	</script>
*/
});

function initEvNameSelector(evId){
	$("#evName",$("#examEv_" + evId)).find('option').remove();
	var evList = [];
	var exceptList = [];
	var allEvs = $(".allEv");
	var excludeEvs = $(".evName",$("#examEv_" + evId));
	for (var i = 0;i < allEvs.length;i ++){
		evList.push($(allEvs[i]).val());
	}
	for (var i = 0;i < excludeEvs.length;i ++){
		exceptList.push($(excludeEvs[i]).val());
	}
	
	for(var i = 0;i < evList.length;i ++){
		var content = evList[i];

		if(exceptList.indexOf(content) >= 0){
			continue;
		}
		$("#evName",$("#examEv_" + evId)).append(new Option(content,content));
	}
}