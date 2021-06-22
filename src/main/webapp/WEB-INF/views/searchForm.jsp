<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>메인 검색</h1>
<div>
	<form>
		<div class="search">
		<select name="type">
			<option value="">===OPTION</option>
			<option value="T">title</option>
			<option value="C">content</option>
		</select>
			<input type="text" id="keyword" placeholder="검색어를 입력하세요">
			<button type="button" id="btn-main-find">검색</button>
		</div>
	</form>
</div>

<%-- <form id='searchForm' action='/main/list' method='get'>
							<select name='type'>
								<option value="" <c:out value="${pageMaker.cri.type==null?'selected':'' }"/>>--</option>
								<option value="T" <c:out value="${pageMaker.cri.type eq 'Ti'?'selected':'' }"/>>제목</option>
								<option value="C" <c:out value="${pageMaker.cri.type eq 'Co'?'selected':'' }"/>>내용</option>
								<option value="W" <c:out value="${pageMaker.cri.type eq 'Ca'?'selected':'' }"/>>카테고리</option>
								<option value="TC" <c:out value="${pageMaker.cri.type eq 'TiCo'?'selected':'' }"/>>제목or내용</option>
								<option value="TW" <c:out value="${pageMaker.cri.type eq 'TiCa'?'selected':'' }"/>>제목or카테고리</option>
								<option value="TCW" <c:out value="${pageMaker.cri.type eq 'TiCoCa'?'selected':'' }"/>>제목or내용or카테고리</option>							
							</select>
							<input type='text' name='keyword' value='<c:out value="${pageMaker.cri.keyword }"/>'/>
							<input type='hidden' name='pageNum' value='${pageMaker.cri.pageNum }'/>
							<input type='hidden' name='amount' value='${pageMaker.cri.amount }'/>
							<button class='btn btn-info'>Search</button>
						</form> --%>

</body>
<script type="text/javascript" src="/resources/js/search.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	
	var keyword = $(".search").find("input[name='keyword']"); 
	/* var _this = this; */
	
	$("btn-main-find").on("click",function(e){
		/* var keyword={
				keyword: searchKeyword.val()
		}; */
		mainService.get(keyword,function(list){
			alert(result);
		});
		/* _this.find(); */
		
	});

});

</script>
</html>