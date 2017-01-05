define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var configData = require("./js/loadConfig");
	var config={};
	var Model = function(){
		this.callParent();
		var configUrl = require.toUrl("./config/config.json");
		configData.loadServerDataFromFile(configUrl,config);
		
		
		
	};

	//注销
	Model.prototype.btnLogoutClick=function(event){
		localStorage.removeItem('member_id');
		localStorage.removeItem('member_name');
		localStorage.removeItem('member_mobile');
		justep.Shell.closePage();
		//this.getParent().comp('contents').to('homeContent');
	};
	
	Model.prototype.showAddress = function(event){
		justep.Shell.showPage(require.toUrl('./profile/address.w'));
	};
	
	Model.prototype.userInfoClick = function(event){
		justep.Shell.showPage(require.toUrl('./profile/editUser.w'));
	};
	
	Model.prototype.modelLoad = function(event){
		
	};
	
	Model.prototype.userDataCustomRefresh = function(event){
		var member_id=localStorage.getItem('member_id');
		if(member_id===null || member_id===undefined){
			justep.Shell.showPage(require.toUrl('./login.w'));
			return;
		}else{
			
			var member_name=localStorage.getItem('member_name');
			var member_mobile=localStorage.getItem("member_mobile");
			this.comp('userData').clear();
			this.comp('userData').loadData([{
					member_id:member_id,
					member_name:member_name,
					member_mobile:member_mobile
				}]
			);
			this.comp('userData').first();
			var row=this.comp('userData').getCurrentRow();
			console.log(row.val('mobile'));
		}
		
	};
	
	Model.prototype.orderDataCustomRefresh = function(event){
		var member_id=localStorage.getItem('member_id');
		
		if(member_id===null || member_id===undefined){
			justep.Shell.showPage(require.toUrl('./login.w'));
			return;
		}else{
		
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
		}
	};
	

	
	Model.prototype.btnOrderWaitClick = function(event){
		justep.Shell.showPage(require.toUrl('./service/orderWait.w'));
	};
	

	
	Model.prototype.modelActive = function(event){
		this.comp("orderData").refreshData({confirm:false});
	};
	

	
	Model.prototype.showCusService = function(event){
		justep.Shell.showPage(require.toUrl('./cusService.w'));
	};
	

	
	Model.prototype.colseBtnClick = function(event){
		justep.Shell.closePage();
	};
	

	
	return Model;
});