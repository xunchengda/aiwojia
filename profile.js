define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var configData = require("./js/loadConfig");
	var config={};
	var Model = function(){
		this.callParent();
		var configUrl = require.toUrl("./config/config.json");
		configData.loadServerDataFromFile(configUrl,config);
		this.user=JSON.parse(localStorage.getItem('user'));
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
	
	Model.prototype.orderDataCustomRefresh = function(event){
		var member_id=this.user.member_id;
		var orderObj=this.comp('orderData');
		var self=this;
		$.ajax({
					'url':"http://"+config.server+"/aiwojia_admin/index.php?m=Home&c=Interface&a=getUserWaitingOrdersCount",
					'type':'post',
					'async':false,
					'dataType':'json',
					'data':{
						
						'member_id':member_id
					},
					success:function(result){
						if(result.status==1){
							orderObj.clear();
							orderObj.newData({
								index:0,
								defaultValues:[
								{
									id:10,
									count_wait:result.data.count
								}
								]
							});
							orderObj.first();
							if(result.data.count>0){
								$('#'+self.getIDByXID('cartBadge')).html(result.data.count);
							}else{
								$('#'+self.getIDByXID('cartBadge')).html('');
							}
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
	

	
	Model.prototype.btnOrderWaitClick = function(event){
		justep.Shell.showPage('orderWait');
	};
	

	
	return Model;
});