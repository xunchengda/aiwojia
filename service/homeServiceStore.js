define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var allData = require("../js/loadData");
	var configData = require("../js/loadConfig");
	var config={};
	var Model = function() {
		this.callParent();
		this.keyValue = "";
		var configUrl = require.toUrl("../config/config.json");
		configData.loadServerDataFromFile(configUrl,config);
	};

	// 图片路径转换
	Model.prototype.getImageUrl = function(row) {
		var img_url=row.val('goods_image');
		var store_id=row.val('store_id');
		var url="http://"+config.server+"/data/upload/shop/store/goods/"+store_id+"/"+img_url;
		return require.toUrl(url);
	};

	Model.prototype.modelParamsReceive = function(event) {
	};
	// 商品点击事件
	Model.prototype.listClick = function(event) {
		/*
		 * 1、获取当前商商铺  2、传入弹出窗口，弹出窗口中显示商品详细信息 3、在弹出窗口的接收事件中，从服务端过滤数据
		 */
		 
		var row=event.bindingContext.$object;
		justep.Shell.showPage(require.toUrl("./homeService.w"), {
			store_id : row.val("store_id")

		});
	};
	Model.prototype.modelLoad = function(event) {
		/*
		 * 判断html标签是否有iosstatusbar,有测表示在苹果手机上运行，顶部需要留出20px，因此修改popover的top
		 */
		 /*
		var src = $("html").hasClass("iosstatusbar");
		if (src) {
			$(".x-popOver-overlay").css({
				"top" : "108px"
			});
		}
*/
		
	};

	// 离开页面事件
	Model.prototype.modelUnLoad = function(event) {

	};

	Model.prototype.shopDataCustomRefresh = function(event){
		var shopObj=this.comp('shopData');
		$.ajax({
					'url':"http://"+config.server+"/aiwojia_admin/index.php?m=Home&c=Interface&a=getStoresByClass",
					'type':'post',
					'async':false,
					'dataType':'json',
					'data':{
						'type':'居家服务'
					},
					success:function(result){
						if(result.status==1){
							shopObj.clear();
							shopObj.loadData(result.stores);
						}
						if(result.status==-1){
							justep.Util.hint(result.message, {
								type:'warning',
								delay:'2000'
							});
						}
					},
					error:function(result){
						console.log(result);
						justep.Util.hint('网络错误', {
							type:'warning',
							delay:'2000'
						});
					}
			});
	};

	return Model;
});