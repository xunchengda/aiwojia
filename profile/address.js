define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var configData = require("../js/loadConfig");
	var config={};
	var Model = function(){
		this.callParent();
		var configUrl = require.toUrl("../config/config.json");
		configData.loadServerDataFromFile(configUrl,config);
		this.user=JSON.parse(localStorage.getItem('user'));
		this.del_add_id=0;
	};
	
	Model.prototype.toURL = function(imgUrl) {
		return imgUrl ? require.toUrl(imgUrl) : "";

	};
	Model.prototype.addressDataCustomRefresh = function(event){
		var dataObj=event.source;
		var user=JSON.parse(localStorage.getItem('user'));
		 $.ajax({
					'url':"http://"+config.server+"/aiwojia_admin/index.php?m=Home&c=Interface&a=getMemberAllAddress",
					'type':'post',
					'async':false,
					'dataType':'json',
					'data':{
						'member_id':user.member_id
					},
					success:function(result){
						if(result.status==1){
							dataObj.clear();
							dataObj.loadData(result.data);
						}
						if(result.status==-1){
							justep.Util.hint(result.message, {
								type:'warning',
								delay:'3000'
							});
						}
					},
					error:function(result){
						justep.Util.hint('网络错误', {
							type:'warning',
							delay:'3000'
						});
					}
			});
		       
	};
	Model.prototype.addBtnClick = function(event){
		justep.Shell.showPage('addAddress');
	};
	Model.prototype.onPageActive = function(event){
		this.comp('addressData').refreshData({'confirm':false});
	};
	Model.prototype.removeBtnClick = function(event){
		var row=event.bindingContext.$object;
		console.log(row.val('address_id'));
		this.del_add_id=row.val('address_id');
		this.comp('removeMD').show();
	};
	Model.prototype.removeOkClick = function(event){
		var member_id=this.user.member_id;
		var address_id=this.del_add_id;
		console.log(this.del_add_id);
		var self=this;
		$.ajax({
					'url':"http://"+config.server+"/aiwojia_admin/index.php?m=Home&c=Interface&a=removeAddress",
					'type':'post',
					'async':false,
					'dataType':'json',
					'data':{
						'member_id':member_id,
						'address_id':address_id
					},
					success:function(result){
						if(result.status==1){
							self.comp('addressData').refreshData({'confirm':false});
						}
						if(result.status==-1){
							justep.Util.hint(result.message, {
								type:'warning',
								delay:'3000'
							});
						}
					},
					error:function(result){
						justep.Util.hint('网络错误', {
							type:'warning',
							delay:'3000'
						});
					}
			});
	};
	Model.prototype.setDefaultBtnClick = function(event){
		//debugger;
		
		var row = event.bindingContext.$object;
		console.log(row.val('true_name'));
			this.comp('addressData').setValue('is_default',0);
			
			var d_row=this.comp('addressData').find(['address_id'],[row.val('address_id')]);
			this.comp('addressData').setValue('is_default',1,d_row[0]);

		
		console.log(this.comp('addressData').find(['is_default'],[1]).length);
	};
	return Model;
});