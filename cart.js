define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var configData = require("./js/loadConfig");
	var config={};

	var Model = function() {
		this.callParent();
		this.isBack;
		var configUrl = require.toUrl("./config/config.json");
		configData.loadServerDataFromFile(configUrl,config);
		this.user=JSON.parse(localStorage.getItem('user'));	
	};
	
	//返回上一页
	Model.prototype.backBtnClick = function(event){
		justep.Shell.closePage();
		setTimeout(function(){
			justep.Shell.fireEvent("onRestoreContent", {});
		},500);
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
	//获取店铺信息
	Model.prototype.shopDataCustomRefresh = function(event){
		/*
		1、加载店铺数据
		 */
		var dataObj=this.comp("shopData");
		var goodsObj=this.comp('goodsData');
		var sumObj=this.comp('sumData');
		var self=this;
		
		 $.ajax({
					'url':"http://"+config.server+"/aiwojia_admin/index.php?m=Home&c=Interface&a=getCartInfo",
					'type':'post',
					'async':false,
					'dataType':'json',
					'data':{
						'member_id':self.user.member_id
					},
					success:function(result){
						if(result.status==1){
							dataObj.clear();
							dataObj.loadData(result.data.stores);
							dataObj.first();
							goodsObj.loadData(result.data.goodses);
							sumObj.loadData(result.data.storeSum);
							
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
	//全选
	Model.prototype.allChooseChange = function(event){
		/*
		1、全选多选框绑定变化事件onChange()
		2、点击全选多选框按钮，获取其值
		3、修改商品表中的choosed字段为全选多选框按钮的值
		*/
		var goodsData = this.comp("goodsData");
		var choose=this.comp("allChoose").val();
		goodsData.each(function(obj){
			if(choose){				
				goodsData.setValue("choosed","1",obj.row);
			} else {
				goodsData.setValue("choosed","",obj.row);
			}	
		});
	};
	
	//减数量
	Model.prototype.reductionBtnClick = function(event){		
		/*
		1、减少数量按钮绑定点击事件onClick()
		2、点击按钮，当前记录的fNumber值减1
		3、fNumber为1时不再相减
		*/
		var row = event.bindingContext.$object;
		var n=row.val("goods_num");
		if(n>1){
			row.val("goods_num",n-1);
			this.caculateStore(row.val('store_id'),-1,row.val('goods_price'),row.val('goods_id'));
		}
		
	};
	
	//加数量
	Model.prototype.addBtnClick = function(event){
		/*
		1、增加数量按钮绑定点击事件onClick()
		2、点击按钮，当前记录的fNumber值加1
		*/
		var row = event.bindingContext.$object;
		var n=row.val("goods_num");
		row.val("goods_num",n+1);
		this.caculateStore(row.val('store_id'),1,row.val('goods_price'),row.val('goods_id'));
	};
	//计算店铺合计数量及总额
	Model.prototype.caculateStore=function(store_id,num,price,goods_id){
		var rows=this.comp('shopData').find(['store_id'],[store_id],true);
		var row=rows[0];
		var member_id=this.user.member_id;
		$.ajax({
					'url':"http://"+config.server+"/aiwojia_admin/index.php?m=Home&c=Interface&a=changeCartGoodsNum",
					'type':'post',
					'async':false,
					'dataType':'json',
					'data':{
						'member_id':member_id,
						'goods_id':goods_id,
						'num':num
					},
					success:function(result){
						if(result.status==1){
							row.val('count',row.val('count')+num);
							row.val('sum',row.val('sum')+num*price);
							
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
	//删除
	Model.prototype.delBtnClick = function(event){
		/*
		1、删除按钮点击事件
		2、删除选中商品
		3、如果商店里已经没有商品，则删除商店
		*/
		var goodsData = this.comp("goodsData");
		var goodsRows = goodsData.find(["choosed"],["1"]);
		goodsData.deleteData(goodsRows);
  
		var shopData = this.comp("shopData");
		var shopRows = new Array();
		shopData.each(function(obj){
			var n = goodsData.find(["fShopID"],[obj.row.val("id")]).length; 
			if(n == 0){
				shopRows.push(obj.row);
			}
		});    
		shopData.deleteData(shopRows);  
	};
	
	Model.prototype.showBackBtn = function(isBack){
		/*
		1、根据参数修改calculateData
		 */		
		this.isBack = isBack;
		var v = isBack ? 1 : 0;
		this.comp("calculateData").setValue("isBack",v);		
	};
	
	//结算事件
	Model.prototype.settlementClick = function(event){
		/*
		1、结算按钮点击事件
		2、打开订单确认页面
		3、点击确认按钮，选择支付方式
		4、进入支付成功页面
		*/		
		var row=event.bindingContext.$object;
		var store_id=row.val('store_id');
	
		justep.Shell.showPage("order",{
			'store_id':store_id
		});
	};

	Model.prototype.listClick = function(event){
		/*
		 1、获取当前商品ID
		 2、传入弹出窗口，弹出窗口中显示商品详细信息
		 3、在弹出窗口的接收事件中，从服务端过滤数据
		*/
		var data=this.comp("goodsData");
		justep.Shell.showPage("detail", {
			goodsID : data.getValue("id"),
			shopID : data.getValue("fShopID")
		});
	};
	//计算店铺商品数量
	Model.prototype.getStoreAllNumber=function(store_id){
		var sum=this.comp('goodsData').sum('goods_num',function(ev){
			var v=ev.data.getValue('store_id',ev.row);
			return v==store_id;
		});
		return sum;
	};
	//计算店铺金额总数
	Model.prototype.getStoreSum=function(store_id){
		var sum=this.comp('goodsData').sum('goods_price',function(ev){
			var v = ev.data.getValue('store_id',ev.row);
			return v==store_id;
		});
		return sum;
	};
	return Model;
});