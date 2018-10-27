<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>台灣旅跡</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
<link href="css/index.css" rel="stylesheet" />
<link href="css/login.css" rel="stylesheet" />
<link rel="stylesheet" href="font-awesome-4.7.0/css/font-awesome.min.css">

<script src="js/jquery-3.3.1.min.js"></script>
<script src="js/jquery.parallax-1.1.3.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js" integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T" crossorigin="anonymous"></script>
	<script>
        $(function() {
            $('#s2').parallax('50%', 0.3);
            var windowHeight = window.innerHeight,
                gridTop = windowHeight * 0.2,
                gridBottom = windowHeight * 0.8;
            $('.textbox').css("opacity", 0);
            $(window).on('scroll', function() {
                $('.textbox:odd').each(function() {
                    var thisTop = jQuery(this).offset().top - $(window).scrollTop();
                    if (thisTop >= gridTop && (thisTop + $(this).height()) <= gridBottom) {
                        $(this).addClass('ufadeIn');
                        $(this).css("opacity", 1);
                    }
                });
                $('.textbox:even').each(function() {
                    var thisTop = jQuery(this).offset().top - $(window).scrollTop();
                    if (thisTop >= gridTop && (thisTop + $(this).height()) <= gridBottom) {
                        $(this).addClass('dfadeIn');
                        $(this).css("opacity", 1);
                    }
                });
            });
            $(window).trigger('scroll');

            //點下login畫面右上角叉叉，關閉login視窗
            $('.login i').click(function(){
                $('.login').css("display","none");
            })
        })
        function login(){//點下member，開啟login視窗
            $('.login').css("display","block");
        }
        function register(s){
            if(s==1){//跳到註冊
                $('.log').css("display","none");
                $('.reg').css("display","block");
            }else if(s==2){//跳到登入
                $('.log').css("display","block");
                $('.reg').css("display","none");
            }
        }
    </script>
</head>

<body>
    <div class="login">
        <i class="fa fa-times" aria-hidden="true"></i>
        <div class="loginbox log">
            <form>
                    <div class="form-group">
                        <label for="log_email" class=" col-form-label-sm">帳號</label>
                        <input type="email" class="form-control form-control-sm" id="log_email" aria-describedby="emailHelp" placeholder="Enter email">
                        <small id="emailHelp" class="form-text text-muted">註冊時的電子郵件</small>
                    </div>
                    <div class="form-group">
                        <label for="log_pass" class=" col-form-label-sm">密碼</label>
                        <input type="password" class="form-control form-control-sm" id="log_pass" placeholder="Password">
                        <small id="passerror" class="form-text text-danger">請輸入密碼!</small><!--error提示文字展演-->
                    </div>
                    <div class="form-check">
                        <input type="checkbox" class="form-check-input" id="remember">
                        <label class="form-check-label mb-3" for="remember">remember me</label>
                    </div>
                    <div id="thirdLogin">
                        <div class="fbLogin">
                            <span>臉書登入</span>
                        </div>
                        <div class="ggLogin">
                            <span>google登入</span>
                        </div>
                    </div>
                    <hr/>
                    <button name="login" class="btn btn-primary btn-block">登入會員</button>
                   
            </form>
            <p class="regisBtn" onclick="register(1)">還不是會員?</p>
        </div>
        <div class="loginbox reg">
            <form>
                    <div class="form-group">
                        <label for="reg_email" class=" col-form-label-sm">電子郵件(帳號)</label>
                        <input type="email" class="form-control  form-control-sm" id="reg_email" aria-describedby="emailHelp" placeholder="Enter email">
                        <small id="passerror" class="form-text text-danger">請輸入密碼!</small>
                    </div>
                    <div class="form-group">
                        <label for="reg_password" class=" col-form-label-sm">密碼</label>
                        <input type="password" class="form-control form-control-sm" id="reg_password" placeholder="Password">
                        <small id="passerror" class="form-text text-danger">請輸入密碼!</small>
                    </div>
                    <div class="form-group">
                        <label for="reg_name" class=" col-form-label-sm">姓名</label>
                        <input type="text" class="form-control form-control-sm" id="reg_name" placeholder="Cheng Pei Pei">
                        <small id="passerror" class="form-text text-danger">請輸入密碼!</small>
                    </div>    
                    <div class="form-group">
                        <label for="reg_birth" class=" col-form-label-sm">生日</label>
                        <input type="date" class="form-control form-control-sm" id="reg_birth" placeholder="0911-220-330">
                        <small id="passerror" class="form-text text-danger">請輸入密碼!</small>
                    </div>
                    <div id="thirdLogin">
                        <div class="fbLogin">
                            <span>臉書註冊</span>
                        </div>
                        <div class="ggLogin">
                            <span>google註冊</span>
                        </div>
                    </div>
                    <hr/>
                    <button name="login" class="btn btn-primary btn-block">註冊會員</button>
                   
            </form>
            <p class="regisBtn" onclick="register(2)">已是會員?</p>
        </div>
    </div>
    
    <section id="s1">
        <div id="language">
            <a href="#">繁體中文</a>&nbsp;/&nbsp;
            <a href="index_e.jsp">English</a>
        </div>
        <div class="logo">
            <p>—— 台灣 ——</p>
        </div>
        <img src="images/index/index_logo.png" width="550px" />
        <nav id="navbar">
            <ul> 
                <li><a href="flight/flight_index.jsp">搜尋機票</a></li>
                <li><a href="hotel/hotel_index.jsp">搜尋住宿</a></li>
                <li><a href="ticket/ticket_index.jsp">搜尋門票</a></li>
                <li><a href="traffic/traffic_index.jsp">搜尋車票</a></li>
                <li><a href="sight/sight_index.jsp">搜尋景點</a></li>
                <li><a href="schedule/schedule_index.jsp">搜尋行程</a></li>
                <li><a href="diy.jsp">製作行程</a></li>
                <li onclick="login()"><a href="javascript:void(0);">會員專區</a></li>
            </ul>
        </nav>
    </section>
    <section id="s2_2">
        <h2>Start Your <br/>Fabulous Travel in Taiwan.</h2>
    </section>
    <section id="s2"></section>
    <section id="s3">
        <div class="textbox">
            <p>預定機票前往這座美麗的小島，探索我們溫暖又饒富人情的地形之島。</p>
            <p>我們提供有價有位的飛機票查詢，並提供各種搜尋條件方便您查找心目中最棒的那一張票。以您的出發點及目的地做初始查詢，按照您的預計出發日查找。</p>
            <a href="flight/flight_index.jsp"><div class="btna">前往機票訂購畫面</div></a>
        </div>
        <div class="textbox">
            <p>預定住宿才能有充足的體力迎接第二天美麗的曙光。</p>
            <p>依照您遊玩的地區尋找飯店或民宿，搭配入住時間及退房時間和您的旅伴人數以查詢最適合您的旅店，進入介紹頁面後會提供各式房型選擇，找出只屬於您的安心住宿。</p>
            <a href="hotel/hotel_index.jsp"><div class="btna">前往住宿搜尋畫面</div></a>
        </div>
    </section>
    <section id="s4">
        <div class="textbox">
            <p>尋找台灣全島的熱門景點</p>
            <p>依照您鎖定的地區尋找熱門景點、餐廳，我們提供各種詳細資訊，包括門票價錢資訊及營業時間，配合您出發到此地的日期找尋最適合的觀光景點。</p>
            <a href="sight/sight_index.jsp"><div class="btna">前往景點搜尋畫面</div></a>
        </div>
        <div class="textbox">
            <p>還沒想好要好好探索台灣的哪個角落?還是安排行程沒有任何著落?</p>
            <p>我們提供一個平台讓所有人分享在台灣遊玩的行程安排，您可以透過地區、旅遊類型或日數及預估金額來找出最適合您的行程。</p>
            <a href="schedule/schedule_index.jsp"><div class="btna">前往行程搜尋畫面</div></a>
        </div>
    </section>
    <section id="s5">
        <div class="logo">
            <p>—— 台灣 ——</p>
            <span id="slogan">enjoyed our sweet island</span>
        </div>
    </section>
    <footer>
        <small>&copy;TaiwanJourney Co.&trade;,Ltd. 2018 All Rights Reserved.</small>
    </footer>
</body>