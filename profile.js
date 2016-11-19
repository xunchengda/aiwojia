define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	
	var Model = function(){
		this.callParent();
	};

	//注销
	Model.prototype.btnLogoutClick=function(event){
		localStorage.removeItem('user');
		justep.Shell.showPage('login');
	};
	
	return Model;
});