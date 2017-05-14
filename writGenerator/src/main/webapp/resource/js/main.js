var movies = [ {
	id : 0,
	name : "",
	detail : "",
	prove : "",
	type : "书证",
	movieSeries_id : 0
} ];

var movieSeries = [ {
	id : 0,
	selectorValue : ""
} ];

var exams = [ {
	id : 0,
	name1 : "",
	name2 : "",
	confirmAll : false
} ];

var examEvs = [ {
	id : 0,
	name : "",
	comment : "",
	exam_id : 0,
	confirmed : true
} ];

var argue = [ {
	id : 0,
	argueSelector : "",
	argument : ""
} ]

var fact = [ {
	id : 0,
	fact : ""
} ]

$(document).ready(function() {
	$.template("innerlayer", innerLayer);
	$.template("outerLayer", outerLayer);
	$.tmpl("outerLayer", movieSeries).appendTo("#outerContainer");
	$.tmpl("innerlayer", movies).appendTo("#eviPageContainer_0");

	$.template("examLayer", examLayer);
	$.template("examEvLayer", examEvLayer);
	$.tmpl("examLayer", exams).appendTo("#examContainer");
	$.tmpl("examEvLayer", examEvs).appendTo("#examEvContainer_0");

	$("#addEviSub").click(function() {
		movieSeries.push({
			id : movieSeries.length,
			selectorValue : ""
		});
		$("#outerContainer").empty();
		$.tmpl("outerLayer", movieSeries).appendTo("#outerContainer");
		for (var i = 0; i < movieSeries.length; i++) {
			showEvSeries(i);
		}
	});

	$("#addExamSub").click(function() {
		exams.push({
			id : movieSeries.length,
			selectorValue : ""
		});
		$("#examContainer").empty();
		$.tmpl("examLayer", exams).appendTo("#examContainer");
		for (var i = 0; i < exams.length; i++) {
			showExam(i);
		}
	});

	$.template("argueLayer", argueLayer);
	$.tmpl("argueLayer", argue).appendTo("#argueContainer");

	$("#addArgue").click(function() {
		argue.push({
			id : argue.length,
			argueSelector : "",
			argument : ""
		});
		$("#argueContainer").empty();
		$.tmpl("argueLayer", argue).appendTo("#argueContainer");

	})

	$.template("factLayer", factLayer);
	$.tmpl("factLayer", fact).appendTo("factContainer");
	$("#addFact").click(function() {
		fact.push({
			id : fact.length,
			fact : ""
		});
		$("#factContainer").empty();
		$.tmpl("factLayer", fact).appendTo("#factContainer");
	})
	
	$.template("lawLayer", lawLayer);
	$.tmpl("lawLayer", law).appendTo("#lawContainer");
	$("#addLaw").click(function() {
		law.push({
			id : law.length,
			law : "",
			clause:""
		});
		$("#lawContainer").empty();
		$.tmpl("lawLayer", law).appendTo("#lawContainer");
	});

});

// 保存
function submit() {
    $("#centerForm").attr("action", "save");
    $.ajax({
        url: $("#centerForm").attr("action"),
        data: {
        	ajxh: ajxh,
            evs: JSON.stringify(movies),
            evSeries: JSON.stringify(movieSeries),
            exams: JSON.stringify(exams),
            examEvs: JSON.stringify(examEvs),
            argues: JSON.stringify(argue),
            facts: JSON.stringify(fact)
        },
        type : "POST",
        success : function(r) {
        if (r == 0) {
            alert("保存成功，点击确定返回中心列表", function() {
                location.href = "CenterList";
            });
        } else {
            alert("更新失败，点击确定重新载入编辑页面");
        }
    }
});
}

// 预览
function preview() {
	$.ajax({
		url : "pre",
        data: {
        	ajxh: ajxh,
            evs: JSON.stringify(movies),
            evSeries: JSON.stringify(movieSeries),
            exams: JSON.stringify(exams),
            examEvs: JSON.stringify(examEvs),
            argues: JSON.stringify(argue),
            facts: JSON.stringify(fact)
        },
		type : "POST",
		success : function(r) {
			$("#centerForm").attr("action", "preview");
			$("#centerForm").submit();
		}
	});
}