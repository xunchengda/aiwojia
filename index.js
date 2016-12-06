define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var ShellImpl = require('$UI/system/lib/portal/shellImpl');
	var CommonUtils = require("$UI/system/components/justep/common/utils");
	require("./appVersionChecker");
	
	var Model = function() {
		this.callParent();
		var shellImpl = new ShellImpl(this, {
			"contentsXid" : "pages",
			"pageMappings" : {
				"login":{
					url:require.toUrl('./login.w')
				},
				'register':{
					url:require.toUrl('./register.w')
				},
				"main" : {
					url : require.toUrl('./main.w')
				},
				"list" : {
					url : require.toUrl('./list.w')
				},
				"class" : {
					url : require.toUrl('./class.w')
				},
				"detail" : {
					url : require.toUrl('./service/detail.w')
				},
				"search" : {
					url : require.toUrl('./search.w')
				},
				"cart" : {
					url : require.toUrl('./cart.w')
				},
				"order" : {
					url : require.toUrl('./order.w')
				},
				"success" : {
					url : require.toUrl('./success.w')
				},
				"user":{
					url:require.toUrl('user.w')
				},
				'editUser':{
					url:require.toUrl('./profile/editUser.w')
				},
				"address":{
					url:require.toUrl('./profile/address.w')
				},
				'addAddress':{
					url:require.toUrl('./profile/addAddress.w')
				},
				'editAddress':{
					url:require.toUrl('./profile/editAddress.w')
				},
				'agent':{
					url:require.toUrl("./agent/agengmain.w")
				}
			}
		});
		//shellImpl.setIsSinglePage(true);
		shellImpl.useDefaultExitHandler = true;
		/*	
		CommonUtils.attachDoubleClickExitApp(function() {
			
			var isHomePage = shellImpl.pagesComp.contents[0].innerContainer.getInnerModel().comp('contents2').getActiveIndex() == 0;
			if (shellImpl.pagesComp.getActiveIndex() === 0 && isHomePage) {
				return true;
			}
			return false;
			
		});
		*/

	};

	return Model;
});