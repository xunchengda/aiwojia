define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var allData = require("./js/loadData");
	var configData = require("./js/loadConfig");
	var config={};
	var userlogined;
	var Model = function() {
		this.callParent();
		this.contentName;
		this.tag;
		this.lastContentXid = "homeContent";
		var configUrl = require.toUrl("./config/config.json");
		configData.loadServerDataFromFile(configUrl,config);
	};

	// 图片路径转换
	Model.prototype.getImageUrl = function(url) {
		return require.toUrl(url);
	};
	/*
	 * 写首页图片数据缓存的代码 1、数据模型创建时事件
	 * 2、判断有没有localStorage，如果有显示localStorage中的内容，否则显示静态内容。
	 * 3、从服务端获取最新数据和图片，获取之后，更新界面并写入localStorage
	 */
	Model.prototype.modelModelConstruct = function(event) {
		/*
		 * 1、数据模型创建时事件 2、加载静态图片或从缓存中加载图片
		 */
		var carousel = this.comp("carousel1");

		var fImgUrl = localStorage.getItem("index_BannerImg_src");
		if (fImgUrl == undefined) {
			$(carousel.domNode).find("img").eq(0).attr({
				"src" : "./main/img/carouselBox61.jpg",
				"pagename" : "./detail.w"
			});
		} else {
			var fUrl = localStorage.getItem("index_BannerImg_url");
			$(carousel.domNode).find("img").eq(0).attr({
				"src" : fImgUrl,
				"pagename" : fUrl
			});
		}
	};

	Model.prototype.imgDataCustomRefresh = function(event) {
		/*
		 * 1、加载轮换图片数据
		 * 2、根据data数据动态添加carouse组件中的content页面 
		 * 3、如果img已经创建了，只修改属性
		 * 4、第一张图片信息存入localStorage
		 */
		var url = require.toUrl("./main/json/imgData.json");
		allData.loadDataFromFile(url, event.source, true);
		var me = this;
		var carousel = this.comp("carousel1");
		event.source.each(function(obj) {
			var fImgUrl = require.toUrl(obj.row.val("fImgUrl"));
			var fUrl = require.toUrl(obj.row.val("fUrl"));
			if (me.comp('contentsImg').getLength() > obj.index) {
				$(carousel.domNode).find("img").eq(obj.index).attr({
					"src" : fImgUrl,
					"pagename" : fUrl
				});
				if (obj.index == 0) {
					localStorage.setItem("index_BannerImg_src", fImgUrl);
					localStorage.setItem("index_BannerImg_url", fUrl);
				}
			} else {
				carousel.add('<img src="' + fImgUrl + '" class="tb-img1" bind-click="openPageClick" pagename="' + fUrl + '"/>');
			}
		});
	};

	// 打开页面
	Model.prototype.openPageClick = function(event) {
		/*
		 * 1、点击组件增加算定义属性：pagename 2、获取自定义属性，打开 对应页面
		 */
		var pageName = event.currentTarget.getAttribute('pagename');
		var member_id=localStorage.getItem("member_id");
		if(member_id===null && pageName!=='./agent/agentmain.w')
			justep.Shell.showPage(require.toUrl('./login.w'));
		else{
			if (pageName)
				justep.Shell.showPage(require.toUrl(pageName));
		}
			
		
	};

	// 搜索
	Model.prototype.searchBtnClick = function(event) {
		/*
		 * 1、进入搜索页面
		 */
		justep.Shell.showPage("search");
	};

	// 下划刷新
	Model.prototype.scrollViewPullDown = function(event) {
		/*
		 * 1、滚动视图下拉事件 2、刷新data
		 */
		this.comp("imgData").refreshData();
	};

	// 添加事件
	Model.prototype.modelLoad = function(event) {
		/*
		justep.Shell.on("onRestoreContent", this.onRestoreContent, this);
		justep.Shell.on("onShoppingContent", this.onShoppingContent, this);
		justep.Shell.on("onHomeContent", this.onHomeContent, this);
		*/
		var member_id=localStorage.getItem('member_id');
		if(member_id===null){
			justep.Shell.showPage(require.toUrl('./login.w'));
			
		}
	};
	// 卸载事件
	Model.prototype.modelUnLoad = function(event) {
		/*
		justep.Shell.off("onRestoreContent", this.onRestoreContent);
		justep.Shell.off("onShoppingContent", this.onShoppingContent);
		justep.Shell.off("onHomeContent", this.onHomeContent);
		*/
	};
	// 返回上一次的content
	Model.prototype.onRestoreContent = function(event) {
		//this.comp("contents").to(this.lastContentXid);
	};
	// 切换到首页
	Model.prototype.onHomeContent = function(event) {
		this.comp("contents").to("homeContent");
	};

	Model.prototype.contents2ActiveChange = function(event){
		var to = event.to;
		if(to===1){
			var member_id=localStorage.getItem("member_id");
			if(member_id===null){
				this.comp('contents').to('homeContent');
				/*
				this.comp('homeBtn').addClass('active');
				this.comp('userBtn').removeClass('active');
				*/
				justep.Shell.showPage('login');
			
			}else{
				this.comp('profileContainer').load();
			}
		}
		if (to >= 1) {
			// 优化内存占用
//			$('.x-window-container', this.comp('content2').$domNode).css('display', 'none');
//			this.comp('navContainer' + (to + 1)).$domNode.css('display', 'block');
//
//			this.comp('navContainer' + (to + 1)).load();
		}

	};


	Model.prototype.userBtnClick = function(event){
		justep.Shell.showPage(require.toUrl('./profile.w'));
	};




	Model.prototype.button2Click = function(event){
		var member_id=localStorage.getItem('member_id');
		if(member_id===null){
			justep.Shell.showPage(require.toUrl("./login.w"));
		}else{
			justep.Shell.showPage(require.toUrl("./service/orderWait.w"));
		}
	};




	Model.prototype.button1Click = function(event){
		var member_id=localStorage.getItem('member_id');
		if(member_id===null){
			justep.Shell.showPage(require.toUrl("./login.w"));
		}else{
			justep.Shell.showPage(require.toUrl("./cart.w"));
		}
		
	};




	Model.prototype.menuBtnClick = function(event){
		this.comp('popShort').show();
	};









	Model.prototype.modelParamsReceive = function(event){

	};









	return Model;
});