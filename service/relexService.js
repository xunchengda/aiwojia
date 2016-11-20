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
	Model.prototype.getImageUrl = function(url) {
		return require.toUrl(url);
	};

	Model.prototype.modelParamsReceive = function(event) {
	};

	// 获取商品列表
	Model.prototype.goodsDataCustomRefresh = function(event) {
		/*
		 * 1、加载商品数据 2、接收传入的参数，过滤数据
		 */
		var url = require.toUrl("../list/json/goodsData.json");
		allData.loadDataFromFile(url, event.source, true);
	};

	// 商品点击事件
	Model.prototype.listClick = function(event) {
		/*
		 * 1、获取当前商品ID 2、传入弹出窗口，弹出窗口中显示商品详细信息 3、在弹出窗口的接收事件中，从服务端过滤数据
		 */
		var data = this.comp("goodsData");
		justep.Shell.showPage("detail", {
			goodsID : data.getValue("id"),
			shopID : data.getValue("fShopID")
		});
	};

	// 搜索
	Model.prototype.searchBtnClick = function(event) {
		/*
		 * 1、进入搜索页面
		 */
		justep.Shell.showPage("search");
	};

	// 修改列表样式图标
	Model.prototype.listStyleClick = function(event) {
		/*
		 * 1、切换下一个页面
		 */
		this.comp('pages').next();
	};
	
	Model.prototype.pagesActiveChanged = function(event) {
		/*
		 * 1、页面变化完成事件 2、根据页面索引修改按钮图标
		 */
		var btnObj = this.comp("listStyleBtn");
		var index = this.comp("pages").getActiveIndex();
		if (index == "0") {
			btnObj.set("icon", "glyphicon glyphicon-th-list");
		} else {
			btnObj.set("icon", "glyphicon glyphicon-th-large");
		}
	};
	/* 选择排序按钮 */
	Model.prototype.sortingBtnClick = function(event) {

		if ($(this.comp("sortingPopOver").$domNode).css("display") == "block") {
			this.comp("sortingPopOver").hide();
		} else {
			this.comp("sortingPopOver").show();
		}

		if ($(this.comp("screeningPopOver").$domNode).css("display") == "block") {
			this.comp("screeningPopOver").hide();
		}
	};
	/* 选择排序 */
	Model.prototype.sortingListClick = function(event) {
		/*
		 * 1、排序点击事件 2、修改当前排序 3、关闭排序窗口
		 */
		var data = this.comp("conditionData");
		data.setValue("fState", "0", data.find([ "fState" ], [ "1" ], true, true, true)[0]);
		var row = data.getCurrentRow();
		data.setValue("fState", "1", row);
		this.comp("sortingBtn").set("label", data.getValue("fName", row));

		this.comp("sortingPopOver").hide();
	};

	/* 折扣和服务按钮 */
	Model.prototype.screeningBtnClick = function(event) {
		if ($(this.comp("screeningPopOver").$domNode).css("display") == "block") {
			this.comp("screeningPopOver").hide();
		} else {
			this.comp("screeningPopOver").show();
		}
		if ($(this.comp("sortingPopOver").$domNode).css("display") == "block") {
			this.comp("sortingPopOver").hide();
		}
	};

	/* 折扣和服务 */
	Model.prototype.discountClick = function(event) {
		/*
		 * 1、折扣和服务点击事件 2、选择折扣和服务，可多选
		 */
		var data = this.comp("discountData");
		var row = data.getCurrentRow();
		if (data.getValue("fState", row) == 0) {
			data.setValue("fState", "1", row);
		} else {
			data.setValue("fState", "0", row);
		}
	};

	/* 分类 */
	Model.prototype.classClick = function(event) {
		/*
		 * 1、分类点击事件 2、选择分类，单选
		 */
		var data = this.comp("l2data");
		//data.setValue("state", "0", data.find([ "state" ], [ "1" ], true, true, true)[0]);
		var row = data.getCurrentRow();
		data.setValue("state", row.val('state')==1?0:1, row);
	};

	/* 重置 */
	Model.prototype.resetBtnClick = function(event) {
		/*
		 * 1、重置按钮点击事件 2、清空价格区间、折扣和服务、分类
		 */
		this.comp("price1").val("");
		this.comp("price2").val("");
		this.reset(this.comp("discountData"));
		this.reset(this.comp("classData"));
	};
	Model.prototype.reset = function(data) {
		var rows = data.find([ "fState" ], [ "1" ], false, true, true);
		for (var i = 0; i < rows.length; i++) {
			data.setValue("fState", "0", rows[i]);
		}
	};
	//获取二级分类信息
	/*
	1、默认显示当前一级菜单对应的二、三级数据
	2、点击其它一级菜单，再加载它的二三级数据
	*/
	Model.prototype.l2ClassDataCustomRefresh = function(event){		
		/*
		1、加载二级分类数据
		 */
		 var dataObj=event.source;
		 $.ajax({
					'url':"http://"+config.server+"/aiwojia_admin/index.php?m=Home&c=Interface&a=getGoodClassL2",
					'type':'post',
					'async':false,
					'dataType':'json',
					'data':{
						'type':'休闲服务'
					},
					success:function(result){
						console.log(result);
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
						console.log(result);
						justep.Util.hint('网络错误', {
							type:'warning',
							delay:'3000'
						});
					}
			});
		       
	};
	Model.prototype.modelLoad = function(event) {
		/*
		 * 判断html标签是否有iosstatusbar,有测表示在苹果手机上运行，顶部需要留出20px，因此修改popover的top
		 */
		var src = $("html").hasClass("iosstatusbar");
		if (src) {
			$(".x-popOver-overlay").css({
				"top" : "108px"
			});
		}
		/*
		 * 切换到缓存中保存的content
		 */
		var pagename = localStorage.getItem("list_style_name");
		if (pagename == null) {
			pagename = "oneColList";
		}
		this.comp("pages").to(pagename);
	};

	// 离开页面事件
	Model.prototype.modelUnLoad = function(event) {
		/*
		 * 将当前激活的content的Xid存入缓存
		 */
		localStorage.setItem("list_style_name", this.comp("pages").getActiveXid());
	};

	return Model;
});