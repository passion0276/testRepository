<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>函館山夜景三日遊</title>
<link href="../css/tourInfo.css" rel="stylesheet" />
<link href="../css/style.css" rel="stylesheet" />
<link href="../css/search.css" rel="stylesheet" />
<link href="../css/login.css" rel="stylesheet" />
<link rel="stylesheet" href="font-awesome-4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
<link rel="stylesheet" href="../font-awesome-4.7.0/css/font-awesome.min.css">

<script src="../js/jquery-3.3.1.min.js"></script>
<script src="../js/jquery.func_toggle.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js" integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T" crossorigin="anonymous"></script>

    <script>
        $(function() {
            //navbar的底線效果
            $('nav ul li').hover(function() {
                $(this).children('.line').stop().animate({
                    width: "100%"
                });
            }, function() {
                $(this).children('.line').stop().animate({
                    width: "0px"
                });
            })
            //navbar的偵測螢幕高度變換效果
            $(window).bind('scroll resize', function() {
                var $this = $(this);
                var $this_Top = $this.scrollTop();    　　
                if ($this_Top < 100) {
                    $('nav').css({
                        "position": "absolute",
                        "background-color": "#e2772b"
                    });
                    $('nav a').css("color", "black");
                }
                if ($this_Top > 100) {
                    $('nav').css({
                        "position": "fixed",
                        "background-color": "rgba(74, 74, 74, 0.63)"
                    });
                    $('nav a').css("color", "white");
                }
            }).scroll();
            //按下愛心變換成實心愛心         
            $('#tourInfo .like').funcToggle('click', 
                function() {
                        $(this).removeClass("like");
                        $(this).addClass("special");
                },function(){
                        $(this).removeClass("special");
                        $(this).addClass("like");
            })
            
            //按下day後顯示當天行程
            $('.daybox h3').click(function() {
                $(this).next().slideToggle();
            })
        
            //控制footer保持在最下面
            var h = $(window).height();
            h=h-82;
            $('#mainbox').css("min-height",h);
            
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
    <i class="fa fa-sign-in loginbtn" aria-hidden="true" onclick="login()">&nbsp&nbsp登入</i>
    <!--<i class="fa fa-sign-out logoutbtn" aria-hidden="true">&nbsp&nbsp登出</i>-->
    <nav>
        <h1><a href="../index.jsp">台灣旅跡</a></h1>
        <ul>
            <li><a href="../flight/flight_index.jsp">搜尋機票</a><span class="line"></span></li>
            <li><a href="../hotel/hotel_index.jsp">搜尋住宿</a><span class="line"></span></li>
            <li><a href="../ticket/ticket_index.jsp">搜尋門票</a><span class="line"></span></li>
            <li><a href="../traffic/traffic_index.jsp">搜尋車票</a><span class="line"></span></li>
            <li><a href="../sight/sight_index.jsp">搜尋景點</a><span class="line"></span></li>
            <li><a href="schedule_index.jsp">搜尋行程</a><span class="line"></span></li>
            <li><a href="../diy.jsp">製作行程</a><span class="line"></span></li>
            <li><a href="../member/member_index.jsp">會員專區</a><span class="line"></span></li>
        </ul>
        <!--登入後的會員頭貼<div id="user"><span id="userPic"><img src="../images/user.jpg"></span><span id="userName">Pei-hsuan</span></div>-->
    </nav>
    <div id="mainbox">
        <div id="tourInfo">
            <div class="image">
                <img src="../images/schedule/tour.jpg">
            </div>
            <div>
                <h4>【函館山夜景】</h4><span class="like"></span>
                <p>夜裡華燈初上，扇狀函館市容炫麗而迷離，如被函館灣及津輕海峽夾住的「鯨魚尾巴」獨特地形，彷彿在Chanel(香奈兒)的品牌符標上，灑落點綴一地珠寶光海，優雅又名貴的迷人氛圍令人屏息。自函館山頂俯眺那瑰麗炫爛，海面反照華燈，燈影隨波浪起落，如萬道金蛇翻騰，曾與香港太平山，義大利拿坡里並列三大夜景。
                </p>
            </div>
        </div>
        <div id="main">
            <div class="daybox">
                <h3>
                    DAY1
                </h3>
                <div class="daySchedule">
                    <div class="dayword">
                        <div class="time">
                            <p>9:00<br> | <br> 10:00
                            </p>
                        </div>
                        <div class="dayInfo">
                            <div>
                                <img src="../images/sight/card1.jpg">
                            </div>
                            <div>
                                <h5>九份老街</h5>
                                <p>九份的懷舊氣息，自然而然的也承襲的許多美食，例如香Q有勁的X圓，除了原有的地瓜、X頭口味之外，還有特別的抹茶口味，冷熱皆宜喔；紅糟肉圓則以傳統古法製作內餡兒，搭配上軟嫩的外皮，味道恰如其分的醬料；此外還有黑糖麻糬、豆腐乳、無鉛土皮蛋等等。</p>
                            </div>
                        </div>
                    </div>
                    <div class="trafficbox">
                       <div class="time">
                            <p>9:00<br> | <br> 10:00</p>
                        </div>
                        <div class="traffic">
                            <h5>火車</h5>
                        </div>
                    </div>
                    <div class="dayword">
                        <div class="time">
                            <p>9:00<br> | <br> 10:00
                            </p>
                        </div>
                        <div class="dayInfo">
                            <div>
                                <img src="../images/sight/card1.jpg">
                            </div>
                            <div>
                                <h5>九份老街</h5>
                                <p>九份的懷舊氣息，自然而然的也承襲的許多美食，例如香Q有勁的X圓，除了原有的地瓜、X頭口味之外，還有特別的抹茶口味，冷熱皆宜喔；紅糟肉圓則以傳統古法製作內餡兒，搭配上軟嫩的外皮，味道恰如其分的醬料；此外還有黑糖麻糬、豆腐乳、無鉛土皮蛋等等。</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="daybox">
                <h3>
                    DAY2
                </h3>
                <div class="daySchedule">
                    <div class="dayword">
                        <div class="time">
                            <p>9:00<br> | <br> 10:00
                            </p>
                        </div>
                        <div class="dayInfo">
                            <div>
                                <img src="../images/sight/card1.jpg">
                            </div>
                            <div>
                                <h5>九份老街</h5>
                                <p>九份的懷舊氣息，自然而然的也承襲的許多美食，例如香Q有勁的X圓，除了原有的地瓜、X頭口味之外，還有特別的抹茶口味，冷熱皆宜喔；紅糟肉圓則以傳統古法製作內餡兒，搭配上軟嫩的外皮，味道恰如其分的醬料；此外還有黑糖麻糬、豆腐乳、無鉛土皮蛋等等。</p>
                            </div>
                        </div>
                    </div>
                    <div class="dayword">
                        <div class="time">
                            <p>9:00<br> | <br> 10:00
                            </p>
                        </div>
                        <div class="dayInfo">
                            <div>
                                <img src="../images/sight/card1.jpg">
                            </div>
                            <div>
                                <h5>九份老街</h5>
                                <p>九份的懷舊氣息，自然而然的也承襲的許多美食，例如香Q有勁的X圓，除了原有的地瓜、X頭口味之外，還有特別的抹茶口味，冷熱皆宜喔；紅糟肉圓則以傳統古法製作內餡兒，搭配上軟嫩的外皮，味道恰如其分的醬料；此外還有黑糖麻糬、豆腐乳、無鉛土皮蛋等等。</p>
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