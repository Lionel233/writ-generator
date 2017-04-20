function heredoc(fn) {
    return fn.toString().replace("/\*","").replace("\*/","").split('\n').slice(1,-1).join('\n') + '\n'
}

var innerLayer = heredoc(function(){
    /*    <div class="eviPage" id="${id}" style="width:80%;padding-top:10px;margin-left: 70px;margin-bottom:10px;border: 1px dotted black;">
     <div class="form-group">
     <label for="manager" class="col-sm-2 control-label">名称</label>
     <div class="col-sm-4">
     <div class="input-group">
     <input type="text" class="form-control" id="name" value="${name}"
     placeholder="证据名称">
     <span class="input-group-btn">
     <button class="btn btn-default removeButton" type="button" style="color:red">X</button>
     </span>
     </div>


     </div>

     </div>
     <div class="form-group">
     <label for="manager" class="col-sm-2 control-label">明细</label>
     <div class="col-sm-8">
     <input type="text" class="form-control" id="detail" value="${detail}"
     placeholder="证据明细">
     </div>
     </div>
     <div class="form-group">
     <label for="manager" class="col-sm-2 control-label">以证明</label>
     <div class="col-sm-8">
     <input type="text" class="form-control" id="prove" value="${prove}" placeholder="证据目的">
     </div>
     </div>
     <div class="form-group">
     <label for="manager" class="col-sm-2 control-label">种类</label>
     <div class="col-sm-4">
     <select id="type" class="select2">
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
	
     </div>
     </div>
     <script>
     	$("#type",$("#${id}")).val("${type}");
     	
     	$("#name",$("#${id}")).change(function(){
     		movies[${id}].name = $("#name",$("#${id}")).val();
     	});
     	
     	$("#detail",$("#${id}")).change(function(){
     		movies[${id}].detail = $("#detail",$("#${id}")).val();
     	});
     	
     	$("#prove",$("#${id}")).change(function(){
     		movies[${id}].prove = $("#prove",$("#${id}")).val();
     	});
     	
     	$("#type",$("#${id}")).change(function(){
     		movies[${id}].type = $("#type",$("#${id}")).val();
     	});
     </script>
     */
});

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
    	var typeSelector = $("#type",$(".eviPage")[parseInt($(this).parent().parent().parent().parent().attr("id"))]);
        $.ajax({
            url : "evTypeJudge",
            data : {
                "name" : $(this).val()
            },
            type : "POST",
            success : function(r) {
            	typeSelector.val(r);
            }
        });
    });

//    $("#name").blur(function() {
//        $.ajax({
//            url : "evTypeJudge",
//            data : {
//                "name" : $("#name").val()
//            },
//            type : "POST",
//            success : function(r) {
//                $("#type").val(r);
//            }
//        });
//    });

    //删除后需要将模板对象内对应的元素删除
    $("body").on("click",".removeButton",function(e){
        var id = $(this).parent().parent().parent().parent().parent().attr("id");
        id = parseInt(id);
        $(this).parent().parent().parent().parent().parent().remove();
        removeId(movies,id);
        $("#eviPageContainer").empty();
		$.tmpl( "innerlayer", movies ).appendTo( "#eviPageContainer" );
    });
});
