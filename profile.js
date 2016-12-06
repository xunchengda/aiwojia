define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	
	var Model = function(){
		this.callParent();
		
	};

	//注销
	Model.prototype.btnLogoutClick=function(event){
		localStorage.removeItem('user');
		//justep.Shell.closePage();
		this.getParent().comp('contents').to('homeContent');
	};
	
	Model.prototype.showAddress = function(event){
		justep.Shell.showPage('address');
	};
	
	Model.prototype.userInfoClick = function(event){
		justep.Shell.showPage('editUser');
	};
	
	Model.prototype.modelLoad = function(event){
		
	};
	
	Model.prototype.userDataCustomRefresh = function(event){
		var user=JSON.parse(localStorage.getItem('user'));
		console.log(user);
		this.comp('userData').clear();
		this.comp('userData').loadData([{
				member_id:user.member_id,
				member_name:user.name,
				member_mobile:user.mobile
			}]
		);
		this.comp('userData').first();
		var row=this.comp('userData').getCurrentRow();
		console.log(row.val('mobile'));
	};
	
	return Model;
});