<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- 유선영 - 전체 검색 로직 구현 -->

<jsp:include page="include/header.jsp"/>

<h1>메인 검색</h1>
<div>
	<form>
		<div class="search">
			
			<select name="location" id="type">
				<option value="">지역</option>
				<option value="2001">서울</option>
				<option value="2002">인천</option>
				<option value="2003">부산</option>
			</select>
			<!-- onchange="makeFilter(this);" -->
			<input type="checkbox" name="tag" value="1001" onchange="makeFilter(this);"/> 싱그러운
			<input type="checkbox" name="tag" value="1002" onchange="makeFilter(this);"/> 밝은
			<input type="checkbox" name="tag" value="1003" onchange="makeFilter(this);"/> 행복한
			<input type="checkbox" name="tag" value="1004" onchange="makeFilter(this);"/> 다크한
			<br> 필터입력값 : <input type="text" id="showFilter"/> <!--필터확인용, 기능과 무관함 -->
			
			
			<select name="type" id="type">
				<option value="">===OPTIO</option>
				<option value="T">title</option>
				<option value="C">content</option>
				<option value="TC">title/content</option>
			</select>
			
			<input type="text" id="keyword" name="keyword" placeholder="검색어를 입력하세요">
			
			<button type="button" id="btn-main-find">검색</button>
		</div>
	</form>
</div>
<div class="searchResult">
	<ul>
	
	</ul>
</div>




<!-- 다중검색 -->
		<div class="row justify-content-sm-center">
			<!-- 카테고리 -->
			<div class="col-sm-1">
				<input type="hidden" value="">
			</div>
			<div class="col-sm-2">
			<!-- 지역 -->
				<select class="form-select" aria-label=".form-select-sm example" name="" id="">
					  <option selected>지역</option>
					  <option value="S">서울</option>
					  <option value="I">인천</option>
					  <option value="B">부산</option>
					</select>
			</div>
			<!-- 분위기 -->
			<div class="col-sm-1">
				<!-- Button trigger modal -->
				<button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#staticBackdrop">
					태그
				</button>
			</div>
			
			<div class="col-sm-2">	
				<input class="form-control md-2" name="hashTag" placeholder="분위기" aria-label="Search" readOnly>
			</div>
			
			
			
			<div class="col-sm-3">
				<input class="form-control md-2" type="search" placeholder="Search" aria-label="Search">
				<!-- <form class="form-inline my-2 my-lg-0">
			      <input class="form-control md-2" type="search" placeholder="Search" aria-label="Search">
			    </form>	 -->
			</div>
			<div class="col-sm-1">
			<button class="btn btn-outline-success lg-1" type="submit">Search</button>
			</div>
		</div>
		
		<!-- Modal -->
				<div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
				  <div class="modal-dialog">
				    <div class="modal-content">
				      <div class="modal-header">
				        <h5 class="modal-title" id="staticBackdropLabel">분위기</h5>
				        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
				      </div>
				      <div class="modal-body">
				        ...
				      </div>
				      <div class="modal-footer">
				        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
				        <button type="button" class="btn btn-primary">선택하기</button>
				      </div>
				    </div>
				  </div>
				</div>

</body>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript" src="./resources/js/search.js"></script>
<script type="text/javascript">
	
	var tagArr = new Array(); //필터 내용을 저장하는 배열 
	var showFilterValue = document.getElementById("showFilter");//필터입력값 보여주기 위한 text 
	//필터 내용을 저장하는 
	function makeFilter(target){ 
		var tag = target.value; //check value 
		var confirmCheck = target.checked; //check여부 확인 
		console.log("필터 선택값 : "+tag); 
		console.log("선택여부 : "+confirmCheck); // check true 
		if(confirmCheck == true){ 
			console.log("check"); 
			tagArr.push(tag); // check value filter 배열에 입력 // check false 
			
		}else{ 
			tagArr.splice(tagArr.indexOf(tag), 1); // check value filter 배열내용 삭제 
		} 
		var tagArr1 = tagArr.join(" ");
		showFilterValue.value = tagArr1; // textBox에 필터 배열 추가 
		console.log("필터입력값 출력 : "+tagArr); } 



$(document).ready(function(){
	
	console.log(mainService);
	
	/* var keyword = $("#keyword").val();
	var type = $(".type").val(); */
		
	
	$("#btn-main-find").on("click",function(e){
		
		$(".searchResult ul").empty();
		
		//var tag= $(".search").find("checkbox[name='tag']").val();
		var location= $(".search").find("select[name='location']").val();
		var keyword= $(".search").find("input[name='keyword']").val().replace(/\s/gi, "");
		var type= $(".search").find("select[name='type']").val();
		var tag = $(".search").find("input:checkbox[name='tag']:checked").val();
		var tagArr = [];

		keyword.replace(/\s/gi, "");
		
		console.log("trim"+keyword);
		
		$('input:checkbox[name="tag"]').each(function(){
			if(this.checked){
				tagArr.push($(this).val());
			}
		})
	
		console.log(tagArr);
		
		
		
		 if(keyword!=null && type!=null && tagArr=='' && location==''){
				mainService.findByKeyword1({keyword: keyword, type:type}, 
				function(list){
				console.log(list);
				var str = "";
				var sResult = $(".searchResult ul")
				$(list).each(function(i,obj){
					str += "<li>"+obj.sno+"</li>" 	
				})
				sResult.append(str);
			})
		 }  //키워드랑 타입이 널이 아니라면
		else if(keyword=='' && type=='' && tagArr!=null && location==''){
		 	mainService.findByKeyword2({tagArr:tagArr},
				function(list){
				console.log(list);
				var str = "";
				var sResult = $(".searchResult ul")
				$(list).each(function(i,obj){
					str += "<li>"+obj.sno+"</li>" 	
				})
				sResult.append(str);
			})
			
		}//tagArr이 널이 아니라면
		else if(keyword=='' && type=='' && tagArr=='' && location!=null) {
			mainService.findByKeyword3({location:location},
				function(list){
				console.log(list);
				var str ="";
				var sResult = $(".searchResult ul")
				$(list).each(function(i,obj){
					str += "<li>"+obj.sno+"</li>" 	
				})
				sResult.append(str);
			})
			
		}else if(keyword=='' && type=='' && tagArr!=null && location!=null) {
			mainService.findByKeyword4({location:location, tagArr:tagArr},
					function(list){
					console.log(list);
					var str ="";
					var sResult = $(".searchResult ul")
					$(list).each(function(i,obj){
						str += "<li>"+obj.sno+"</li>" 	
					})
					sResult.append(str);
				})
		}//tag랑 location
		else if(keyword!=null && type!=null && tagArr!=null && location=='') {
			mainService.findByKeyword5({keyword: keyword, type:type, tagArr:tagArr},
					function(list){
					console.log(list);
					var str ="";
					var sResult = $(".searchResult ul")
					$(list).each(function(i,obj){
						str += "<li>"+obj.sno+"</li>" 	
					})
					sResult.append(str);
				})
		}
		else if(keyword!=null && type!=null && tagArr=='' && location!=null) {
			mainService.findByKeyword6({keyword: keyword, type:type, location:location},
					function(list){
					console.log(list);
					var str ="";
					var sResult = $(".searchResult ul")
					$(list).each(function(i,obj){
						str += "<li>"+obj.sno+"</li>" 	
					})
					sResult.append(str);
				})
		}
		else if(keyword!=null && type!=null && tagArr!=null && location!=null) {
			mainService.findByKeyword7({type:type, keyword: keyword, location:location, tagArr:tagArr},
					function(list){
					console.log(list);
					var str ="";
					var sResult = $(".searchResult ul")
					$(list).each(function(i,obj){
						str += "<li>"+obj.sno+"</li>" 	
					})
					sResult.append(str);
				})
		}
		else{
			console.log("정보를 입력해주세요");
		}
		
	});
	
	/* function appendList(resultArr){
		var str = "";
		var sResult = $(".searchResult ul")
		$(resultArr).each(function(i,obj){
			str += "<li>"+obj+"</li>" 	
		})
		sResult.append(str);
	}
	$.getJSON("/search/{type}/{keyword}")
 */
 
 
	/* var cri = {
	keyword: $(".search").find("input[name='keyword']").val(),
	type: $(".search").find("select[name='type']").val()
}
mainService.findByKeyword(cri,function(result){
alert(result.type, result.keyword);
console.log(result);
appendList(result)
}); */
 
});


</script>
</html>