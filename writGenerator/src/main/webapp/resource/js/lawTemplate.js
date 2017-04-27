var lawLayer = heredoc(function(){
    /*	
     <div class="lawPage" id="law_${id}" style="border: 1px dotted black; width: 800px; margin-left: 80px;">
		<div class="form-group">
			<div class="row">	
				<label for="manager" class="col-sm-10 control-label"> 
					<select id="lawSelector" class="select2">
					</select>
					<select id="clauseSelector" class="select2">
					</select>
				</label> 
			</div>
		</div>	
	</div>
     <script>
     	
     	$("#lawSelector",$("#law_${id}")).change(function(){
     		law[${id}].id = $("#lawSelector",$("#law_${id}")).val();
     			$.ajax({
					url : "lawNumber",
        			data: {
        				id: law[${id}].id,
        			},
					type : "POST",
					success : function(r) {
						for(var i=1;i<r+1;i++){
							$("#clauseSelector",$("#law_${id}")).append(new Option(i,i));
						}
					}
				});
     	});
	
	    $("#clauseSelector",$("#law_${id}")).change(function(){
     		law[${id}].clause = $("#clauseSelector",$("#law_${id}")).val();
     	});
     	
		$(document).ready(function(){
		
			for (var i = 0;i < lawList.length;i ++){
				$("#lawSelector",$("#law_${id}")).append(new Option(lawList[i].name,lawList[i].id));
			}



			$("#lawSelector",$("#law_${id}")).val(law[${id}].law);
			if($("#lawSelector",$("#law_${id}")).val() === null){
				$("#lawSelector option:first",$("#law_${id}")).attr('selected','selected');
			}

			$("#clauseSelector",$("#law_${id}")).val("${clauseSelector}");	
		});
		
	</script>
     */
});
