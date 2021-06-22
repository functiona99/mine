/**
 * 
 */
 
 /*유선영 - 전체 검색 로직 구현*/
 
console.log("search Module");
var mainService=(function(){
	
	
		function findByKeyword1(param, callback, error){
			var type = param.type;
			var keyword = param.keyword;

			
			$.getJSON("/search/type/"+type+"/keyword/"+keyword+".json", 
				function(data){
					if(callback){
						callback(data.list);
					}
				}).fail(function(xhr, status, err){
					if(error){
						error();
					}
				});		
			
		}
		

		function findByKeyword2(param, callback, error){
	
		var tagArr = param.tagArr;
			
		$.getJSON("/search/tag/"+tagArr+".json", 
				function(data){
					if(callback){
						callback(data.list);
					}
				}).fail(function(xhr, status, err){
					if(error){
						error();
					}
				});		
				
			}
			
		function findByKeyword3(param, callback, error){
	
		var location = param.location;
			
		$.getJSON("/search/location/"+location+".json", 
				function(data){
					if(callback){
						callback(data.list);
					}
				}).fail(function(xhr, status, err){
					if(error){
						error();
					}
				});		
				
			}
			
		function findByKeyword4(param, callback, error){
	
		var location = param.location;
		var tagArr = param.tagArr;
		console.log(location, tagArr);
		
		$.getJSON("/search/location/"+location+"/tag/"+tagArr+".json", 
				function(data){
					if(callback){
						callback(data.list);
					}
				}).fail(function(xhr, status, err){
					if(error){
						error();
					}
				});		
				
			}
			
		function findByKeyword5(param, callback, error){
	
		var type = param.type;
		var keyword = param.keyword;
		var tagArr = param.tagArr;
			
		$.getJSON("/search/type/"+type+"/keyword/"+keyword+"/tag/"+tagArr+".json", 
				function(data){
					if(callback){
						callback(data.list);
					}
				}).fail(function(xhr, status, err){
					if(error){
						error();
					}
				});		
				
			}	
			
		function findByKeyword6(param, callback, error){
	
		var type = param.type;
		var keyword = param.keyword;
		var location = param.location;
			
		$.getJSON("/search/type/"+type+"/keyword/"+keyword+"/location/"+location+".json", 
				function(data){
					if(callback){
						callback(data.list);
					}
				}).fail(function(xhr, status, err){
					if(error){
						error();
					}
				});		
				
			}	
		function findByKeyword7(param, callback, error){
	
		var type = param.type;
		var keyword = param.keyword;
		var location = param.location;
		var tagArr = param.tagArr;
			
		$.getJSON("/search/type/"+type+"/keyword/"+keyword+"/location/"+location+"/tag/"+tagArr+".json", 
				function(data){
					if(callback){
						callback(data.list);
					}
				}).fail(function(xhr, status, err){
					if(error){
						error();
					}
				});		
				
			}	
		
	return {
		findByKeyword1:findByKeyword1,
		findByKeyword2:findByKeyword2,
		findByKeyword3:findByKeyword3,
		findByKeyword4:findByKeyword4,
		findByKeyword5:findByKeyword5,
		findByKeyword6:findByKeyword6,
		findByKeyword7:findByKeyword7
		
	}	
	
})();