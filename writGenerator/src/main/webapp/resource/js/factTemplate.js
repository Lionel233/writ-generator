var factLayer = heredoc(function(){
    /*	
     <div class="factPage" id="fact_${id}">
     		<input type="text" class="form-control" id="fact" placeholder="查明事实">
     </div>
     <script>
     	
     	$("#fact",$("#fact_${id}")).change(function(){
     		fact[${id}].fact = $("#fact",$("#fact_${id}")).val();
     	});
     	
		$(document).ready(function(){
			$("#fact",$("#fact_${id}")).val("${fact}");	
		});
		
	</script>
     */
});
