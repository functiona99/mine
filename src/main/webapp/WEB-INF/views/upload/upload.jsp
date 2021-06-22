<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>${upload}</h1>

<div class="uploadForm">
	<input type="file" name ="files" class="uploadFile" multiple="multiple"> <!-- multiple은 다중선택하게해주는 것이지 동시에 다 가는 게 아님 따로 설정해야함 -->
	<button type="submit" class="inputFiles">제출</button>
</div>

<ul class="result">
	<li></li>
</ul>

</body>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript">

	$(document).ready(function(){
		$(".inputFiles").on("click", function(){
			//버튼을 눌렀을 때 처리하는 동작 function(e)는 안에 있을 때
			var formTag = new FormData();//html 상에 없는 form 태그 만들어줌
			var files = $("input[name='files']");//input태그에 접근함
			//files를 배열 처리 안 하면 맨 처음꺼만 들어가니까 input name 정의해서 for문 돌림
			var images = files[0].files;//[0]번 인덱스를 통해서만 각각의 파일 정보에 접근이 가능하다 .files=일종의 메소드
			
			console.log(images);
			
			for(var i=0;i<images.length;i++){
			//다중선택된 파일들을 제출 버튼 클릭 시 가상의 폼 태그를 input된 파일들을(image로 정의함) append를 계속 시켜준다
				formTag.append("files",images[i]);//files는 input name이고 images배열
			}
			
			
		});
		
	});//document
	
</script>
</html>