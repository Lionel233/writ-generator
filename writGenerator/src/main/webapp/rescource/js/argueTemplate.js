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
     	$("#argueSelector",$("#argue_${id}")).val("${argueSelector}");
     	
     	$("#arguement",$("#argue_${id}")).change(function(){
     		argue[${id}].arguement = $("#arguement",$("#argue_${id}")).val();
     	});
	
		$(document).ready(function(){
			
			var exceptArgueList = [];
			var selectors = $(".argueSelector");
			for (var i = 0;i < selectors.length;i ++){
				exceptArgueList.push($(selectors[i]).val());
			}
			
			for(var i = 0;i < litigantList.length;i ++){
				var content = litigantList[i].dsrlb+" "+litigantList[i].xm;
				console.log(content);
				console.log("ball");
				if(exceptArgueList.indexOf(content) >= 0){
					continue;
				}
				$("#argueSelector",$("#argue_${id}")).append(new Option(content,content));
			}			
		});
		
	</script>
     </script>
     */
});

//objArray 为 movies数组，中间的id为Int型纯数字
function removeId(objArray,idValue){
    var i = 0;
    for(;i < objArray.length;i ++){
        if(objArray[i].id === idValue){
            objArray.splice(i,1);
            break;
        }
    }
    for(;i<objArray.length;i++){
        objArray[i].id = objArray[i].id - 1;
    }
    
}

$(document).ready(function(){
    $("body").on("blur","#name",function(){
    	var typeSelector = $("#type",$(this).parent().parent().parent().parent());
        $.ajax({
            url : "evTypeJudge",
            data : {
                "name" : $(this).val()
            },
            type : "POST",
            success : function(r) {
            	typeSelector.val(r);
            	
            	//手动调用onchange监听器
            	typeSelector.change();
            }
        });
    });

    //删除后需要将模板对象内对应的元素删除
    $("body").on("click",".removeButton",function(e){
        var id = $(this).parent().parent().parent().parent().parent().attr("id");
        id = parseInt(id.replace("movie_",""));
        var eviPageContainer = $(this).parent().parent().parent().parent().parent().parent();
        
        //从数组中删除
        removeId(movies,id);
        
        //清空并展示某个证据集合
        eviPageContainer.empty();
        showEvSeries(parseInt(eviPageContainer.attr("id").replace("eviPageContainer_","")));
    });
});
