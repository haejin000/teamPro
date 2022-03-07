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
	<script src="resources/js/jquery.js"></script>

</head>

<body>
					
<div class="resp_member_join_wrap">
	<div class="member_tit"><h1 class="sub_tit">회원가입</h1></div>
	<div class="member_icon">
		<ol>
			<li class="title1 page_on"><span></span></li>
			<li class="title2"><span></span></li>
		</ol>
	</div><!--member_icon-->
	<form name="" id="registFrm" method="post" action="" >
		<div id="formMemberArea" class="resp_member_join">
			<div class="resp_join_table">
				<ul class="required">
					<li class="th">
						<p designelement="text" textindex="25" >아이디</p>
					</li>
					<li class="td">
						<input type="text" name="userid" id="userid" value="" onkeypress="filterKey();" class="eng_only" onpaste="javascript:return false;" placeholder="아이디 ( 공백 없는 영문/숫자 포함 6~20자 )">
						<p id="id_info" class="guide_text"></p>
					</li>
				</ul>
				<ul class="required">
					<li class="th">
						<p designelement="text" textindex="26">비밀번호</p>
					</li>
					<li class="td">
						<input type="password" name="password" value="" class="eng_only" placeholder="비밀번호 ( 공백 없는 영문/숫자 포함 6~20자 ) ">
					</li>
				</ul>
				<ul class="required">
					<li class="th">
						<p designelement="text" textindex="27">비밀번호 확인</p>
					</li>
					<li class="td">
						<input type="password" name="re_password" value="" class="eng_only" placeholder="비밀번호 확인">
					</li>
				</ul>
				
				
				<ul class="required">
					<li class="th">
						<p designelement="text" textindex="22">이름</p>
					</li>
					<li class="td"><input type="text" name="bceo" value="" placeholder="이름" autocomplete="off"></li>
				</ul>
				<ul class="required">
					<li class="th">
						<p designelement="text" textindex="28">이메일</p>
					</li>
					<li class="td mail">
						<input type="email" name="email[0]" value="" class="size_mail1" placeholder="이메일"> @
						<input type="email" name="email[1]" value="" class="size_mail2">
						<select name="find_email" id="find_email">
							<option value="">직접선택</option>
							<option value="naver.com">naver.com</option>
							<option value="nate.com">nate.com</option>
							<option value="dreamwiz.com">dreamwiz.com</option>
							<option value="yahoo.co.kr">yahoo.co.kr</option>
							<option value="empal.com">empal.com</option>
							<option value="unitel.co.kr">unitel.co.kr</option>
							<option value="gmail.com">gmail.com</option>
							<option value="korea.com">korea.com</option>
							<option value="chol.com">chol.com</option>
							<option value="paran.com">paran.com</option>
							<option value="freechal.com">freechal.com</option>
							<option value="hanmail.net">hanmail.net</option>
							<option value="hotmail.com">hotmail.com</option>
						</select>
					</li>
					이메일 수신에 동의합니다.
				</ul>
				<ul class="required" style="display:none;">
					<li class="th">
						<p designelement="text" textindex="21">휴대폰번호</p>
					</li>
					<li class="td">
						<input type="text" id="bcellphone1" name="bcellphone[]" value="" class="size_phone"> -
						<input type="text" id="bcellphone2" name="bcellphone[]" value="" class="size_phone"> -
						<input type="text" id="bcellphone3" name="bcellphone[]" value="" class="size_phone">
					</li>
				</ul>
				<ul>
					<li>
						<div class="ip_h_cer">
							<input type="tel" id="bcellphone" value="" placeholder="휴대폰번호">
							<input type="button" value="인증하기" class="btn_h_cer" onclick="phonePopup();">
						</div>
					</li>
					SMS 수신에 동의 합니다.
				</ul>

			</div><!--resp_join_table-->
			<div class="resp_login_wrap Mt0">
				<input type="hidden" name="join_type" value="business">
				<div class="mem_agree_area" style="display:block;">

					<ul id="agreeList" class="agree_listbox">
						<li>
							<div><input type="checkbox" name="agree" value="Y" class="pilsu" id="ab_chkAll"><label for="ab_chkAll"><span class="desc" designelement="text" textindex="30">(필수)</span> <span designelement="text" textindex="31">이용약관에 모두 동의합니다.</span></label></div>
							<ul>
								<li><div>서비스 이용약관</div><a class="agree_view" href="" onclick=""><span designelement="text" textindex="32" >내용보기</span></a></li>
								<li><div>개인정보 수집/이용</div><a class="agree_view" href="" onclick=""><span designelement="text" textindex="33">내용보기</span></a></li>

							</ul>
						</li>					
					</ul>
				</div>
			</div><!--resp_login_wrap-->
		</div><!--formMemberArea-->
		<div class="btnArea">
			<button type="submit" class="btnSSG btnL action" onclick="" id="authNoBtn">회원가입하기</button>
			<button type="button" class="btnSSG btnR cancel" onclick="" id="">취소</button>
		</div><!--btnArea-->
	</form><!--registFrm-->
</div><!-- resp_member_join_wrap -->
</body>
</html>

































