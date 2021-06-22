<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
   <!DOCTYPE html>
<html>
<head>
  <!--   <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous"> -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link rel="stylesheet"
   href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
   integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
   crossorigin="anonymous">
   
<!-- 유선영 - 의뢰게시판 구현 -->
 <style>
.banner{width: 100%;}
.row, .form-group{padding:20px;}
th, tr, td{text-align:center;}
h2{text-align:center;padding-top:}
thead tr td {font-weight:bold;}
#write{
font-size:15px; 
margin-bottom:10px;
}
 </style>   
 </head>
 <body>
<jsp:include page="../nav.jsp"/>

<!-- CSS only -->

<img alt="" class="banner" src="../resources/images/couple.jpg">
<div class="container">
	
		<h2>의뢰게시판</h2>
	
	<div class="row">
	   <table class="table table-hover">
         <thead>
         	<tr>
               <td scope="col" style="width:10%">접수중</td>
               <td scope="col" style="width:15%">지역</td>
               <td scope="col" style="width:40%">제목</td>
               <td scope="col" style="width:15%">작성자</td>
               <td scope="col" style="width:10%">희망날짜</td>
               <td scope="col" style="width:10%">접수마감</td>
            </tr>
         </thead>
         <tbody>
            <tr>
               <td><span class="badge bg-primary">Primary</span></td>
               <td>서울</td>
               <td>안녕하세요</td>
               <td>나나</td>
               <td>202020</td>
               <td>202020</td>
            </tr>
         </tbody>
         <tfoot>
         	<tr>
         		<th>
	         		<select class="form-control" id="exampleFormControlSelect1">
		                <option>지역</option>
		                <option>서울</option>
		                <option>인천</option>
		                <option>대전</option>
		            </select>     
	            </th>
         		<th>
         		  <input type="text" class="form-control" id="inputCity">
         		</th>
         		<th>
         			<button type="submit" class="btn btn-primary">검색</button>
         		</th>
         		<th></th><th></th>
         		<th><span class="badge bg-secondary" id="write" style="text-align:center; display:flex;justify-content:center;margin:auto 0; ">글쓰기</span></th>
         	</tr>
         </tfoot>
		</table>
	</div>
	
		<!-- <div class="row justify-content lg-center">
		<div class="form-group">
			<div class="col col-lg-2">
	            <select class="form-control" id="exampleFormControlSelect1">
	                <option>지역</option>
	                <option>서울</option>
	                <option>인천</option>
	                <option>대전</option>
	            </select>     
			</div>
			<div class="col col-lg-2">
			    <input type="text" class="form-control" id="inputCity">
			</div>
			<div class="col col-sm-1">
			    <button type="submit" class="btn btn-primary">검색</button>
			</div>
		</div>
	</div> -->
</div>
<jsp:include page="../footer.jsp"/>
</body>
</html>
