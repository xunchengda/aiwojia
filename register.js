define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var smsCode;
	var allData = require("./js/loadConfig");
	var config={};
	var Model = function() {
		this.callParent();
		smsCode='';
		this.requestingCode=justep.Bind.observable(false);
		var configUrl = require.toUrl("./config/config.json");
		allData.loadServerDataFromFile(configUrl,config);
		console.log(config);
	};
	
	
	//图片路径转换
	Model.prototype.toUrl = function(url){
		return url ? require.toUrl(url) : "";
	};
	//点击获得手机认证号按钮
	Model.prototype.btnCodeClick=function(event){
		console.log(config);
		
		var self=this;
		var data=this.comp('regdata').getCurrentRow();
		if(!this.checkAllInput()){
			var mobile=data.val('mobile');
			this.requestingCode.set(true);
			this.comp('timer').start();
			$.ajax({
					'url':"http://"+config.server+"/aiwojia_admin/index.php?m=Home&c=Interface&a=sms",
					'type':'post',
					'async':false,
					'dataType':'json',
					'data':{
						'no':mobile
					},
					success:function(result){
						console.log(result);
						if(result.status==1){
							smsCode=result.code;
						
							console.log('smsCode:'+smsCode);
						}
						if(result.status==-1){
							justep.Util.hint(result.message, {
								type:'warning',
								delay:'2000'
							});
						}
					},
					error:function(result){
						console.log(result);
						justep.Util.hint('网络错误，稍后再试', {
							type:'warning',
							delay:'2000'
						});
					}
			});
		}
	};
	//timer计数
	Model.prototype.dtimerTimer=function(event){
		var times=event.times;
		this.comp('getSmsBtn').set('label',"( "+(60-times)+" )秒后重试");
		if((60-times)<0){
			this.comp('timer').stop();
			this.comp('getSmsBtn').set('label','获取验证码');
			this.requestingCode.set(false);
			
		}
	};
	//check all input
	Model.prototype.checkAllInput=function(){
		var has_error=false;
		var data=this.comp('regdata').getCurrentRow();
		//name
		if(!this.checkName(data.val('name'))){
			this.comp('nameInput').addClass('has-error');
			has_error=true;
		}else{
			this.comp('nameInput').removeClass('has-error');
		}
		//mobile
		if(!this.checkMobile(data.val('mobile'))){
			this.comp('mobileInput').addClass('has-error');
			has_error=true;
		}else{
			this.comp('mobileInput').removeClass('has-error');
		}
		//idno
		/*
		if(!this.checkID(data.val('idno'))){
			this.comp('idInput').addClass('has-error');
			has_error=true;
		}else{
			this.comp('idInput').removeClass('has-error');
		}
		*/
		//password
		if(!this.checkPassword(data.val('password'))){
			this.comp('passwordInput').addClass('has-error');
			has_error=true;
		}else{
			this.comp('passwordInput').removeClass('has-error');
		}
		
		return has_error;
	};
	//点击注册按钮
	Model.prototype.btnRegClick=function(event){
		var self=this;
		var data=this.comp('regdata').getCurrentRow();
		if(!this.checkAllInput()){
			//code
			if(!this.checkCode(this.comp('codeInput').val())){
				this.comp('codeInput').addClass('has-error');
				return;
			}else{
				this.comp('codeInput').removeClass('has-error');
			}
			$.ajax({
				'url':"http://"+config.server+"/aiwojia_admin/index.php?m=Home&c=Interface&a=register",
				'type':'post',
				'async':false,
				'dataType':'json',
				'data':{
					'name':data.val('name'),
					'mobile':data.val('mobile'),
					'password':data.val('password'),
//					'idno':data.val('idno'),
					'code':smsCode
				},
				//beforeSend:self.showLoading,
				//complete:self.hideLoading,
				success:function(result){
					console.log(result);
					if(result.status==1){
						localStorage.setItem('member_name',result.data.name);
							localStorage.setItem('member_id',result.data.member_id);
							localStorage.setItem('member_mobile',result.data.mobile);
						justep.Util.hint("成功注册", {
							type:'success',
							delay:'2000'
						});
						setTimeout("justep.Shell.showPage(require.toUrl('./main.w'))",2000);
					}
					if(result.status==-1){
						justep.Util.hint(result.message, {
							type:'warning',
							delay:'2000'
						});
					}
				},
				error:function(result){
					console.log(result);
					justep.Util.hint('注册失败', {
						type:'warning',
						delay:'2000'
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
	//检查手机
	Model.prototype.checkMobile=function(value){
		console.log(value);
		if(this.isEmpty(value) || !this.isMobile(value)){
			return false;
		}else{
			return true;
		}
	};	
	Model.prototype.checkID=function(value){
		if(this.isEmpty(value) || !this.isID(value)){
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
	//检查验证码
	Model.prototype.checkCode=function(value){
		if(this.isEmpty(value) || this.isEmpty(smsCode) || value!==smsCode){
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
	//检查是否是Email
	Model.prototype.isEmail=function(value){
	
	};
	
	//检查是否是身份证号码
	Model.prototype.isID=function(ID){
		
		if(typeof ID !== 'string') return false;
	    var city = {11:"北京",12:"天津",13:"河北",14:"山西",15:"内蒙古",21:"辽宁",22:"吉林",23:"黑龙江 ",31:"上海",32:"江苏",33:"浙江",34:"安徽",35:"福建",36:"江西",37:"山东",41:"河南",42:"湖北 ",43:"湖南",44:"广东",45:"广西",46:"海南",50:"重庆",51:"四川",52:"贵州",53:"云南",54:"西藏 ",61:"陕西",62:"甘肃",63:"青海",64:"宁夏",65:"新疆",71:"台湾",81:"香港",82:"澳门",91:"国外"};
	    var birthday = ID.substr(6, 4) + '/' + Number(ID.substr(10, 2)) + '/' + Number(ID.substr(12, 2));
	    var d = new Date(birthday);
	    var newBirthday = d.getFullYear() + '/' + Number(d.getMonth() + 1) + '/' + Number(d.getDate());
	    var currentTime = new Date().getTime();
	    var time = d.getTime();
	    var arrInt = [7, 9, 10, 5, 8, 4, 2, 1, 6, 3, 7, 9, 10, 5, 8, 4, 2];
	    var arrCh = ['1', '0', 'X', '9', '8', '7', '6', '5', '4', '3', '2'];
	    var sum = 0, i, residue;
	  
	    if(!/^\d{17}(\d|x)$/i.test(ID)) return false;
	    if(city[ID.substr(0,2)] === undefined) return false;
	    if(time >= currentTime || birthday !== newBirthday) return false;
	    for(i=0; i<17; i++) {
	      sum += ID.substr(i, 1) * arrInt[i];
	    }
	    residue = arrCh[sum % 11];
	    if (residue !== ID.substr(17, 1)) return false;
	    return true;
	        
	};
	//检验手机号码
	Model.prototype.isMobile=function(telphone){
		console.log(telphone);
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
	//专项登录界面
	Model.prototype.btnLoginClick=function(event){
		justep.Shell.showPage('login');
	};
	//show loading
	Model.prototype.showLoading=function(XMLHttpRequest){
		$('.loading-div').removeClass('hidden');
	};
	//hide loading
	Model.prototype.hideLoading=function(XMLHttpRequest, textStatus){
		$('.loading-div').addClass('hidden');
	};
	
	
	return Model;
});