define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var configData = require("../js/loadConfig");
	var config={};
	var store_id,goods_id,goods_num;
	var Model = function(){
		this.callParent();
		var configUrl = require.toUrl("../config/config.json");
		configData.loadServerDataFromFile(configUrl,config);
		this.member_id=localStorage.getItem('member_id');
	};
	Model.prototype.modelParamsReceive = function(event){
		console.log(this.params);
		if (this.params && this.params.store_id) {
			store_id = this.params.store_id;
			goods_id=this.params.goods_id;
			goods_num=this.params.goods_num;
			this.initData();
		}
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
					'url':"http://"+config.server+"/aiwojia_admin/index.php?m=Home&c=Interface&a=getDirectOrderInfo",
					'type':'post',
					'async':false,
					'dataType':'json',
					'data':{
						'member_id':self.member_id,
						'store_id':store_id,
						'goods_id':goods_id
					},
					success:function(result){
						if(result.data.addresses.length==0){
							justep.Util.hint('未发现用户收货地址信息', {
									type:'warning',
									delay:'3000'
								});
								
							setTimeout("justep.Shell.closeAllOpendedPages();justep.Shell.showPage('address')",2000);
						}else{
						
							if(result.status==1){
								shopObj.clear();
								shopObj.newData({
									index:0,
									defaultValues:[
									 result.data.store
									]
								});
								goodsObj.clear();
								result.data.goods.goods_num=goods_num;
								goodsObj.newData({
									index:0,
									defaultValues:[
									result.data.goods
									]
								
								});
								var goods=result.data.goods;
								addressObj.clear();
								addressObj.loadData(result.data.addresses);
								addressObj.first();
								var current=addressObj.getCurrentRow();
								$('#'+self.getIDByXID('sum')).html("￥"+goods.goods_price*goods_num);
								var s_currentAddress=addressObj.find(['is_default'],[1]);
								console.log(s_currentAddress);
								var a_t=s_currentAddress[0];
								
								currentAddressObj.newData({
									index:0,
									defaultValues:[{
									'address_id':a_t.address_id,
									'true_name':a_t.true_name,
									'mob_phone':a_t.mob_phone,
									'address':a_t.address
									}]
								});
								
									
								currentAddressObj.first();
								
								
							}
							if(result.status==-1){
								justep.Util.hint(result.message, {
									type:'warning',
									delay:'3000'
								});
							}
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
		var member_id=this.member_id;
		var currentAddressObj=this.comp('currentAddressData');
		var address_id=currentAddressObj.val('address_id');
		var message_id=this.getIDByXID('message');
		var message=$('#'+message_id).val();
		$.ajax({
					'url':"http://"+config.server+"/aiwojia_admin/index.php?m=Home&c=Interface&a=confirmDirectOrder",
					'type':'post',
					'async':false,
					'dataType':'json',
					'data':{
						'member_id':member_id,
						'store_id':store_id,
						'goods_id':goods_id,
						'goods_num':goods_num,
						'address_id':address_id,
						'order_message':message
					},
					success:function(result){
						if(result.status==1){
							justep.Shell.showPage(require.toUrl("./directSuccess.w"),{
							'true_name':currentAddressObj.val('true_name'),
							'mob_phone':currentAddressObj.val('mob_phone'),
							'address':currentAddressObj.val('address'),
							});
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
		this.comp("addressData").setValue("is_default",0);
		var row = event.bindingContext.$object; 
		row.val("is_default",1);
		var currentAddress=this.comp('currentAddressData');
			currentAddress.clear();
			currentAddress.newData({
				'index':0,
				'defaultValues':[{
					'address_id':row.val('address_id'),
					'true_name':row.val('true_name'),
					'mob_phone':row.val('mob_phone'),
					'address':row.val('address')
					
				}]
			});
		this.comp("popOver").hide();
	};
	
	
	
	Model.prototype.changeAddress = function(event){
		var row = event.bindingContext.$object;
		if(event.value==1){
			var currentAddress=this.comp('currentAddressData');
			currentAddress.clear();
			currentAddress.newData({
				'index':0,
				'defaultValues':[{
					'address_id':row.val('address_id'),
					'true_name':row.val('true_name'),
					'mob_phone':row.val('mob_phone'),
					'address':row.val('address')
					
				}]
			});
			currentAddress.first();
		}
		
	};
	
	return Model;
});