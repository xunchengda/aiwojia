define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");	
	var configData = require("../js/loadConfig");
	var config={};
	var goods_id,store_id;
	var Model = function() {
		this.callParent();
		var configUrl = require.toUrl("../config/config.json");
		configData.loadServerDataFromFile(configUrl,config);
		this.member_id=localStorage.getItem('member_id');
		
	};
	
	//返回上一页
	Model.prototype.backBtnClick = function(event){
		justep.Shell.closePage();
	};
	
	//接收
	Model.prototype.modelParamsReceive = function(event){
		/*
		1、参数接收事件
		2、根据参数从服务端过滤数据
		*/
		
		if (this.params && this.params.store_id) {
			store_id = this.params.store_id;
			goods_id = this.params.goods_id;
			this.goodsDataCustomRefresh();
		}
	};	
	
	//获取轮换图片
	Model.prototype.setCarouselImage = function(){
		/*
		1、加载轮换图片数据
		2、根据goods_id过滤数据
		3、修改对应图片的src
		*/		
		var imgData=this.comp('imgData');
        var carousel=this.comp("carousel1");        
        imgData.each(function(obj){	
        	
        	var url="http://"+config.server+"/data/upload/shop/store/goods/"+store_id+"/"+obj.row.val('goods_image');
			var fImgUrl=require.toUrl(url);
			if( obj.index==0){
				$(carousel.domNode).find("img").eq(0).attr({"src":fImgUrl});
			} else {
				carousel.add('<img src="'+fImgUrl+'" class="image-wall tb-img"/>');
			}
		});
	};
	
	//获取商品信息
	Model.prototype.goodsDataCustomRefresh = function(){
		/*
		1、加载商品数据
		2、根据goods_id过滤数据
		*/
		var dataObj=this.comp("goodsData");
		var imageObj=this.comp('imgData');
		var shopObj=this.comp('shopData');
		var self=this;
		 $.ajax({
					'url':"http://"+config.server+"/aiwojia_admin/index.php?m=Home&c=Interface&a=getGoodInfo",
					'type':'post',
					'async':false,
					'dataType':'json',
					'data':{
						'goods_id':goods_id,
						'member_id':self.member_id
					},
					success:function(result){
						if(result.status==1){
							dataObj.clear();
							dataObj.loadData(result.data.good);
							dataObj.first();
							shopObj.clear();
							shopObj.loadData(result.data.stores);
							shopObj.first();
							imageObj.loadData(result.data.goods_images);
							self.setCarouselImage();
							if(result.data.cartCount>0){
								$('#'+self.getIDByXID('cartBadge')).html(result.data.cartCount);
							}else{
								$('#'+self.getIDByXID('cartBadge')).html('');
							}
						}
						if(result.status==-1){
							justep.Util.hint(result.message, {
								type:'warning',
								delay:'2000'
							});
						}
					},
					error:function(result){
						justep.Util.hint('网络错误', {
							type:'warning',
							delay:'2000'
						});
					}
			});
		
	};
	
	//购物车按钮
	Model.prototype.shoppingCartBtnClick = function(event){
		/*
		1、切换到购物车页面
		*/
		justep.Shell.fireEvent("onShoppingContent",{});
		justep.Shell.showMainPage();
	};
	//加入购物车
	Model.prototype.joinCartBtnClick = function(event){
		/*
		1、弹出商品尺码颜色选择框
		2、点击确定后购物车中增加一条相应数据
		*/
		this.comp("stateData").setValue("state",0);
		this.comp("popOver").show();
	};
	
	//购买按钮
	Model.prototype.buyBtnClick = function(event){
		/*
		1、获取当前商品ID
		2、传入新窗口，打开的窗口中显示购买确认页面
		3、在打开的窗口中接收数据，并从服务端过滤数据
		*/
		this.comp("stateData").setValue("state","0");
		this.comp("popOver").show();
	};
	
	//查看宝贝分类按钮
	Model.prototype.classBtnClick = function(event){
		/*
		1、获取当前商铺ID
		2、传入新窗口，打开的窗口中显示商铺分类
		3、在打开的窗口中接收数据，并从服务端过滤数据
		*/
	};
	
	//进店逛逛按钮
	Model.prototype.storeBtnClick = function(event){
		/*
		1、获取当前商铺ID
		2、传入新窗口，打开的窗口中显示店铺主页面
		3、在打开的窗口中接收数据，并从服务端过滤数据
		*/
	};
	
	//全部宝贝按钮
	Model.prototype.goodsBtnClick = function(event){
		/*
		1、获取当前店铺ID
		2、传入新窗口，打开的窗口中显示商品列表
		3、在打开的窗口中接收数据，并从服务端过滤数据
		*/
	};
	
	//分享按钮
	Model.prototype.shareBtnClick = function(event){
		/*
		1、获取商品ID 
		2、打开分享页面
        3、参数说明 
            thumb：缩略图，可以显示商品图片，注意不能大于32kb，链接从http开始
			webpageUrl: 分享链接，使用location.href显示当前页面，链接从http开始
			scene:分享到微信朋友圈、微信朋友、微信群 
				weixin.Scene.TIMELINE 是分享到微信朋友圈
		 		weixin.Scene.SESSION 是分享给微信朋友、微信群
		*/
		if (!navigator.weixin) {
			return;
		}
		var weixin = navigator.weixin;
		var Utils = require("$UI/system/components/justep/common/utils");		
		weixin.share({
			message : {
				title : this.comp("goodsData").val("fTitle"),
				description : "",
				mediaTagName : "",
				thumb : location.origin + require.toUrl("./detail/img/icon.png"),
				media : {
					type : weixin.Type.WEBPAGE,
					webpageUrl : Utils.getShareUrl()
				}
			},
			scene : weixin.Scene.TIMELINE
		}, function() {
			// alert("Success");
		}, function(reason) {
			// alert("Failed: " + reason);
		});
			
	};
	
	//颜色选择弹出窗显示
	Model.prototype.popOverClick = function(event){		
		this.comp("stateData").setValue("state", 1);
		this.comp("popOver").show();
	};
	
	//颜色状态修改
	Model.prototype.colorLiClick = function(event){
		/*
		1、颜色选择点击事件
		2、修改当前颜色状态
		*/
		var colorData=this.comp("colorData");
		var row=colorData.getCurrentRow();		
		colorData.setValue("fState", "0", colorData.find(["fState"],["1"],true,true,true)[0]);
		colorData.setValue("fState", "1",row);
	};	

	Model.prototype.addToCartBtnClick = function(event){
		var goods=this.comp('goodsData').getCurrentRow();
		var self=this;
		$.ajax({
					'url':"http://"+config.server+"/aiwojia_admin/index.php?m=Home&c=Interface&a=addToCart",
					'type':'post',
					'async':false,
					'dataType':'json',
					'data':{
						'goods_id':goods_id,
						'member_id':self.member_id
					},
					success:function(result){
						if(result.status==1){
							var count=result.data.count;
							if(count>0){
								$('#'+self.getIDByXID('cartBadge')).html(count);
							}else{
								$('#'+self.getIDByXID('cartBadge')).html('');
							};
							justep.Util.hint(result.message,{
								type:'success',
								delay:'2000'
							});
							
						}
						if(result.status==-1){
							justep.Util.hint(result.message, {
								type:'warning',
								delay:'2000'
							});
						}
					},
					error:function(result){
						justep.Util.hint('网络错误', {
							type:'warning',
							delay:'2000'
						});
					}
			});
	};	

	Model.prototype.toCartBtnClick = function(event){
		justep.Shell.showPage('cart');
	};	

	Model.prototype.modelActive = function(event){
		console.log('reactive');
		this.comp('goodsData').refreshData({confirm:false});
	};	

	Model.prototype.btnDirectBuyClick = function(event){
		var row=this.comp('goodsData').getCurrentRow();
		var goods_id=row.val('goods_id');
		var member_id=this.member_id;
		justep.Shell.showPage('directBuy', {goods_id:goods_id});
	};	

	Model.prototype.moreBtnClick = function(event){
		justep.Shell.closeAllOpendedPages();
	};	

	return Model;
});