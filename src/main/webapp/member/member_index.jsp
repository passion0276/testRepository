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
            $('#show .like').funcToggle('click', 
                function() {
                        $(this).removeClass("like");
                        $(this).addClass("special");
                },function(){
                        $(this).removeClass("special");
                        $(this).addClass("like");
            })
            
            //控制footer保持在最下面
            var h = $(window).height();
            h=h-50;
            $('#contentM').css("min-height",h);
            $('.where').css("min-height",h);
        })
    </script>
</head>

<body>
    <i class="fa fa-sign-out logoutbtn" aria-hidden="true">&nbsp&nbsp登出</i>
    <nav>
        <h1><a href="../index.html">台灣旅跡</a></h1>
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
                <div id="noData">
                    <h5>您現在尚無行程</h5>
                    <div>
                        <p><a href="../diy.html">新增行程</a></p>
                        <p><a href="../schedule/schedule_index.html">推薦行程</a></p>
                    </div>
                </div>

   <!--             <h5 class="titleh5">我的行程</h5>
                <div class="tourbox">
                    <div>
                        <img src="../images/schedule/tour.jpg">
                    </div>
                    <div>
                        <h4><span class="tag child">親子</span>環島遊‧台北+花蓮 (南部出發)</h4>
                        <p><span>3</span>天/預算<span>5,000</span>元</p>
                        <p>台北101→九份老街→野柳地質公園→宜蘭羅東夜市→花蓮海洋公園</p>
                        <div>
                            <a  class="info" href="../diy.html">查看行程</a>
                        </div>
                    </div>
                </div>
-->
                
            </div>
        </div>
    </div>
    
    <footer>
        <small>&copy;TaiwanJourney Co.&trade;,Ltd. 2018 All Rights Reserved.</small>
    </footer>
</body>

</html>