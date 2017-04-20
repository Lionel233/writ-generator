var outerLayer = heredoc(function(){
/*	<div class="form-group evi" id = "movieSeries_${id}"
		style="border: 1px dotted black; width: 800px; margin-left: 60px; float: left">
		<div class="form-group">
			<label for="manager" class="col-sm-4 control-label"> <select
				id="" class="select2">
			</select>提供证据
			</label>
			<div class="col-sm-2">
				<a id="addNewEvBtn" class="button btn-md btn-green ajax">+</a>
			</div>
		</div>
		<div id="eviPageContainer_${id}"></div>
	</div>
	<script>
		
		$("#addNewEvBtn",$("#movieSeries_${id}")).click(function(){
			addOneEv("${id}");
		});
	
	</script>
	
	*/
});

function showEvSeries(movieSeriesId){
	var realMovies = [];
	for(var i = 0;i < movies.length;i ++){
		if(movies[i].movieSeries_id === movieSeriesId){
			realMovies.push(movies[i]);
		}
	}
	$.tmpl("innerlayer", realMovies).appendTo("#eviPageContainer_" + movieSeriesId);
}

//向innerLayer中添加一个Ev
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