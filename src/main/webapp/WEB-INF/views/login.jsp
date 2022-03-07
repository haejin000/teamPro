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
<div id="shop_login_wrap">
	<div class="member_tit"><h1 class="sub_tit">로그인</h1></div>
	<div id="login_box">
		<div class="login_con">
			<div class="mTab">
				<ul>
					<li class="selected"><a href="#">회원로그인</a></li>
					<li><a href="#">비회원 주문조회</a></li>
				</ul>
			</div><!--  mTab  -->
			<div class="form_wrap">
				<div class="formbox selected">
					<form name="frm_user" id="frm_user" action="" method="POST">
						<div class="tabCont">
							<div class="gLoginInput">
								<div class="mFormBox">
									<div class="column">
										<strong class="title">회원아이디</strong>
										<div class="gridPosition">
											<input type="text" placeholder="아이디를 입력해 주세요." class="fText suffix" title="아이디" name="mall_id" id="mall_id" value="" tabindex="1" maxlength="20">
										</div>
									</div>
									<div class="column">
										<span class="title">비밀번호</span>
										<div class="gridPosition">
											<input type="password" placeholder="비밀번호를 입력해 주세요." class="fText typePassword" title="비밀번호" name="userpasswd" id="userpasswd" tabindex="2" maxlength="20">
											<button type="button" class="btnView off">현시하다</button>
										</div>										
									</div>
								</div>
							</div>
							<div class="mButton">
								<button type="button" class="loginbtn">로그인</button>
							</div>
							<div class="loginBtns">
								<a href="" class="txtLink lineU" target="_blank" role="button">아이디 찾기</a>
								<a href="" class="txtLink lineU" target="_blank" role="button">비밀번호 찾기</a>
								<a href="" class="txtLink lineU" target="_blank" role="button">회원가입</a>
							</div>
						</div>
					</form>
				</div>
				<div class="formbox">
					<form name="frm_user" id="frm_user" action="" method="POST">
						<div class="tabCont">
							<div class="gLoginInput">
								<div class="mFormBox">
									<div class="column">
										<strong class="title">주문자명</strong>
										<div class="gridPosition">
											<input type="text" placeholder="아이디를 입력해 주세요." class="fText suffix" title="아이디" name="mall_id" id="mall_id" value="" tabindex="1" maxlength="20">
										</div>
									</div>
									<div class="column">
										<span class="title">주문번호</span>
										<div class="gridPosition">
											<input type="password" placeholder="비밀번호를 입력해 주세요." class="fText typePassword" title="비밀번호" name="userpasswd" id="userpasswd" tabindex="2" maxlength="20">
											<button type="button" class="btnView off">현시하다</button>
										</div>
									</div>
								</div>
							</div>
							<div class="mButton">
								<button type="button" class="loginbtn">주문조회하기</button>
							</div>
							<div class="loginBtns">
								<a href="" class="txtLink lineU" target="_blank" role="button">아이디 찾기</a>
								<a href="" class="txtLink lineU" target="_blank" role="button">비밀번호 찾기</a>
								<a href="" class="txtLink lineU" target="_blank" role="button">회원가입</a>
							</div>
						</div>
					</form>
				</div>
			</div><!--  form_wrap  -->
		</div><!--  login_con  -->
	</div><!--  login_box  -->
</div><!--  shop_login_wrap  -->
</body>

<script>
	$(".mTab li").click(function() {
		var i01 = $(this).index();
		$(".mTab ul li").removeClass("selected");
		$(this).addClass("selected");
		$(".form_wrap .formbox").removeClass("selected");
		$(".form_wrap .formbox").eq(i01).addClass("selected");
	});


	$(".btnView").click(function() {
		if ($(this).hasClass("off")) {
			$(this).addClass("on").removeClass("off");
		} else {
			$(this).addClass("off").removeClass("on");
		}
	});

</script>

</html>