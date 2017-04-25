var examLayer = heredoc(function(){
/*	
	<div class="form-group" id = "exam_${id}"
		style="border: 1px dotted black; width: 800px; margin-left: 80px">
			<div class="row">
				
				<label for="manager" class="col-sm-7 control-label"> 
					<select id="selector1" class="select2">
						<option value="法院">法院</option>
					</select>对 
					
					<select id="selector2" class="select2">
					
					</select>提供证据的质证
				</label> <input type="checkbox" name="confirmAll" id="confirmAll" value="予以确认">予以确认
				<div class="col-sm-2">
					<a id="addExamEvBtn" class="button plus btn-md btn-green ajax">+</a>
				</div>
			
			</div>

			
			
			<div id="examEvContainer_${id}" class="row">
			</div>
	</div>
	
	<script>
		$(document).ready(function(){
		

			for(var i = 0;i < litigantList.length;i ++){
				var content = litigantList[i].dsrlb+" "+litigantList[i].xm;

				$("#selector1",$("#exam_${id}")).append(new Option(content,content));
				$("#selector2",$("#exam_${id}")).append(new Option(content,content));
			}
			$('.confirmAll').prop('checked', true);
			
			$("#selector1",$("#exam_${id}")).change(function(){
				exams[${id}].name1 = $("#selector1",$("#exam_${id}")).val();
			});
			$("#selector2",$("#exam_${id}")).change(function(){
				exams[${id}].name2 = $("#selector2",$("#exam_${id}")).val();
			});
			$("#confirmAll",$("#exam_${id}")).change(function(){
				exams[${id}].confirmAll = $("#selector2",$("#exam_${id}")).prop("checked");
				var childs = $(".child",$("#exam_${id}"));
				for(var i = 0;i < childs.length;i ++){
					$(childs[i]).prop("checked",$("#confirmAll",$("#exam_${id}")).prop("checked"));
					$(childs[i]).change();
				}
			});

			$("#addExamEvBtn",$("#exam_${id}")).click(function(){
				addEvToExam(${id});
			});
		});
	</script>
	*/
});
	
	//参数为纯int
	function showExam(examId){
		var realExamEvs = [];
		for(var i = 0;i < examEvs.length;i ++){
			if(examEvs[i].exam_id === examId){
				realExamEvs.push(examEvs[i]);
			}
		}
		$.tmpl("examEvLayer", realExamEvs).appendTo("#examEvContainer_" + examId);
	}
	
	function addEvToExam(examId){
		examEvs.push({
			id:examEvs.length,
			name:"",
			comment:"",
			exam_id:examId,
			confirmed:true
		});
		$("#examEvContainer_" + examId).empty();
		
		showExam(parseInt(examId));
	}