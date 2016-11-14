define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var Model = function(){
		this.callParent();
	};
	Model.prototype.modelLoad=function(event){
		console.log('on load');
		var id=this.getIDByXID('htmlContent');
		$.ajax({
					'url':"http://localhost:9090/aiwojia_admin/index.php?m=Home&c=Interface&a=getArticle",
					'type':'post',
					'async':false,
					'dataType':'json',
					'data':{
						'type':'water'
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
	Model.prototype.getContent=function(event){
		
	}
	return Model;
});