<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>GH SHOP</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/reset.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/admin.css">
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
        <div id="seller_lnb" class="item2">
            <div class="store"><a href="/">GH SH<span>O</span>P</a></div>
            <ul class="seller_menu">
                <li>
                    <a class="seller_menu_tit">상품관리</a>
                    <ol class="seller_menu_con">
                        <li><a href="#">submenu01</a></li>
                        <li><a href="#">submenu02</a></li>
                    </ol>
                </li>
                <li>
                    <a class="seller_menu_tit">쿠폰관리</a>
                    <ol class="seller_menu_con">
                        <li><a href="#">submenu01</a></li>
                        <li><a href="#">submenu02</a></li>
                    </ol>
                </li>
                <li>
                    <a class="seller_menu_tit">회원관리</a>
                    <ol class="seller_menu_con">
                        <li><a href="#">submenu01</a></li>
                        <li><a href="#">submenu02</a></li>
                    </ol>
                </li>
                <li>
                    <a class="seller_menu_tit">menu04</a>
                    <ol class="seller_menu_con">
                        <li><a href="#">submenu01</a></li>
                        <li><a href="#">submenu02</a></li>
                    </ol>
                </li>
            </ul>
        </div>
        <div id="seller_content" class="item3">
			<div class="formTitle">쿠폰 리스트 <span>검색조건에 해당하는 쿠폰 리스트를 확인 할수 있습니다.</span></div>
            <div id="listdiv">

                <form name="signForm" method="post" action="${pageContext.request.contextPath}/aEvent/newCouponPro">
                    <table class="listTbl fixed">
                        <tbody>
                            <tr align="center" bgcolor="#5e718f">
                            	<td>쿠폰 이름 :  <input type="text" id="name"style="width:300px" name="name"> </td>
                            </tr>
                            <tr>
								<td> 
								<select name="type" onselect="checkSelect();">
									<option id="type" value="1">할인(%)</option>
									<option id="type" value="2">할인 (금액)</option>
									<option id="type" value="3">증정</option>
									<option id="type" value="4">배송비무료</option>
								</select>
								
								<input type="text" id="benefit" placeholder="혜택 내용" name="benefit">
								</td>
                            </tr>
                            <tr> <td><span>혜택내용 작성예시 : 할인(%) - 30, 할인(금액) - 1000, 증정 - 상품코드, 배송비무료 - 작성x</span></td> </tr>
                            <tr> <td>발급일 / 사용가능 시작일 <input type="date" value="2021-11-22" name="giveDate"></td></tr>
                            <tr> <td>유효기간 <input type="date" value="2021-11-22" name="endDate"> </td></tr>
                        </tbody>
                    </table>
                    <div class="adBtn"><input type="submit" value="쿠폰생성" class="adbtn1"></div>
                    
                </form>
            </div>

        </div>
    </div><!--  seller_wrap  -->


    <script>
        $(document).ready(function() {
            $(".seller_menu_tit").click(function() {
                $(".seller_menu_con").removeClass('on');
                $(this).parent().find(".seller_menu_con").toggleClass('on');
            });
        });
	
    </script>
	
</body></html>
