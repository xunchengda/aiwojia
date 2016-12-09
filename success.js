define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var true_name,address,mob_phone;
	var Model = function(){
		this.callParent();
	};
	//完成按钮
	Model.prototype.mainBtnClick = function(event){
		/*
		1、完成按钮点击事件
		2、打开首页
		*/
		//justep.Shell.fireEvent("onHomeContent",{});
		//justep.Shell.showMainPage();
		justep.Shell.closePage('order');
		justep.Shell.closePage();
	};
	Model.prototype.modelParamsReceive = function(event){
		console.log(this.params);
		if (this.params && this.params.true_name) {
			true_name=this.params.true_name;
			address=this.params.address;
			mob_phone=this.params.mob_phone;
			var addressObj=this.comp('currentAddressData');
			addressObj.newData({
				'index':0,
				'defaultValues':[{
					'address_id':100,
					'true_name':true_name,
					'mob_phone':mob_phone,
					'address':address
				}]
			});
			
			addressObj.first();
		}
	};
	
	Model.prototype.modelLoad = function(event){
		
	};
	
	return Model;
});