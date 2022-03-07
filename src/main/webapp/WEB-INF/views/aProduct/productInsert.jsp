<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>GH SHOP</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/reset.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/admin.css">
<script src="./js/jquery-3.5.1.min.js"></script>
</head>


<body>



	<div id="seller_wrap">
		<div id="seller_top" class="item1">
			<a>GHSHOP 관리자센터</a>
			<div class="seller_top_right">
				<span>ADNUIN 관리자님</span><span><button>로그아웃</button></span>
			</div>
		</div>
		<!--  left menu -->
		<div id="seller_lnb" class="item2">
			<div class="store">
				<a href="/">GH SH<span>O</span>P
				</a>
			</div>
			<ul class="seller_menu">
				<li><a class="seller_menu_tit">상품관리</a>
					<ol class="seller_menu_con">
						<li><a href="#">submenu01</a></li>
						<li><a href="#">submenu02</a></li>
					</ol></li>
				<li><a class="seller_menu_tit">쿠폰관리</a>
					<ol class="seller_menu_con">
						<li><a
							href="${pageContext.request.contextPath}/aEvent/newCoupon">submenu01</a></li>
						<li><a href="#">submenu02</a></li>
					</ol></li>
				<li><a class="seller_menu_tit">회원관리</a>
					<ol class="seller_menu_con">
						<li><a href="#">submenu01</a></li>
						<li><a href="#">submenu02</a></li>
					</ol></li>
				<li><a class="seller_menu_tit">menu04</a>
					<ol class="seller_menu_con">
						<li><a href="#">submenu01</a></li>
						<li><a href="#">submenu02</a></li>
					</ol></li>
			</ul>
		</div>

		<div id="seller_content" class="item3">
			<div class="local_ov01 local_ov">
				<a href="" class="ov_listall">전체목록</a> <span class="btn_ov01"><span
					class="ov_txt">등록된 상품</span><span class="ov_num"> 59건</span></span>
			</div>

			<form name="flist" class="local_sch01 local_sch">
				<input type="hidden" name="save_stx" value=""> <label
					for="sca" class="sound_only">분류선택</label> <select name="sca"
					id="sca">
					<option value="">전체분류</option>
					<option value="">분류1</option>
					<option value="">분류2</option>
				</select> <label for="sfl" class="sound_only">검색대상</label> <select name="sfl"
					id="sfl">
					<option value="it_name" selected="selected">상품명</option>
					<option value="it_id">상품코드</option>
					<option value="it_maker">제조사</option>
					<option value="it_origin">원산지</option>
					<option value="it_sell_email">판매자 e-mail</option>
				</select> <label for="stx" class="sound_only">검색어</label> <input type="text"
					name="stx" value="" id="stx" class="frm_input">
				<button type="submit" value="검색" class="btn_submit">검색</button>
			</form>




			<div id="listdiv">

				<form role="form" method="post" autocomplete="off"
					enctype="multipart/form-data" action="#">

					<div class="inputArea">
						<label>1차 분류</label> <select class="category1">
							<option value="">전체</option>
							<option value="">식품</option>
							<option value="">예제1</option>
						</select> <label>2차 분류</label> <select class="category2" name="cateCode">
							<option value="">전체</option>
							<option value="">건강</option>
							<option value="">예제2</option>
						</select>
					</div>

					<div class="inputArea">
					<label for="goodsNo">상품번호</label> <input type="text" id="goodsNo"
							name=goodsNo" />
						<label for="goodsNm">상품명</label> <input type="text" id="goodsNm"
							name="goodsNm" />
							<label for="makerNm">제조사</label> <input type="text" id="makerNm"
							name="makerNm" />
							<label for="originNm">원산지</label> <input type="text" id="originNm"
							name="originNm" />
					</div>

					<div class="inputArea">
					<label for="goodsModelNo">모델명</label> <input type="text"
							id="goodsModelNo" name="goodsModelNo" />
						<label for="goodsPrice">상품가격</label> <input type="text"
							id="goodsPrice" name="goodsPrice" />
							<label for="fixedPrice">정가</label> <input type="text"
							id="fixedPrice" name="fixedPrice" />
					</div>

					<div class="inputArea">
						<label for="totalStock">상품수량</label> <input type="text"
							id="totalStock" name="totalStock" />
								<label for="goodsMustInfo">상품 필수 정보</label> <input type="text"
							id="goodsMustInfo" name="goodsMustInfo" />
								<label for="goodsWeight">상품 무게</label> <input type="text"
							id="goodsWeight" name="goodsWeight" />
					
					</div>
						<div class="inputArea">
						<label for="soldOutFl">품절 여부</label> <input type="text"
							id="soldOutFl" name="soldOutFl" />
								<label for="salesStartYmd">상품 판매 기간 시작일</label> <input type="date"
							id="salesStartYmd" name="salesStartYmd" />
								<label for="shortDescription">짧은 설명</label> <input type="text"
							id="shortDescription" name="shortDescription" />
								<label for="relationFl">관련상품</label> <input type="text"
							id="relationFl" name="relationFl" />
					</div>
					<div class="inputArea">
						<label for="makeYmd">제조일</label> <input type="date"
							id="makeYmd" name="makeYmd" />
								<label for="regDt">등록일</label> <input type="date"
							id="regDt" name="regDt" />
								<label for="modDt">수정일</label> <input type="date"
							id="modDt" name="modDt" />
								<label for="delDt">삭제일</label> <input type="date"
							id="delDt" name="delDt" />
					</div>

					<div class="inputArea">
						<label for="goodsDescription">상품소개</label>
						<textarea rows="5" cols="50" id="goodsDescription" name="goodsDescription"></textarea>

						<script>
					var ckeditor_config = {
							resize_enaleb : false,
							enterMode : CKEDITOR.ENTER_BR,
							shiftEnterMode : CKEDITOR.ENTER_P,
							filebrowserUploadUrl : "/admin/goods/ckUpload"
					};
					
					CKEDITOR.replace("gdsDes", ckeditor_config);
				</script>

					</div>

					<div class="inputArea">
						<label for="gdsImg">이미지</label> <input type="file" id="gdsImg"
							name="file" />
						<div class="select_img">
							<img src="" />
						</div>

						<script>
					$("#gdsImg").change(function(){
						if(this.files && this.files[0]) {
							var reader = new FileReader;
							reader.onload = function(data) {
								$(".select_img img").attr("src", data.target.result).width(500);								
							}
							reader.readAsDataURL(this.files[0]);
						}
					});
				</script>



					</div>

					<div class="inputArea">
						<button type="submit" id="adBtn" class="adBtn">등록</button>
					</div>

				</form>

			</div>

		</div>
	</div>
	<!--  seller_wrap  -->


	<script>
        $(document).ready(function() {
            $(".seller_menu_tit").click(function() {
                $(".seller_menu_con").removeClass('on');
                $(this).parent().find(".seller_menu_con").toggleClass('on');
            });
        });
    </script>

</body>
</html>
