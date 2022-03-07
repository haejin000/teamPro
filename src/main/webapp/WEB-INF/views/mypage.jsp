<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="UTF-8">
	<title>GH SHOP</title>
	<link rel="stylesheet" href="resources/css/reset.css">
    <link rel="stylesheet" href="resources/css/main.css">
	<link rel="stylesheet" href="resources/css/sub.css">
	<link rel="stylesheet" href="resources/css/cart.css">
	<link rel="stylesheet" href="resources/css/member.css">
	<link rel="stylesheet" href="resources/css/style.css">
	<script src="https://kit.fontawesome.com/dd43a0e2b4.js" crossorigin="anonymous"></script>
	<script src="resources/js/jquery.js"></script>

</head>

<body>
<div id="container">
<div class="location">
	<div class="innerContent">
		<h3 class="dn">현재 위치</h3>
		<span class="home">
			<a href="/">HOME</a>
			<?=$pageNaviTitle;?>
		</span>

	</div>
</div>

	<div class="memw innerContent">
		<div class="member_tit">
			<h1 class="sub_tit">마이페이지</h1>
		</div><!--  member_tit -->
		<!-- 회원간단정보 여기부터 -->
<!--
		<?
		include "./_include.quickinfo.inc.php";
		?>
-->
		
<div id='mypage_quickinfo'>

	<div class='quickContents_first'>
		<p class="userName"><span><?=$user_sess_['_USER_NAME'];?></span>님!  반갑습니다.</p>
		<p class="userInfo">
			<span class="tit">회원등급</span>
			<span class="level_txt"><img src="/images/grade_diamond.png" border="0"></span>
		</p>
		<p class="context">회원님을 위한 다양한 맞춤서비스가 제공됩니다.</p>
	</div>
	<div class="quickContentsBox">
	<div class='quickContents'>
		<p class="tit"><span class="title">나의 적립금</span></p>
		<p class="txt"><span><?=number_format($mRs_point);?> 원</span></p>
	</div>
	
	<div class='quickContents'>
		<p class="tit"><span class="title">나의 상품후기</span></p>
		<p class="txt"><span><?=number_format($mem_reviewCount);?> 건</span></p>
	</div>
	
	<div class='quickContents'>
		<p class="tit"><span class="title">나의 상품문의</span></p>
		<p class="txt"><span><?=number_format($mem_goodsQnaCount);?> 건</span></p>
	</div>
	
	<div class='quickContents quickContents_end'>
		<p class="tit"><span class="title">1:1 문의내역</span></p>
		<p class="txt"><span><?=number_format($mem_questionCount);?> 건</span></p>
	</div>
	</div>
</div>
	
	
		<!-- 회원간단정보 여기부터 -->

		<div class="mypage_con">
			<div class="mypage_left">
			<!-- 왼쪽메뉴 여기부터 -->
<!--
			<?
			include "../../include/left_mypage.inc.php";
			?>
-->
			
<div id="subpageLNB" class="subpage_lnb">
	<div id="mypageLnbBasic" class="subpage_lnb">
<!-- 		<div style="text-align:center; background:#556FE0; padding:15px;"><span class="menuTitle">마이페이지<span>MYPAGE</span></span></div> -->

				<h3 class="title2">나의 정보</h3>
		<ul class="lnb_sub">
			<li class='off' onclick="javascript:pageLink('myinfo.php');" ><a href="myinfo.php"  >회원정보 관리</a></li>
			<li class='off end' onclick="javascript:pageLink('escape.php');" ><a href="escape.php"  >회원탈퇴</a></li>
		</ul>

		
		<h3 class="title2">나의 쇼핑</h3>
		<ul class="lnb_sub">
			<li class='off' onclick="javascript:pageLink('mypage_orderlist.php');" ><a href="mypage_orderlist.php"  >주문배송조회</a></li>
			<li class='off' onclick="javascript:pageLink('mypage_orderlist_cancel.php');" ><a href="mypage_orderlist_cancel.php"  >주문취소/교환/반품</a></li>
			<li class='off' onclick="javascript:pageLink('mypage_wishlist.php');" ><a href="mypage_wishlist.php"  >상품보관함</a></li>
			<li class='off end' onclick="javascript:pageLink('emoney.php');" ><a href="emoney.php"  >적립금 내역</a></li>
		</ul>

		<h3 class="title2">나의 활동</h3>
		<ul class="lnb_sub">
			<li class='off' onclick="javascript:pageLink('review.php');" ><a href="review.php"  >나의 상품후기</a></li>
			<li class='off' onclick="javascript:pageLink('qna.php');" ><a href="qna.php"  >나의 상품문의</a></li>
			<li class='off' onclick="javascript:pageLink('myqna.php');" ><a href="myqna.php"  >1:1문의</a></li>
			<li class='off end' onclick="javascript:pageLink('today_goods.php');" ><a href="today_goods.php"  >최근 본 상품목록</a></li>
		</ul>
	</div>

</div>
		
			<!-- 왼쪽메뉴 여기까지 -->
			</div>
			<div class="mypage_right">
			<div id='printArea'>
			<!-- 본문 여기부터 -->
			<!-- +++++ mypage contents ++++ -->
			<div class="subpage_container">
				<!-- 전체 메뉴 -->
				<div class="my_index_wrap" style="">
					

					<!-- 최근 1개월 간 주문/배송 내역 -->
					<div class="title_container2 Bbx">
						<h3 class="title_sub6"><span>최근 1개월 간 주문/배송 내역</span></h3>
					</div>
					<div class="my_order_step">
						<ul class="abClear">
							<li class="step1"><a href=""><span>입금 전</span></a></li>
							<li class="step2"><a href=""><span>결제확인</span></a></li>
							<li class="step3"><a href=""><span>상품준비중</span></a></li>
							<li class="step4"><a href=""><span>배송중</span></a></li>
							<li class="step5"><a href=""><span>배송완료</span></a></li>
						</ul>
					</div><!--my_order_step-->

					<div id="summary_contents">
						<div class="titarea3">
							<strong>최근주문내역</strong>
							<span>고객님의 최근 15일동안 주문하신 내역입니다.</span>
							<span class='btn'><a href="mypage_orderlist.php">전체보기</a></span>
						</div>

<!--
						<?
						include "../source/mypage_order_list_short.inc.php";
						?>
-->
						
<div class="msTbl">
<table>
<colgroup>
<col width="95"><!-- 주문번호 -->
<col ><!-- 제 품 명 -->
<col width="120"><!-- 결제금액 -->
<col width="66"><!-- 결제방법 -->
<col width="66"><!-- 결제상태 -->
<col width="70"><!-- 주문현황 -->
<col width="65"><!-- 주문일자 -->
</colgroup>
<thead>
<tr>
	<th class="mypage_tblTitle">주문번호</th>
	<th class="mypage_tblTitle">제 품 명</th>
	<th class="mypage_tblTitle">결제금액</th>
	<th class="mypage_tblTitle">결제방법</th>
	<th class="mypage_tblTitle">결제상태</th>
	<th class="mypage_tblTitle">주문현황</th>
	<th class="mypage_tblTitle">주문일자</th>
</tr>
</thead>
<tbody>
<tr align="center">
	<td class="pd_5 _detail_td">
		<a href="http://www.msgood4u.com/html/mypage/mypage_orderinfo.php?ordernum=1637045421284&page=">1637045421284</a>
		<br><a href="http://www.msgood4u.com/html/mypage/mypage_orderinfo.php?ordernum=1637045421284&page=" class="_detail">[상세보기]</a>
	</td>
	<td align="center" class="pd_5 gInfo_td">

				<div class='tIn_gListInfo'>
			<div class='gImg'><a href="http://www.msgood4u.com/html/goods/goods_detail.php?g_code=44MREG6170cde97b497&s_g_levelcode=&s_g_level1=19" title="클릭시 제품의 상세정보를 볼수 있습니다."><img src='/files/goods/019002000/20211021111817.jpg' border='0' width='50' height='50' border='0' align=absmiddle></a></div>
			<div class='gInfo'>
				<a href="http://www.msgood4u.com/html/goods/goods_detail.php?g_code=44MREG6170cde97b497&s_g_levelcode=&s_g_level1=19" title="클릭시 제품의 상세정보를 볼수 있습니다." class="g_detail">아르채움 신파라바이오틱스 2.5gx30포</a>
								<font class="opt_txt"></font>
							</div>
		</div>
		
	</td>
	<td class="pagenumber">24,500 원</td>
	<td class="pagenumber">무통장입금</td>
	<td class="pagenumber">미입금</td>
	<td class="pagenumber">
		주문완료			</td>
	<td class="pagenumber">2021.11.16</td>
</tr>
<tr align="center">
	<td class="pd_5 _detail_td">
		<a href="http://www.msgood4u.com/html/mypage/mypage_orderinfo.php?ordernum=1637044965432&page=">1637044965432</a>
		<br><a href="http://www.msgood4u.com/html/mypage/mypage_orderinfo.php?ordernum=1637044965432&page=" class="_detail">[상세보기]</a>
	</td>
	<td align="center" class="pd_5 gInfo_td">

				<div class='tIn_gListInfo'>
			<div class='gImg'><a href="http://www.msgood4u.com/html/goods/goods_detail.php?g_code=JA3KDI6170cd092b79e&s_g_levelcode=&s_g_level1=19" title="클릭시 제품의 상세정보를 볼수 있습니다."><img src='/files/goods/019002000/20211021111433.jpg' border='0' width='50' height='50' border='0' align=absmiddle></a></div>
			<div class='gInfo'>
				<a href="http://www.msgood4u.com/html/goods/goods_detail.php?g_code=JA3KDI6170cd092b79e&s_g_levelcode=&s_g_level1=19" title="클릭시 제품의 상세정보를 볼수 있습니다." class="g_detail">아르채움 산양유단백질N유산균 2.5gx30포</a>
								<font class="opt_txt"></font>
							</div>
		</div>
		
	</td>
	<td class="pagenumber">21,500 원</td>
	<td class="pagenumber">무통장입금</td>
	<td class="pagenumber">미입금</td>
	<td class="pagenumber">
		주문완료			</td>
	<td class="pagenumber">2021.11.16</td>
</tr>
<tr align="center">
	<td class="pd_5 _detail_td">
		<a href="http://www.msgood4u.com/html/mypage/mypage_orderinfo.php?ordernum=1637044613916&page=">1637044613916</a>
		<br><a href="http://www.msgood4u.com/html/mypage/mypage_orderinfo.php?ordernum=1637044613916&page=" class="_detail">[상세보기]</a>
	</td>
	<td align="center" class="pd_5 gInfo_td">

				<div class='tIn_gListInfo'>
			<div class='gImg'><a href="http://www.msgood4u.com/html/goods/goods_detail.php?g_code=3TTJP5617a5bebd3130&s_g_levelcode=&s_g_level1=24" title="클릭시 제품의 상세정보를 볼수 있습니다."><img src='/files/goods/024024000/20211103153624_61822de878a67.jpg' border='0' width='50' height='50' border='0' align=absmiddle></a></div>
			<div class='gInfo'>
				<a href="http://www.msgood4u.com/html/goods/goods_detail.php?g_code=3TTJP5617a5bebd3130&s_g_levelcode=&s_g_level1=24" title="클릭시 제품의 상세정보를 볼수 있습니다." class="g_detail"> 튼튼철분프리미엄60정</a>
								<font class="opt_txt"></font>
							</div>
		</div>
		
	</td>
	<td class="pagenumber">29,500 원</td>
	<td class="pagenumber">무통장입금</td>
	<td class="pagenumber">미입금</td>
	<td class="pagenumber">
		주문완료			</td>
	<td class="pagenumber">2021.11.16</td>
</tr>
</tbody>
</table>
					
</div>

					<div id="summary_contents">
							<div class="titarea3">
								<strong>상품보관함</strong>
								<span>고객님의 최근 15일동안 주문하신 내역입니다.</span>
								<span class='btn'><a href="mypage_wishlist.php">전체보기</a></span>
							</div>
<!--
							<?
							include "../source/mypage_wish_list_short.inc.php";
							?>
-->

					
<div class="order_list_wrap type2">
<table class="fixed">
<colgroup>
<col width=40>
<col width=70>
<col>
<col width=70>
<col width=90>
<col width=64>
</colgroup>
<thead>
<tr>
	<th class="mypage_tblTitle">선택</th>
	<th class="mypage_tblTitle">제품번호</th>
	<th class="mypage_tblTitle">제 품 명</th>
	<th class="mypage_tblTitle">소비자가</th>
	<th class="mypage_tblTitle">판매가</th>
	<th class="mypage_tblTitle">적립금</th>
	<th class="mypage_tblTitle">상태</th>
</tr>
</thead>
<tbody>
<tr>
	<td class="seq"><input type="checkbox" name="mark[]" value="1"></td>
	<td class="pnum"><a href="http://www.msgood4u.com/html/goods/goods_detail.php?g_code=UKA9VK615d557f1996a&s_g_levelcode=020000000&s_g_level1=20">3695</a></td>
	<td align=left>
	<div class="order_list">
		<table width=100% border='0' cellpadding='0' cellspacing='0' class="fixed">
		<tr>
			<td width=57><img src='/files/goods/020000000/20211006171137_615d5a3930e3b.jpg' border='0' width='50' height='50' border='0' align=absmiddle></td>
			<td>
								<a href="http://www.msgood4u.com/html/goods/goods_detail.php?g_code=UKA9VK615d557f1996a&s_g_levelcode=020000000&s_g_level1=20">히말라야 핑크소금4병선물세트</a>
			</td>
		</tr>
		</table>
	</div>
	</td>
	<td class="sprice">0원</td>
	<td class="price">
		21,000원		<br>
		</td>
		<td class="point_t2">
		<span class='font_11s'>
		105 점</span>
	</td>
	<td class="delbtn"><a href="javascript:checkDelete('1');" class='myord_bt01'><span>삭제</span></a></td>
</tr>
</tbody>
</table>
</div>
<iframe name='wish_hiddenFrm' style="display:none; width:100%; height:200px;"></iframe>
<script>
function checkDelete(SEQ)
{
	var ans=false;
	ans=confirm("삭제하시겠습니까?");
	if(ans==true) wish_hiddenFrm.location.href=main_html+"shop/orderExe.php?mode=wishlist_delete&seq="+SEQ;
	else return;
}
</script>
					
</div>

					<div id="summary_contents">
							<div class="titarea3">
								<strong>상품후기</strong>
								<span></span>
								<span class='btn'></span>
							</div>

							
<div class="msTbl">
	<table>
	<colgroup>
	<col width='150' />
	<col />
	</colgroup>
	<thead>
	<tr>
		<td >등록일</td>
		<td >제목 / 제품명</td>
	</tr>
	</thead>
	<tbody>
		<tr>
		<td colspan="2" align="center"><div class="noData">상품후기 내역이 없습니다.</div></td>
	</tr>
		</tbody>
	</table>
</div>	
							
					</div>

					<div id="summary_contents">
							<div class="titarea3">
								<strong>개인정보확인</strong>
								<span class='btn'><a href="http://www.msgood4u.com/html/mypage/myinfo.php">수정</a></span>
							</div>

							<div class="myChkInfoWrap">

									<div class="emailBox">
										<span class="f_b">이메일주소</span>
										<span class="pd_l10">ep98d@nate.com</span>
										<span class="pd_l10">메일수신동의여부 : <font style='color:#ff7171;'>동의</font></span>
									</div>
									<div class="hpBox">
										<span class="f_b">휴대폰번호</span>
										<span class="pd_l10">010-8509-2369</span>
										<span class="pd_l10">문자수신동의여부 : <font style='color:#ff7171;'>동의</font></span>
									</div>

							</div>
					</div>



					<div class="order_intro">
						


						<dl class="info_tip">
							<dt>주문/배송 TIP</dt>
							<dd>
								<ul>
									<li>주문취소는 <strong>입금대기/결제확인 상태의 상품</strong>만 가능합니다.</li>
									<li>일부 <strong>주문취소에 제한이 있는 상품</strong>의 경우, 1:1문의를 이용해주시기 바랍니다.</li>
									<li>교환/반품신청은 배송완료한 날로부터 <strong>00일 이내에 신청 가능</strong>하며, 배송완료 후 00일이 경과한 상품의 경우, 1:1문의를 이용해주시기 바랍니다.</li>
								</ul>
							</dd>
						</dl><!--info_tip-->
					</div><!--order_intro-->
				</div>

			</div><!--subpage_container-->
			<!-- +++++ //mypage contents ++++ -->
			<!-- 본문 여기까지 -->
			</div>
			</div>




		</div><!--mypage-->
	</div><!--mypage_con_wrap-->
</div><!--  container --><!--container-->

</body>

</html>
