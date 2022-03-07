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
            <div class="local_ov01 local_ov">
                <a href="" class="ov_listall">전체목록</a>
                <span class="btn_ov01"><span class="ov_txt">등록된 상품</span><span class="ov_num"> 59건</span></span>
            </div>

            <form name="flist" class="local_sch01 local_sch">
                <input type="hidden" name="save_stx" value="">

                <label for="sca" class="sound_only">분류선택</label>
                <select name="sca" id="sca">
                    <option value="">전체분류</option>
                    <option value="">분류1</option>
                    <option value="">분류2</option>
                    <option value="">분류3</option>
                    <option value="">분류4</option>
                </select>

                <label for="sfl" class="sound_only">검색대상</label>
                <select name="sfl" id="sfl">
                    <option value="it_name" selected="selected">상품명</option>
                    <option value="it_id">상품코드</option>
                    <option value="it_maker">제조사</option>
                    <option value="it_origin">원산지</option>
                    <option value="it_sell_email">판매자 e-mail</option>
                </select>

                <label for="stx" class="sound_only">검색어</label>
                <input type="text" name="stx" value="" id="stx" class="frm_input">
                <button type="submit" value="검색" class="btn_submit">검색</button>
            </form>

            <div class="formTitle">쿠폰 리스트 <span>검색조건에 해당하는 쿠폰 리스트를 확인 할수 있습니다.</span></div>

            <div class="adBtn"><button class="adbtn1" onclick="location.href='${pageContext.request.contextPath}/aEvent/newCoupon'" >쿠폰생성</button></div>
            <div id="listdiv">

                <form name="signForm" method="post" onsubmit="return false;">
                    <input type="hidden" name="mode" value="">

                    <table class="listTbl fixed">
                        <colgroup>
                            <col width="40"><!-- checkbox -->
                            <col width="60"><!-- 번호 -->
                            <col width="80"><!-- 구분 -->
                            <col width="100"><!-- 아이디 -->
                            <col width="150"><!-- 이름 -->
                            <col width="120"><!-- 핸드폰 -->
                            <col width="100"><!-- 가입일 -->
                            <col width="100"><!-- 최근방문일 -->
                            <col width="70"><!-- 적립금 -->
                            <col width="70"><!-- 통합정보 -->
                        </colgroup>
                        <tbody>
                            <tr align="center" bgcolor="#5e718f">
                                <th class="listTitle"><input type="checkbox" name="allcheck" value="1" onclick=""></th>
                                <th class="listTitle">쿠폰번호</th>
                                <th class="listTitle">구분</th>
                                <th class="listTitle"><a href="" class="link01">이름</a></th>
                                <th class="listTitle"><a href="" class="link01">혜택</a></th>
                                <th class="listTitle"><a href="" class="link01">증정상품코드</a></th>
                                <th class="listTitle"><a href="" class="link01">발급일/사용가능일</a></th>
                                <th class="listTitle"><a href="" class="link01">사용종료일</a></th>
                                <th class="listTitle"><a href="" class="link01">사용가능여부</a></th>
                                <!-- <th class="listTitle" >주소</th> -->
                            </tr>

                            <tr>
                                <td class="listData"><input type="checkbox" name="" value=""></td>
                                <td class="listData">00001</td>
                                <td class="listData">할인</td>
                                <td class="listData">
                                    <nobr><b><a href="/">신규가입환영</a></b></nobr>
                                </td>
                                <td class="listData">30% 할인</td>
                                <td class="listData" >
                                	<nobr><b><a href="/">01920391409</a></b></nobr>
                                </td>
                                <td class="listData">2021-11-24</td>
                                <td class="listData">2021-12-30</td>
                                <td class="listData">사용가능</td>
                                <td class="listData">
                                    <span class="s_btn_blue"><button type="button" onclick="">통합정보</button></span>
                                </td>
                            </tr>
                        </tbody>
                    </table>
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
