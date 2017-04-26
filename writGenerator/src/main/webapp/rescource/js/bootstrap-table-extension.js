/**
 *  功能：
 *  	保存页面内bootstrapTable的参数，目前只保存：pageSize、pageNumber、columns三个参数
 *  使用：
 *  	1. 去掉data-toggle="table"，即使用js方式初始化bootstrapTable
 *  	2. 在document ready事件中调用BootstrapTableUtil.resetViewByCachedSetting方法，参数为tableId
 *  注意:
 *  	目前本插件只支持保存最后一个bootstrapTable的参数
 *  作者: 
 *  	fengfei
 */

var DEFAULT_SETTING = {
	id: '',
	pageNumber: 0,
	pageSize: 0,
	columns: []
};

var BootstrapTableUtil = function () {
};

BootstrapTableUtil.resetViewByCachedSetting = function (table) {
	var cachedSetting = Cookies.getJSON('bs-table.setting') || {};
	
	var options = {};
	if(cachedSetting !== {} && cachedSetting.id == $(table).attr('id')){
		var columns = [];
		var thList = $(table).find('thead th');
		$.each(thList, function(index, thItem){
			var column = {field: $(thItem).attr('data-field'), visible: false};
			if($.inArray(index, cachedSetting.columns) !== -1){
				column.visible = true;
			}
			columns.push(column);
		});
		
		options.pageNumber = cachedSetting.pageNumber;
		options.pageSize = cachedSetting.pageSize;
		options.columns = columns;
	}
	
	var events = {
			onColumnSwitch: function () {
		    	putToCookie(table);
		    },onPageChange: function () {
		    	putToCookie(table);
		    }
	    };
	
	options = $.extend(options, events);
	$(table).bootstrapTable(options);
};


function putToCookie(table) {
	var curSetting = getTableSetting(table);
    Cookies.set('bs-table.setting', curSetting, {path: window.location.pathname });
};

function getTableSetting(table){
	var setting = $.extend({}, DEFAULT_SETTING);
	setting.id = $(table).attr('id');
	
	var columns = $(table).bootstrapTable('getVisibleColumns');
    var visibleFieldIndexs = [];
    $.each(columns, function(index, item){
    	visibleFieldIndexs.push(item.fieldIndex);
    });
    setting.columns = visibleFieldIndexs;
    
    var options = $(table).bootstrapTable('getOptions');
    setting.pageNumber = options.pageNumber;
    setting.pageSize = options.pageSize;
    
    return setting;
}
