define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	
	var Model = function(){
		this.callParent();
		this.htmlDetail = justep.Bind.observable("htmlContent");
	};
	Model.prototype.onModelLoad=function(event){
		var id=this.getIDByXID('htmlContent');
		$.ajax({
					'url':"http://localhost:9090/aiwojia_admin/index.php?m=Home&c=Interface&a=getArticle",
					'type':'post',
					'async':false,
					'dataType':'html',
					'data':{
						'type':'gas'
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
	return Model;
});