<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>台灣旅跡-會員專區</title>
<link href="../css/style.css" rel="stylesheet" />
<link href="../css/member_box.css" rel="stylesheet" />
<link href="../css/member.css" rel="stylesheet" />
<link rel="stylesheet" href="//apps.bdimg.com/libs/jqueryui/1.10.4/css/jquery-ui.min.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
<link rel="stylesheet" href="../font-awesome-4.7.0/css/font-awesome.min.css"> 

<script src="../js/jquery-3.3.1.min.js"></script>
<script src="../js/jquery.func_toggle.js"></script>
<script src="//apps.bdimg.com/libs/jqueryui/1.10.4/jquery-ui.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js" integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T" crossorigin="anonymous"></script>
    <script>
        $(function() {
            $('#orderby').css("margin-top", $('nav').innerHeight());
            //navbar的底線效果
            $('nav ul li').hover(function() {
                $(this).children('.line').stop().animate({
                    width: "100%"
                });
            }, function() {
                $(this).children('.line').stop().animate({
                    width: "0px"
                });
            });
            //navbar的偵測螢幕高度變換效果
            $(window).bind('scroll resize', function() {　　
                var $this = $(this);　　
                var $this_Top = $this.scrollTop();　　 //當高度小於100時，關閉區塊      　　
                if ($this_Top < 40) {　　　
                    $('nav').css({
                        "position": "fixed",
                        "background-color": "#e2772b"
                    });　　　
                    $('nav a').css("color", "black");
                }　　　　
                if ($this_Top > 40) {　　　　
                    $('nav').css({
                        "position": "fixed",
                        "background-color": "rgba(74, 74, 74, 0.63)"
                    });　
                    $('nav a').css("color", "white");
                }　　
            }).scroll();

            //按下愛心變換成實心愛心         
            $('#show .special').click(function(){
                        $(this).removeClass("special");
                        $(this).addClass("like");
            })
            
            //控制footer保持在最下面
            var h = $(window).height();
            h = h - 50;
            $('#contentM').css("min-height",h);
            h = h - 15;
            $('.where').css("min-height",h);
            
            //控制左側菜單，標注本頁位置，hover時取消本頁位置
            $('.where ul li:nth-child(5) a').css({"font-weight":"bold", 
                                                  "background-color": "#e2772b"});
            $('.where ul li a').hover(function(){
                $('.where ul li a').css("background-color", "white");
                $(this).css("background-color", "#e2772b");
            }, function(){
                $('.where ul li a').css("background-color", "white");
                $('.where ul li:nth-child(5) a').css({"font-weight":"bold", 
                                                  "background-color": "#e2772b"});
            })
        })
    </script>
</head>

<body>
    <i class="fa fa-sign-out logoutbtn" aria-hidden="true">&nbsp&nbsp登出</i>
    <nav>
        <h1><a href="../index.jsp">台灣旅跡</a></h1>
        <ul>
            <li><a href="../flight/flight_index.jsp">搜尋機票</a><span class="line"></span></li>
            <li><a href="../hotel/hotel_index.jsp">搜尋住宿</a><span class="line"></span></li>
            <li><a href="../ticket/ticket_index.jsp">搜尋門票</a><span class="line"></span></li>
            <li><a href="../traffic/traffic_index.jsp">搜尋車票</a><span class="line"></span></li>
            <li><a href="../sight/sight_index.jsp">搜尋景點</a><span class="line"></span></li>
            <li><a href="../schedule/schedule_index.jsp">搜尋行程</a><span class="line"></span></li>
            <li><a href="../diy.jsp">製作行程</a><span class="line"></span></li>
            <li><a href="member_index.jsp">會員專區</a><span class="line"></span></li>
        </ul>
    </nav>
    <div id="contentM">
        <div class="where">
            <ul>
                <li><a href="member_account.html">會員資料</a></li>
                <li><a href="member_order.html">訂單查詢</a></li>
                <li><a href="member_diy.html">我的行程</a></li>
                <li><a href="member_tour.html">收藏的行程</a></li>
                <li><a href="member_sight.html">收藏的景點</a></li>
            </ul>
        </div>
        <div id="main">
            <div id="show">
                <h5 class="titleh5">收藏的景點</h5> 
                <div class="container-fluid px-lg-1 sightbox">
                    <div class="row">
                        <div class=" col-lg-4 p-2">
                            <div class="card">
                                <span class="special"></span>
                                <img class="card-img-top" src="../images/sight/card1.jpg" alt="Card image cap">
                                <div class="card-body">
                                    <h5 class="card-title">(台北)瑞芳</h5>
                                    <p class="card-text">瑞芳區古樸的風情近年來吸引了相當多的民眾前往旅遊，除九份、金瓜石所呈現的古鎮風情以外，許多特別的旅遊景點也不容錯過。</p>
                                    <a href="#" class="btn btn-primary d-block mx-auto btn-warning">詳細資訊</a>
                                </div>
                            </div>
                        </div>
                        <div class=" col-lg-4 p-2">
                            <div class="card">
                                <span class="special"></span>
                                <img class="card-img-top" src="../images/sight/card1.jpg" alt="Card image cap">
                                <div class="card-body">
                                    <h5 class="card-title">(台北)瑞芳</h5>
                                    <p class="card-text">瑞芳區古樸的風情近年來吸引了相當多的民眾前往旅遊，除九份、金瓜石所呈現的古鎮風情以外，許多特別的旅遊景點也不容錯過。</p>
                                    <a href="#" class="btn btn-primary d-block mx-auto btn-warning">詳細資訊</a>
                                </div>
                            </div>
                        </div><div class=" col-lg-4 p-2">
                            <div class="card">
                                <span class="special"></span>
                                <img class="card-img-top" src="../images/sight/card1.jpg" alt="Card image cap">
                                <div class="card-body">
                                    <h5 class="card-title">(台北)瑞芳</h5>
                                    <p class="card-text">瑞芳區古樸的風情近年來吸引了相當多的民眾前往旅遊，除九份、金瓜石所呈現的古鎮風情以外，許多特別的旅遊景點也不容錯過。</p>
                                    <a href="#" class="btn btn-primary d-block mx-auto btn-warning">詳細資訊</a>
                                </div>
                            </div>
                        </div><div class=" col-lg-4 p-2">
                            <div class="card">
                                <span class="special"></span>
                                <img class="card-img-top" src="../images/sight/card1.jpg" alt="Card image cap">
                                <div class="card-body">
                                    <h5 class="card-title">(台北)瑞芳</h5>
                                    <p class="card-text">瑞芳區古樸的風情近年來吸引了相當多的民眾前往旅遊，除九份、金瓜石所呈現的古鎮風情以外，許多特別的旅遊景點也不容錯過。</p>
                                    <a href="#" class="btn btn-primary d-block mx-auto btn-warning">詳細資訊</a>
                                </div>
                            </div>
                        </div><div class=" col-lg-4 p-2">
                            <div class="card">
                                <span class="special"></span>
                                <img class="card-img-top" src="../images/sight/card1.jpg" alt="Card image cap">
                                <div class="card-body">
                                    <h5 class="card-title">(台北)瑞芳</h5>
                                    <p class="card-text">瑞芳區古樸的風情近年來吸引了相當多的民眾前往旅遊，除九份、金瓜石所呈現的古鎮風情以外，許多特別的旅遊景點也不容錯過。</p>
                                    <a href="#" class="btn btn-primary d-block mx-auto btn-warning">詳細資訊</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>           
            </div>
        </div>
    </div>
    
    <footer>
        <small>&copy;TaiwanJourney Co.&trade;,Ltd. 2018 All Rights Reserved.</small>
    </footer>
</body>

</html>
