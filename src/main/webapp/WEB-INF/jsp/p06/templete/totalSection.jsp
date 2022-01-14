<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

            <section>
                <!--센터그림-->
                <article >
                    <img class="h-100 w-100" src="http://marondal.com/material/images/dulumary/web/front/jquery/test06_banner1.jpg">

                </article>
                <!--3가지 (실시간예약하기,로그인창,문의전화)-->
                <aside class="d-flex">
                    <!--실시간 예약하기-->
                    <div id=div1 class="d-flex justify-content-center align-items-center">
                        <div>실시간 <br> 예약하기</div>
                    </div>
                    <!--로그인창-->
                    <div id=div2 class="login">
                        <!--예약 확인 and 라디오 버튼-->
                        <div class="confirm d-flex p-4">
                            <h2>예약 확인</h2>
                            <label class="d-flex align-items-center pl-3 pt-2">회원<input type="radio" name="member" value="member"></label>
                            <label class="d-flex align-items-center pl-3 pt-2">비회원<input type="radio" name="member" value="none-member"></label>
                        </div>
                        <!--아디, 비번 , 조회하기 버튼-->
                        <div >
                            <!--아이디-->
                            <label id="id" class="d-flex justify-content-center"><span> 아이디 : </span>  <input type="text" class="text-box form-control ml-4"></label>
                            <!--비번-->
                            <label id="pass" class="d-flex justify-content-center"><span> 비밀번호 :</span>  <input type="password" class="text-box form-control ml-2"></label>
                            <!--조회하기-->
                            <div class="d-flex justify-content-end mr-5 pt-2"><button type="button" id="btn">조회하기</button></div>
                        </div>
                    </div>
                    <!--예약문의전화-->
                    <div id=div3 class="d-flex justify-content-center align-items-center">
                        <div>예약문의 : <br> 010- <br>000-1111</div>
                    </div>

                </aside>
                
            </section>
