define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var configData = require("./js/loadConfig");
	var config={};
	var Model = function() {
		this.callParent();
		var configUrl = require.toUrl("./config/config.json");
		configData.loadServerDataFromFile(configUrl,config);
		console.log(config);
	};
	
	//图片路径转换
	Model.prototype.toUrl = function(url){
		return url ? require.toUrl(url) : "";
	};
	Model.prototype.btnClickRegister=function(event){
	
		justep.Shell.showPage('register');
	};
	//点击注册
	Model.prototype.btnLoginClick=function(event){
		var data=this.comp('logindata').getCurrentRow();
		var has_error=false;
		//name
		if(!this.checkName(data.val('name'))){
			this.comp('nameInput').addClass('has-error');
			has_error=true;
		}else{
			this.comp('nameInput').removeClass('has-error');
		}
		//password
		if(!this.checkPassword(data.val('password'))){
			this.comp('passwordInput').addClass('has-error');
			has_error=true;
		}else{
			this.comp('passwordInput').removeClass('has-error');
		}
		if(!has_error){
			$.ajax({
					'url':"http://"+config.server+"/aiwojia_admin/index.php?m=Home&c=Interface&a=login",
					'type':'post',
					'async':false,
					'dataType':'json',
					'data':{
						'name':data.val('name'),
						'password':data.val('password')
					},
					success:function(result){
						console.log(result);
						if(result.status==1){
							localStorage.setItem('user',{
								'name':result.data.name,
								'mobile':result.data.mobile,
								'idno':result.data.idno
							});
							justep.Shell.showPage('main');
						}
						if(result.status==-1){
							justep.Util.hint(result.message, {
								type:'warning',
								delay:'5000'
							});
						}
					},
					error:function(result){
						console.log(result);
						justep.Util.hint('登录失败', {
							type:'warning',
							delay:'5000'
						});
					}
			});
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
	//检查密码
	Model.prototype.checkPassword=function(value){
		if(this.isEmpty(value)){
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
	return Model;
});