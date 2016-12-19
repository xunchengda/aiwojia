define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var configData = require("../js/loadConfig");
	var config={};
	
	var Model = function(){
		this.callParent();
		var configUrl = require.toUrl("../config/config.json");
		configData.loadServerDataFromFile(configUrl,config);
		this.member_id=localStorage.getItem('member_id');
		
	};
	//接受参数
	Model.prototype.modelParamsReceive = function(event){
		if (this.params && this.params.address_id) {
			var data=this.comp('userData');
			data.newData({
				index:0,
				defaultValues:[{
					true_name:this.params.true_name,
					mob_phone:this.params.mob_phone,
					address:this.params.address,
					address_id:this.params.address_id
				}]
			});
			data.first();
		}
	};
	//检查姓名
	Model.prototype.checkName=function(value){
		if(this.isEmpty(value)){
			return false;
		}else{
			return true;
		}
	};
	//检查地址
	Model.prototype.checkAddress=function(value){
		if(this.isEmpty(value)){
			return false;
		}else{
			return true;
		}
	};
	//检查手机
	Model.prototype.checkMobile=function(value){
		console.log(value);
		if(this.isEmpty(value) || !this.isMobile(value)){
			return false;
		}else{
			return true;
		}
	};	
	//检查输入是否为空
	Model.prototype.isEmpty=function(value){
		if(justep.String.trim(value)==='' || value===undefined){
			return true;
		}else
			return false;
		
	};
	//check all input
	Model.prototype.checkAllInput=function(){
		var has_error=false;
		var data=this.comp('userData').getCurrentRow();
		console.log(data);
		//name
		if(!this.checkName(data.val('true_name'))){
			this.comp('receiverInput').addClass('has-error');
			has_error=true;
		}else{
			this.comp('receiverInput').removeClass('has-error');
		}
		//mobile
		if(!this.checkMobile(data.val('mob_phone'))){
			this.comp('mobileInput').addClass('has-error');
			has_error=true;
		}else{
			this.comp('mobileInput').removeClass('has-error');
		}
		
		//address
		if(!this.checkAddress(data.val('address'))){
			this.comp('addressInput').addClass('has-error');
			has_error=true;
		}else{
			this.comp('addressInput').removeClass('has-error');
		}
		
		return has_error;
	};
	//检验手机号码
	Model.prototype.isMobile=function(telphone){
		var isChinaMobile = /^134[0-8]\d{7}$|^(?:13[5-9]|147|15[0-27-9]|178|18[2-478])\d{8}$/; //移动方面最新答复
		var isChinaUnion = /^(?:13[0-2]|145|15[56]|176|18[56])\d{8}$/; //向联通微博确认并未回复
		var isChinaTelcom = /^(?:133|153|177|18[019])\d{8}$/; //1349号段 电信方面没给出答复，视作不存在
		var isOtherTelphone  = /^170([059])\d{7}$/;//其他运营商
		telphone = justep.String.trim(telphone);
	    if(telphone.length !== 11){
	      return false;
	    }
	    else{
	      if(isChinaMobile.test(telphone)){
	        return true;
	      }
	      else if(isChinaUnion.test(telphone)){
	        return true;
	      }
	      else if(isChinaTelcom.test(telphone)){
	        return true;
	      }
	      else if(isOtherTelphone.test(telphone)){
	        return true;
	      }
	      else{
	        return false;
	      }
	    }
  
		
	};
	
	Model.prototype.saveBtnClick = function(event){
		//if(!this.checkAllInput()){
			var data=this.comp('userData').getCurrentRow();
			var member_id=this.member_id;
			$.ajax({
					'url':"http://"+config.server+"/aiwojia_admin/index.php?m=Home&c=Interface&a=updateUser",
					'type':'post',
					'async':false,
					'dataType':'json',
					'data':{
						'member_id':member_id,
						'member_truename':data.val('member_truename'),
						'member_idno':data.val('member_idno'),
						'member_department':data.val('member_department'),
						'member_degree':data.val('member_degree')
					},
					success:function(result){
						if(result.status==1){
							justep.Util.hint(result.message, {
								type:'success',
								delay:'2000'
							});
							setTimeout("justep.Shell.closePage()",2000);
							
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
		//}
	};
	Model.prototype.userDataCustomRefresh = function(event){
		var member_id=this.member_id;
		var userObj=this.comp('userData');
		var degreeObj=this.comp('degreeData');
		$.ajax({
					'url':"http://"+config.server+"/aiwojia_admin/index.php?m=Home&c=Interface&a=getUserInfo",
					'type':'post',
					'async':false,
					'dataType':'json',
					'data':{
						'member_id':member_id
					},
					success:function(result){
						if(result.status==1){
							degreeObj.clear();
							degreeObj.loadData(result.data.degree);
							userObj.clear();
							userObj.loadData(result.data.user);
							userObj.first();
							console.log(userObj.count());
							
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
	return Model;
});