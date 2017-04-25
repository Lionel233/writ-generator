var argueLayer = heredoc(function(){
    /*	
     <div class="arguePage" id="argue_${id}" style="border: 1px dotted black; width: 800px; margin-left: 80px;">
		<div class="form-group">
			<div class="col-sm-3">
				<select id="argueSelector" class="select2 argueSelector">
				</select>称
			</div>
			<div class="col-sm-6">
				<input type="text" class="form-control" id="arguement">
			</div>
		</div>	
	</div>
     <script>
     	
     	$("#arguement",$("#argue_${id}")).change(function(){
     		argue[${id}].arguement = $("#arguement",$("#argue_${id}")).val();
     	});
	
	    $("#argueSelector",$("#argue_${id}")).change(function(){
     		argue[${id}].argueSelector = $("#argueSelector",$("#argue_${id}")).val();
     	});
     	
		$(document).ready(function(){
			
			var exceptArgueList = [];
			var selectors = $(".argueSelector");
			for (var i = 0;i < selectors.length;i ++){
				exceptArgueList.push($(selectors[i]).val());
			}
			
			for(var i = 0;i < litigantList.length;i ++){
				var content = litigantList[i].dsrlb+" "+litigantList[i].xm;
				if(exceptArgueList.indexOf(content) >= 0){
					continue;
				}
				$("#argueSelector",$("#argue_${id}")).append(new Option(content,content));
			}		
			$("#argueSelector option:first",$("#argue_${id}")).attr('selected','selected');

			$("#arguement",$("#argue_${id}")).val("${arguement}");	
		});
		
	</script>
     </script>
     */
});
