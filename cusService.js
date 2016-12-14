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
	Model.prototype.modelLoad=function(event){
		var id=this.getIDByXID('htmlCusContent');
		console.log("http://"+config.server+"/aiwojia_admin/index.php?m=Home&c=Interface&a=getArticle");
		$.ajax({
					'url':"http://"+config.server+"/aiwojia_admin/index.php?m=Home&c=Interface&a=getArticle",
					'type':'post',
					'async':false,
					'dataType':'json',
					'data':{
						'type':'cusService'
					},
					success:function(result){
						
						console.log(result.status);
						if(result.status=='1'){
							
							
							$('#'+id).html(result.html);
						}
						if(result.status==-1){
							$('#'+id).html("<em>加载页面出错(-1)</em>");
						}
					},
					error:function(result){
						console.log(result);
						$('#'+id).html("<em>加载页面出错(-2)</em>");
					}
			});
	};
	
	
	Model.prototype.backBtnClick = function(event){
		justep.Shell.closePage();
	};
	
	
	return Model;
});