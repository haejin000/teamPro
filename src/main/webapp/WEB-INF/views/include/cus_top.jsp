<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="../include/inc.jsp" %>
<style>
.count{color:#333;font-size:18px}
</style>
<div id="container">
	<div class="cuswrap innerContent">
		<div class="content_tit">
		<div class="member_tit"><h1 class="sub_tit">공지사항</h1></div>
		<ul class="sub_menu">
		
		<c:if test="${flist=='flist'}">
			<li class="on"><a href="${pageContext.request.contextPath}/board/flist">${aa}</a></li>
			<li><a href="${pageContext.request.contextPath}/board/blist">1:1문의</a></li>
			
		</c:if>
		<c:if test="${blist=='blist'}">
			<li><a href="${pageContext.request.contextPath}/board/flist">공지사항</a></li>
			<li class="on"><a href="${pageContext.request.contextPath}/board/blist">1:1문의</a></li>
			<!-- <li class="count"></li> -->
		</c:if>
			
		</ul>
	</div><!--content_tit-->
		<div class="notice">
	<div class="page_info">
		<div class="total">총 <em id="r_cnt">${pageDTO.count}</em> 건 (<em class="hilite" id="now_page">1</em>/<em id="total_page">1</em>페이지)</div>
	</div>
	

 
 <script>
 $(function() {	 
  var cnt0 = 0;
  counterFn();
  function counterFn() {
    id0 = setInterval(count0Fn, 1000);
    function count0Fn() {
      cnt0++;	    
      if (cnt0 > 99) {
          clearInterval(id0);
        } else {
          $(".count").text(cnt0);
        }
    }
  }
});	

 </script>