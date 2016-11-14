define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function(){
		this.callParent();
	};
	Model.prototype.btnBackClick=function(event){
		justep.Shell.showPage('main');
	};
	return Model;
});