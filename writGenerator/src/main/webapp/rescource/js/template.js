function heredoc(fn) {
    return fn.toString().replace("/\*","").replace("\*/","").split('\n').slice(1,-1).join('\n') + '\n'
}

var innerLayer = heredoc(function(){
    /*    <div class="eviPage" id="${id}" style="padding-left: 70px">
     <div class="form-group">
     <label for="manager" class="col-sm-2 control-label">名称</label>
     <div class="col-sm-4">
     <div class="input-group">
     <input type="text" class="form-control" id="eviName"
     placeholder="证据名称">
     <span class="input-group-btn">
     <button class="btn btn-default removeButton" type="button">X</button>
     </span>
     </div>


     </div>

     </div>
     <div class="form-group">
     <label for="manager" class="col-sm-2 control-label">明细</label>
     <div class="col-sm-4">
     <input type="text" class="form-control" id="detail"
     placeholder="证据明细">
     </div>
     </div>
     <div class="form-group">
     <label for="manager" class="col-sm-2 control-label">以证明</label>
     <div class="col-sm-4">
     <input type="text" class="form-control" id="prove" placeholder="证据目的">
     </div>
     </div>
     <div class="form-group">
     <label for="manager" class="col-sm-2 control-label">种类</label>
     <div class="col-sm-4">
     <select id="selectTeachPlan" class="select2">
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
     </div>*/
});

function removeId(objArray,idValue){
    var i = 0;
    for(;i < objArray.length;i ++){
        if(objArray[i].id === idValue){
            objArray.splice(i,i+1);
        }
    }
    for(;i<objArray.length;i++){
        objArray[i].id = objArray[i].id - 1;
    }
}

$(document).ready(function(){
    $("#eviName").keydown(function(event) {
        if (event.which == "13") {
            $.ajax({
                url : "evTypeJudge",
                data : {
                    "name" : $("#eviName").val()
                },
                type : "POST",
                success : function(r) {
                    $("#selectTeachPlan").val(r);
                }
            });
        }
    });
    
    $("body").on("blur","#eviName",function(){
        $.ajax({
            url : "evTypeJudge",
            data : {
                "name" : $(this).val()
            },
            type : "POST",
            success : function(r) {
                $("#selectTeachPlan",$(this).parent().parent().parent().parent()).val(r);
            }
        });
    });

//    $("#eviName").blur(function() {
//        $.ajax({
//            url : "evTypeJudge",
//            data : {
//                "name" : $("#eviName").val()
//            },
//            type : "POST",
//            success : function(r) {
//                $("#selectTeachPlan").val(r);
//            }
//        });
//    });

    //删除后需要将模板对象内对应的元素删除
    $("body").on("click",".removeButton",function(e){
        var id = $(this).parent().parent().parent().parent().parent().attr("id");
        id = parseInt(id);
        $(this).parent().parent().parent().parent().parent().remove();
        removeId(movies,id);
    });
});
