define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	return {
		loadServerDataFromFile : function(url,config) {			
			
			$.ajaxSettings.async = false;
			$.getJSON(url, function(data) {
				console.log(data);
				config.server=data.url;
			});
		}
	};
	
	
});