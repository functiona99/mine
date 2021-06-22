<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<html>
<head>
<!--   <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous"> -->
<meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet"
   href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
   integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
   crossorigin="anonymous">
<style>
.banner{width:100%;}


.head{text-align:center; display:flex;justify-content:center;margin:auto 0; padding-bottom:10px; padding-top:15px;}
.head div{list-style: none;color: white;background-color: white; float:left;line-height: 10px; vertical-align: middle; text-align: center;}
.head div{margin-right:20px;text-decoration:none;color: black;font-size: 20px;}
.head .stat{float:left; font-size:15px;}
.head .title{font-size:20px;}
.head .loc{float:right; font-size:10px;}
</style>    
</head>
<body>
<jsp:include page="../nav.jsp"/>
<img alt="" class="banner" src="../resources/images/couple.jpg">
	
<div class="container">

	<form>
	  <div class="form-row">
	  
	  	<div class="form-group col-md-12">
	  		<span class="badge bg-default" id="write">상태</span>
	  	</div>
	    <div class="form-group col-md-6">
	      <label for="inputEmail4">Email</label>
	      <input type="email" class="form-control" id="inputEmail4">
	    </div>
	    <div class="form-group col-md-6">
	      <label for="inputPassword4">Password</label>
	      <input type="password" class="form-control" id="inputPassword4">
	    </div>
	  </div>
	  <div class="form-group">
	    <label for="inputAddress">Address</label>
	    <input type="text" class="form-control" id="inputAddress" placeholder="1234 Main St">
	  </div>
	  <div class="form-group">
	    <label for="inputAddress2">Address 2</label>
	    <input type="text" class="form-control" id="inputAddress2" placeholder="Apartment, studio, or floor">
	  </div>
	  <div class="form-row">
	    <div class="form-group col-md-6">
	      <label for="inputCity">City</label>
	      <input type="text" class="form-control" id="inputCity">
	    </div>
	    <div class="form-group col-md-4">
	      <label for="inputState">State</label>
	      <select id="inputState" class="form-control">
	        <option selected>Choose...</option>
	        <option>...</option>
	      </select>
	    </div>
	    <div class="form-group col-md-2">
	      <label for="inputZip">Zip</label>
	      <input type="text" class="form-control" id="inputZip">
	    </div>
	  </div>
	  <div class="form-group">
	    <div class="form-check">
	      <input class="form-check-input" type="checkbox" id="gridCheck">
	      <label class="form-check-label" for="gridCheck">
	        Check me out
	      </label>
	    </div>
	  </div>
	  <button type="submit" class="btn btn-primary">Sign in</button>
	</form>

</div>
<jsp:include page="../footer.jsp"/>
</body>
</html>