<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>GH SHOP</title>
    <link rel="stylesheet" href="./css/reset.css">
    <link rel="stylesheet" href="./css/main.css">
	<link rel="stylesheet" href="./css/sub.css">
	<link rel="stylesheet" href="./css/style.css">
    <script src="./js/jquery-3.5.1.min.js"></script>
    <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css" />
    <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
    <script src="https://kit.fontawesome.com/dd43a0e2b4.js" crossorigin="anonymous"></script>
	<script src="./js/jquery.js"></script>
</head>

<body>
<div id="container">			
	<div class="cart_wrap_mo innerContent">
		<!-- 전체선택 버튼 -->
		<div class="goods_chk_all">
			<div class="checkbox">
			<input type="checkbox" class="btn_select_all" checked="checked">
			<span class="txt">전체선택</span>
			</div>
			<div class="btn"><button type="button" class="btn_cle btn_st1">선택삭제</button></div>
		</div>	
		<!-- 전체선택 버튼 -->				
		
		<!-- 제품리스트 1 -->	
		<div class="cart_goods_box">				
			<div class="goods_chk">
				<input type="checkbox" checked="checked">
			</div><!-- goods_chk -->
			<div class="cart_goods_list">
				<div class="img_area">
					<a href=""><img src="images/22.jpg" class="goods_thumb"></a>
				</div>
				<div class="option_area">
					<ul>
						<li class="name">노블 울트라스피루리나180정 노블 울트라스피루리나180정</li>
						<li class="baesong">배송 : <span class="s1">무료배송</span></li>
						<li class="price_mo"><b>30,000</b>원</li>
					</ul>
				</div>
			</div><!-- cart_goods_list -->
			<div class="price_total">
				<span class="ptitle">합계 : </span>
				<span class="total_p"><b>30,000</b>원</span>
			</div>
			<div class="btn_wrap">
				<ul>
					<li><button type="button" class="btn_buy btn_st1">주문하기</button></li>
					<li><button type="button" class="btn_mod btn_st1">주문수정</button></li>				
					<li><button type="button" class="btn_fav btn_st1">관심상품</button></li>
					<li><button type="button" class="btn_cle btn_st1">삭제</button></li>
				</ul>
			</div>
		</div><!--cart_goods_box 각 제품리스트 -->	
		<!-- 제품리스트 1 -->
		
		<!-- 제품리스트 2 -->	
		<div class="cart_goods_box">				
			<div class="goods_chk">
				<input type="checkbox" checked="checked">
			</div><!-- goods_chk -->
			<div class="cart_goods_list">
				<div class="img_area">
					<a href=""><img src="images/22.jpg" class="goods_thumb"></a>
				</div>
				<div class="option_area">
					<ul>
						<li class="name">노블 울트라스피루리나180정 노블 울트라스피루리나180정</li>
						<li class="baesong">배송 : <span class="s1">무료배송</span></li>
						<li class="price_mo"><b>30,000</b>원</li>
					</ul>
				</div>
			</div><!-- cart_goods_list -->
			<div class="price_total">
				<span class="ptitle">합계 : </span>
				<span class="total_p"><b>30,000</b>원</span>
			</div>
			<div class="btn_wrap">
				<ul>
					<li><button type="button" class="btn_buy btn_st1">주문하기</button></li>
					<li><button type="button" class="btn_mod btn_st1">주문수정</button></li>				
					<li><button type="button" class="btn_fav btn_st1">관심상품</button></li>
					<li><button type="button" class="btn_cle btn_st1">삭제</button></li>
				</ul>
			</div>
		</div><!--cart_goods_box 각 제품리스트 -->
		<!-- 제품리스트 2 -->	

		<!-- 총합계내역 -->
		<div class="price_total_box">
			<div class="baesong_total">
				<div class="tit">배송비</div>
				<div class="con"><span>2건 함께주문시</span><b>2,500</b>원</div>
			</div>
			<!--<div class="btn_wrap">
				<ul>
					<li><button type="button" class="btn_modify btn_resp">전체선택</button></li>
					<li><button type="button" class="btn_buy btn_resp">선택삭제</button></li>
				</ul>
			</div>cart_goods_btn_wrap -->
			<div class="price_total_wrap">
				<h2 class="title">전체 합계</h2>
				<ul>
					<li class="pnum">
						<div class="tit">상품수</div>
						<div class="con"><b>1</b>개</div>
					</li>
					<li class="price">
						<div class="tit">상품금액</div>
						<div class="con"><b>60,000</b>원</div>
					</li>
					<li class="sale">
						<div class="tit">할인금액</div>
						<div class="con"><b>0</b>원</div>
					</li>
					<li class="baesong">
						<div class="tit">배송비</div>
						<div class="con"><b>2,500</b>원</div>
					</li>
				</ul>
				<div class="price_total">
					<div class="tit">전체 주문금액</div>
					<div class="con"><b>62,500</b>원</div>
				</div>
			</div>									
		</div><!-- price_total_all -->	
		<!-- 총합계내역 -->
		
		<!-- 주문 버튼 -->
		<div class="cart_order_btn_wrap">			
			<button type="button" class="all_order">전체상품주문</button>
			<button type="button" class="sele_order">선택상품주문</button>				
		</div><!-- cart_order_btn_area -->
		<!-- 주문 버튼 -->
	</div><!--cartwrap-->
</div><!--container-->

</body>

</html>
