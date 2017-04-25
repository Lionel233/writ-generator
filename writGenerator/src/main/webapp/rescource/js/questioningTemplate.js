function heredoc(fn) {
    return fn.toString().replace("/\*","").replace("\*/","").split('\n').slice(1,-1).join('\n') + '\n'
}

var innerLayer = heredoc(function(){
    /*    <div class="questioningPage" id="questioning_${id}" style="width:80%;padding-top:10px;margin-left: 70px;margin-bottom:10px;border: 1px dotted black;">
	<div class="form-group">
		<label for="manager" class="col-sm-2 control-label">证据</label>
		<div class="col-sm-1 div-inline">
			<select id="ev" class="select2">
				<option value="书证">书证</option>
				<option value="物证">物证</option>
				<option value="证人证言">证人证言</option>
				<option value="视听资料">视听资料</option>
				<option value="当事人陈述">当事人陈述</option>
				<option value="鉴定结论">鉴定结论</option>
				<option value="笔录">笔录</option>
				<option value="其它">其它</option>
			</select>
		</div>
		<div id="dependable" class="col-sm-2 div-inline" style="margin-left:50px">
			可信 <input type="radio" checked="checked" name="questioning"
				value="yes" /> 不可信<input type="radio" name="questioning"
				value="no" />
		</div>
		<label class="col-sm-2 control-label" style="width:80px">备注</label>
		<div class="col-sm-2">
			<input id="comment" type="text" class="form-control">
		</div>
	</div>
     </div>
     <script>
     	$("#comment",$("#movie_${id}")).val("${comment}");
     	
     	$("#name",$("#movie_${id}")).change(function(){
     		movies[${id}].name = $("#name",$("#movie_${id}")).val();
     	});
     	
     	$("#detail",$("#movie_${id}")).change(function(){
     		movies[${id}].detail = $("#detail",$("#movie_${id}")).val();
     	});
     	
     	$("#prove",$("#movie_${id}")).change(function(){
     		movies[${id}].prove = $("#prove",$("#movie_${id}")).val();
     	});
     	
     	$("#comment",$("#questioning_${id}")).change(function(){
     		movies[${id}].type = $("#type",$("#movie_${id}")).val();
     	});
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
