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
		var check=justep.String.trim(this.comp('end').val());
		var self=this;
		if(check===''){
			this.comp('end').addClass('has-error');
		}else{
			this.comp('end').removeClass('has-error');
			var type=this.comp('r_pt').get('checked')?'普通型':'豪华型';
			var start=this.comp('r_gx').get('checked')?'高新嘉园':'高实馨城';
			var date=this.comp('s_date').val();
			
			var hour=this.comp('s_hour').val();
			
			var minute=this.comp('s_minute').val();
			var end=this.comp('end').val();
			var member_id=this.member_id;
			$.ajax({
					'url':"http://"+config.server+"/aiwojia_admin/index.php?m=Home&c=Interface&a=registerCar",
					'type':'post',
					'async':false,
					'dataType':'json',
					'data':{
						'type':type,
						'start':start,
						'date':date,
						'hour':hour,
						'minute':minute,
						'end':end,
						'member_id':member_id
					},
					success:function(result){
						console.log(result);
						if(result.status==1){
							self.comp('msg').show({message:result.message});
							self.comp('r_pt').set({checked:true});
							self.comp('r_gx').set({checked:true});
							self.comp('s_date').val('明天');
							self.comp('end').val('');
							
							
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