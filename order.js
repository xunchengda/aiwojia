define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var configData = require("./js/loadConfig");
	var config={};
	var store_id,goods_ids;
	var Model = function(){
		this.callParent();
		var configUrl = require.toUrl("./config/config.json");
		configData.loadServerDataFromFile(configUrl,config);
		this.member_id=localStorage.getItem('member_id');
		this.member_name=localStorage.getItem('member_name');
		
	};
	Model.prototype.modelParamsReceive = function(event){
		
		if (this.params && this.params.store_id) {
			store_id = this.params.store_id;
			goods_ids=this.params.goods_ids;
			this.initData();
		}
	};	
	//图片路径转换
	Model.prototype.getImageUrl = function(url){
		return "http://"+config.server+url;
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
						'member_id':self.member_id,
						'store_id':store_id,
						'goods_ids':goods_ids
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
								shopObj.loadData(result.data.stores);
								goodsObj.clear();
								goodsObj.loadData(result.data.goodses);
								
								addressObj.clear();
								addressObj.loadData(result.data.addresses);
								var sum=0;
								for(var i=0;i<result.data.goodses.length;i++){
									var price=result.data.goodses[i].goods_price;
									var num=result.data.goodses[i].goods_num;
									sum+=price*num;
								}
								$('#'+self.getIDByXID('sum')).html("￥"+sum);
								var s_currentAddress=addressObj.find(['is_default'],[1]);
								var a_t=s_currentAddress[0];
								currentAddressObj.newData({
									index:0,
									defaultValues:[{
									'address_id':a_t.val('address_id'),
									'true_name':a_t.val('true_name'),
									'mob_phone':a_t.val('mob_phone'),
									'address':a_t.val('address')
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
	
	
	//打开成功页面
	Model.prototype.confirmBtnClick = function(event){
		var member_id=this.member_id;
		var currentAddressObj=this.comp('currentAddressData');
		var address_id=currentAddressObj.val('address_id');
		var message_id=this.getIDByXID('message');
		var message=$('#'+message_id).val();
		$.ajax({
					'url':"http://"+config.server+"/aiwojia_admin/index.php?m=Home&c=Interface&a=confirmOrder",
					'type':'post',
					'async':false,
					'dataType':'json',
					'data':{
						'member_id':member_id,
						'store_id':store_id,
						'goods_ids':goods_ids,
						'address_id':address_id,
						'order_message':message
					},
					success:function(result){
						if(result.status==1){
							justep.Shell.showPage("success",{
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