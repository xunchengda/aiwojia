define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var configData = require("../js/loadConfig");
	var config={};
	var Model = function(){
		this.callParent();
		var configUrl = require.toUrl("../config/config.json");
		configData.loadServerDataFromFile(configUrl,config);
	};
	Model.prototype.backBtnClick = function(event){
		justep.Shell.closeAllOpendedPages();
	};
	Model.prototype.dateChange = function(event){
		var date=this.comp('s_date').val();
		var dateObj=this.comp('date');
		var hourObj=this.comp('hour');
		hourObj.clear();
		var hour_j=[];
		if(date=='今天'){

			var d=new Date();
			var hour=d.getHours();
			
			for(var i=hour+1;i<22;i++){
				hour_j.push({id:i,hour:i+'点',val:i});
			}
			hourObj.loadData(hour_j);
		}else{
			for(var i=7;i<22;i++){
				hour_j.push({id:i,hour:i+'点',val:i});
			}
			hourObj.loadData(hour_j);
		
		}
	};

	Model.prototype.confirmClick = function(event){
		var end=justep.String.trim(this.comp('end').val());
		if(end==''){
			this.comp('end').addClass('has-error');
		}else{
			this.comp('end').removeClass('has-error');
			var type=$("[name='type']:checked").val();
			alert(type);
			var start=this.comp('start').val();
			var date=this.comp('date').val();
			var hour=this.comp('s_hour').val();
			var minute=this.comp('s_minute').val();
			var end=this.comp('end').val();
			return;
			$.ajax({
					'url':"http://"+config.server+"/aiwojia_admin/index.php?m=Home&c=Interface&a=registerCar",
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
							//localStorage.setItem('user',JSON.stringify(result.data));
							localStorage.setItem('member_name',result.data.name);
							localStorage.setItem('member_id',result.data.member_id);
							localStorage.setItem('member_mobile',result.data.mobile);
							justep.Shell.showPage(require.toUrl('./main.w'));
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

	Model.prototype.endBlur = function(event){
		var end=justep.String.trim(this.comp('end').val());
		if(end==''){
			this.comp('end').addClass('has-error');
		}else{
			this.comp('end').removeClass('has-error');
		}
	};

	return Model;
});