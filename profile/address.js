define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var configData = require("../js/loadConfig");
	var config={};
	var Model = function(){
		this.callParent();
		var configUrl = require.toUrl("../config/config.json");
		configData.loadServerDataFromFile(configUrl,config);
	};
	
	Model.prototype.toURL = function(imgUrl) {
		return imgUrl ? require.toUrl(imgUrl) : "";

	};
	Model.prototype.addressDataCustomRefresh = function(event){
		var dataObj=event.source;
		var user=JSON.parse(localStorage.getItem('user'));
		console.log(user.member_id);
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
	return Model;
});