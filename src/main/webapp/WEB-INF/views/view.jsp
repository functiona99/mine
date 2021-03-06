<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.css" /> 
<link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css" />

<style>
/* .carousel-inner > .carousel-item > img{ width: 640px; height: 720px;  }
  #topMenu {           
              height: 100px; 
              width: 1000px; 
          
                }
   #topMenu ul li {                    
               list-style: none;           
               color: white;               
               background-color: white;  
               float: right;               
               line-height: 30px;          
               vertical-align: middle;    
               text-align: center;    
                
                             
                }
                #topMenu .menuLink {                              
                        text-decoration:none;                      
                        color: black;                              
                        display: inline-block;                            
                        width: 150px;                             
                        font-size: 20px;                          
                        font-weight: bold;          
                        margin-top: 50px;    
             
                     
                }
                #topMenu .menuLink:hover {           
                        color: blue;                  
                   
                }
  
body {
  margin: 0;
}
html, body {
      position: relative;
      height: 100vh;
    }
    body {
      background: #eee;
      font-family: Helvetica Neue, Helvetica, Arial, sans-serif;
      font-size: 14px;
      color:#000;
      margin: 0;
      padding: 0;
    }
    .swiper-container {
      width: 100%;
      height: 100vh;
    }
    .swiper-slide {
      text-align: center;
      font-size: 18px;
      background: #fff;


      display: -webkit-box;
      display: -ms-flexbox;
      display: -webkit-flex;
      display: flex;
      -webkit-box-pack: center;
      -ms-flex-pack: center;
      -webkit-justify-content: center;
      justify-content: center;
      -webkit-box-align: center;
      -ms-flex-align: center;
      -webkit-align-items: center;
      align-items: center;
    }

.swiper-container-vertical>.swiper-pagination-bullets{
    top: unset !important;
    bottom: 10px;
    left: 0;
    width: 100%;
}

.swiper-container-vertical>.swiper-pagination-bullets .swiper-pagination-bullet{
  display : inline-block !important;
  margin: 6px 2px !important;
}
 */
.wrapper {

    display: grid;

    grid-template-columns: 400px 400px 400px;

    grid-template-rows: 400px 400px 400px;

	overflow:hidden;
	
	border-radius:10px;
}

.item1 {
    grid-column-start: 1;
    grid-column-end: 3;

}
.item1 img{
	width:786px;
    height:393px;
    border-radius:10px;
}
.item2 {
    grid-column-start: 3;
    grid-column-end: 4;
}
.item2 img{
	width:393px;
    height:393px;
    border-radius:10px;
}
.item3 {
    grid-row-start: 2;
    grid-row-end: 4;
}
.item3 img{
	width:393px;
    height:786px;
    border-radius:10px;
}
.item4 {
    grid-column-start: 2;
    grid-column-end: 4;
}
.item4 img{
	width:786px;
    height:393px;
    border-radius:10px;
}
.item5 {
    grid-column-start: 2;
    grid-column-end: 3;
}
.item5 img{
	width:393px;
    height:393px;
    border-radius:10px;
}
.item6 {
    grid-column-start: 3;
    grid-column-end: 4;
}
.item6 img{
	width:393px;
    height:393px;
    border-radius:10px;
}


</style>

<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>
<jsp:include page="nav.jsp"/>
<div class="wrapper">
    <div class="item1"><img src="https://picsum.photos/786/393"></div>

    <div class="item6"><img src="https://picsum.photos/500/393"></div>

    <div class="item3"><img src="https://picsum.photos/500/786"></div>

    <div class="item4"><img src="https://picsum.photos/786/393"></div>

    <div class="item5"><img src="https://picsum.photos/800/393"></div>

    <div class="item6"><img src="https://picsum.photos/393/393"></div>

</div>
 
 <div class="row">
 	<div>
 	
 	</div>
 </div>

<!-- <div class="swiper-container">
  ???????????? ??????
  <div class="swiper-wrapper">
    div class="swiper-slide" ??? ??????????????????
    <div class="swiper-slide">Slide 1</div>
    <div class="swiper-slide">Slide 2</div>
    <div class="swiper-slide">Slide 3</div>
  </div>
  ????????? ?????? ??????
  <div class="swiper-pagination"></div>

  ?????? ?????? ????????? ?????? ?????? ????????????
  <div class="swiper-button-prev"></div>
  <div class="swiper-button-next"></div>
</div> -->

<!-- <div class="row">
    <nav id="topMenu" >
                <ul>
                        <li><a class="menuLink" href="#">SCHEDULE</a></li>
                        <li><a class="menuLink" href="#">POSTING REGISTER</a></li>
                        <li><a class="menuLink" href="#">PORTFOLIO</a></li>
                        
                </ul>
        </nav>
</div>
 		
 		<nav aria-label="breadcrumb" class="justify-content-center">
  <ol class="breadcrumb">
    <li class="breadcrumb-item"><a href="#">Home</a></li>
    <li class="breadcrumb-item"><a href="#">Library</a></li>
    <li class="breadcrumb-item active" aria-current="page">Data</li>
  </ol>
</nav>
 -->
 <jsp:include page="footer.jsp"/>
<script src="https://unpkg.com/swiper/swiper-bundle.js"></script> 
<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.min.js" integrity="sha384-Atwg2Pkwv9vp0ygtn1JAojH0nYbwNJLPhwyoVbhoPwBhjQPR5VtM2+xf0Uwh9KtT" crossorigin="anonymous"></script>
<script>
const swiper = new Swiper('.swiper-container', {
	  //?????? ??????
	  //?????? ?????? vertical ??????, horizontal ?????? ????????? ????????? ??????
	  direction: 'horizontal',
	  //????????? ???????????? ????????? ??????
	  slidesPerView: 1,
	  //???????????? ????????? ????????? ??????
	  spaceBetween: 30,
	  //????????? ?????? true ???????????? false ????????????
	  debugger: true,
	  //????????? ????????? true ???????????? false ????????????
	  mousewheel: true,
	  //?????? ?????? true ???????????? false ????????????
	  loop: true,
	  //????????? ??????????????? ???????????? true ???????????? false ???????????? djqt
	  centeredSlides: true,
	  // ????????? ???????????? slidesPerView????????? ?????? ?????? ??????
	  // effect: 'fade',
	  
	  
	  //?????? ????????????
	  autoplay: {
	    //?????? 1000 ??? 1???
	    delay: 2500,
	    disableOnInteraction: false,
	   },
	  
	  //?????????
	  pagination: {
	    //????????? ??????
	    el: '.swiper-pagination',
	    //?????? ????????????
	    clickable: true,
	  },

	  //?????????
	  navigation: {
	    //??????????????? ??????
	    nextEl: '.swiper-button-next',
	    //??????????????? ??????
	    prevEl: '.swiper-button-prev',
	  },
	  
	});

</script>
</body>
</html>