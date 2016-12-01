define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var configData = require("./js/loadConfig");
	var config={};
	var store_id;
	var Model = function(){
		this.callParent();
		var configUrl = require.toUrl("./config/config.json");
		configData.loadServerDataFromFile(configUrl,config);
		this.user=JSON.parse(localStorage.getItem('user'));
	};
		
	//图片路径转换
	Model.prototype.getImageUrl = function(url){
		return "http://"+config.server+url;
	};
		
	//获取商品列表
	Model.prototype.goodsDataCustomRefresh = function(event){
		/*
		1、加载商品数据
		 */
		var url = require.toUrl("./cart/json/goodsData.json");
		allData.loadDataFromFile(url,event.source,true);
	};
	//初始化订单数据
	Model.prototype.initData = function(event){
		var shopObj=this.comp("shopData");
		var goodsObj=this.comp('goodsData');
		var addressObj=this.comp('addressData');
		var currentAddressObj=this.comp('currentAddressData');
		var self=this;
		
		 $.ajax({
					'url':"http://"+config.server+"/aiwojia_admin/index.php?m=Home&c=Interface&a=getOrderInfo",
					'type':'post',
					'async':false,
					'dataType':'json',
					'data':{
						'member_id':self.user.member_id,
						'store_id':store_id
					},
					success:function(result){
						if(result.status==1){
							shopObj.clear();
							shopObj.loadData(result.data.stores);
							goodsObj.clear();
							goodsObj.loadData(result.data.goodses);
							addressObj.clear();
							addressObj.loadData(result.data.addresses);
							var s_currentAddress=addressObj.find(['is_default'],[1]);
							currentAddressObj.newData({"defaultValues":s_currentAddress});
							currentAddressObj.first();
							console.log(currentAddressObj);
							
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
	//获取邮寄信息
	Model.prototype.sendDataCustomRefresh = function(event){
		/*
		1、加载邮寄数据
		 */
		var url = require.toUrl("./cart/json/sendData.json");
		allData.loadDataFromFile(url,event.source,true);
	};
	
	//打开成功页面
	Model.prototype.confirmBtnClick = function(event){
		/*
		1、确认按钮点击事件
		2、打开成功页面
		*/
		justep.Shell.showPage("success");
	};
	
	Model.prototype.sendClick = function(event){
		/*
		1、配送方式按钮点击事件
		2、显示配送列表
		 */
		this.comp("popOver").show();
	};
	
	Model.prototype.sendLiClick = function(event){
		/*
		1、配送列表点击事件
		2、选中配送方式，关闭配送列表
		*/
		this.comp("sendData").setValue("fState",0);
		var row = event.bindingContext.$object; 
		row.val("fState",1);
		var title=row.val("fSendName")+" "+row.val("fCost");		
		$("span[xid=sendTitle]", this.getRootNode()).text(title);
		this.comp("popOver").hide();
	};
	
	Model.prototype.modelParamsReceive = function(event){
		if (this.params && this.params.store_id) {
			store_id = this.params.store_id;
			this.initData();
		}
	};
	
	return Model;
});