var outerLayer = heredoc(function(){
/*	<div class="form-group evi" id = "movieSeries_${id}"
		style="border: 1px dotted black; width: 800px; margin-left: 80px;">
		<div class="form-group">
			<label for="manager" class="col-sm-4 control-label"> 
			<select id="evSelector" class="select2">

			</select>
			提供证据
			</label>
			<div class="col-sm-2">
				<a id="addNewEvBtn" class="button plus btn-md btn-green ajax">+</a>
			</div>
		</div>
		<div id="eviPageContainer_${id}"></div>
	</div>
	<script>
	
		$(document).ready(function(){
			$("#addNewEvBtn",$("#movieSeries_${id}")).click(function(){
				addOneEv("${id}");
			});
			
			for(var i = 0;i < litigantList.length;i ++){
				var wsDsrb = litigantList[i].dsrlb;
				var xm = litigantList[i].xm;
				$("#evSelector",$("#movieSeries_${id}")).append(new Option(wsDsrb + " " + xm,wsDsrb + " " + xm));
			}
			
		});
		

	
	</script>
	
	*/
});

//参数为纯int
function showEvSeries(movieSeriesId){
	var realMovies = [];
	for(var i = 0;i < movies.length;i ++){
		if(movies[i].movieSeries_id === movieSeriesId){
			realMovies.push(movies[i]);
		}
	}
	$.tmpl("innerlayer", realMovies).appendTo("#eviPageContainer_" + movieSeriesId);
}

//向小证据块中添加一条证据   参数为纯int
function addOneEv(movieSeriesId){
	movies.push({
		id : movies.length,
		name : "",
		detail : "",
		prove : "",
		type : "书证",
		movieSeries_id : parseInt(movieSeriesId)
	});
	$("#eviPageContainer_" + movieSeriesId).empty();
	
	showEvSeries(parseInt(movieSeriesId));
}