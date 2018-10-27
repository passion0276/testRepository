<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>美麗殿城市商旅</title>
<link href="../css/roomInfo.css" rel="stylesheet" />
<link href="../css/style.css" rel="stylesheet" />
<link href="../css/search.css" rel="stylesheet" />
<link href="../css/login.css" rel="stylesheet" />
<link rel="stylesheet" href="../font-awesome-4.7.0/css/font-awesome.min.css"> 
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
<link rel="stylesheet" href="../css/jquery.fancybox.min.css">

<script src="../js/jquery-3.3.1.min.js"></script>
<script src="../js/jquery.func_toggle.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js" integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T" crossorigin="anonymous"></script>
<script src="../js/jquery.fancybox.min.js"></script>

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
                var $this_Top = $this.scrollTop();　　 //當高度小於100時，關閉區塊      　　
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
        <h1><a href="../index.html">台灣旅跡</a></h1>
        <ul>
            <li><a href="../flight/flight_index.jsp">搜尋機票</a><span class="line"></span></li>
            <li><a href="hotel_index.jsp">搜尋住宿</a><span class="line"></span></li>
            <li><a href="../ticket/ticket_index.jsp">搜尋門票</a><span class="line"></span></li>
            <li><a href="../traffic/traffic_index.jsp">搜尋車票</a><span class="line"></span></li>
            <li><a href="../sight/sight_index.jsp">搜尋景點</a><span class="line"></span></li>
            <li><a href="../schedule/schedule_index.jsp">搜尋行程</a><span class="line"></span></li>
            <li><a href="../diy.jsp">製作行程</a><span class="line"></span></li>
            <li><a href="../member/member_index.jsp">會員專區</a><span class="line"></span></li>
        </ul>
        <!--登入後的會員頭貼<div id="user"><span id="userPic"><img src="../images/user.jpg"></span><span id="userName">Pei-hsuan</span></div>-->
    </nav>
    <div id="infoAll">
        <div id="pic">
            <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                <ol class="carousel-indicators">
                    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                </ol>
                <div class="carousel-inner" >
                    <div class="carousel-item active">
                        <img class="d-block w-100" src="../images/hotel/index9.jpg" alt="First slide">
                    </div>
                    <div class="carousel-item">
                        <img class="d-block w-100" src="../images/hotel/index12.jpg" alt="Second slide">
                    </div>
                    <div class="carousel-item">
                        <img class="d-block w-100" src="../images/hotel/index14.jpg" alt="Third slide">
                    </div>
                </div>
                <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                  <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                  <span class="sr-only">Previous</span>
                </a>
                <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                  <span class="carousel-control-next-icon" aria-hidden="true"></span>
                  <span class="sr-only">Next</span>
                </a>
            </div>
        </div>
        <div id="map">
            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3615.729665986703!2d121.45584501462233!3d25.009300245435927!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3442a81d5bea3b51%3A0x680cd7a5a5996674!2z576O6bqX5q6_5Z-O5biC5ZWG5peF!5e0!3m2!1szh-TW!2stw!4v1538412574806" height="400" frameborder="0" style="border:0" allowfullscreen></iframe>
        </div>
    </div>
    <div id="detail">
            <h3>美麗殿城市商旅 (Merryday City Hotel Banqiao Branch)</h3>
            <div class="rating">
                評等: <span>☆</span><span>☆</span><span>☆</span><span>☆</span><span>☆</span>
            </div>    
            <p>新北市板橋區府中路67號</p>
            <p>02-2406-3270</p>
            <p>美麗殿城市商旅 - 板橋館開幕於2014年，不僅為台北市增添風采，也是旅客們的最佳選擇。 1 km之外便是市區內最繁華的地段。 住宿位置優越讓旅客前往市區內的熱門景點變得方便快捷。
            </p>
    </div>
    <div id="room">
        <h4>房型選擇</h4>
        <div class="roombox">
            <div><!--fancybox 幻燈片效果，a href="放大圖" img src="放小圖"，邏輯就是雖然顯示小圖，但點擊進去會連結到大圖-->
                <p>
                  <a href="../images/room/hotel2.jpg" 
                     data-fancybox="images-preview" 
                     data-width="1500" data-height="1000"
                     data-thumbs='{"autoStart":true}'>
                    <img src="../images/hotel/hotel.jpg" />
                  </a>
                </p>  
                <div style="display: none;"><!--a href="放大圖" data-thumb="放小圖"，原理跟上面一樣，格式一定要div夾a們-->
                  <a href="../images/room/hotel3.jpg" data-fancybox="images-preview" 
                     data-width="1500" data-height="1000"
                     data-thumb="../images/room/hotel3.jpg" width="240" height="160"></a>

                  <a href="../images/room/hotel4.jpg" data-fancybox="images-preview" 
                     data-width="1500" data-height="1000"
                     data-thumb="../images/room/hotel4.jpg" width="240" height="160"></a>

                  <a href="../images/room/hotel5.jpg" data-fancybox="images-preview" 
                     data-width="1500" data-height="1000"
                     data-thumb="../images/room/hotel5.jpg" width="240" height="160"></a>
                </div>
            </div>
            <div class="roomInfo">
                <h5>豪華雙人房(L Plus) (L Plus - Deluxe Double)</h5>
                <p>1張加寬特大床 & 1張特大床<br>
                    獨立淋浴間和浴缸<br>
                    免費wifi<br>
                    可容納四人
                </p>
            </div>
            <div class="roomPrice">
                <div>
                    <h5>NT.9,000</h5>
                </div>
                <div class="btnF">
                    <form class="form-inline amount_form">
                        <label>房數:</label>
                        <select class="form-control-sm ml-3 ">
                            <option value="0">0</option>
                            <option value="1">1</option>
                            <option value="2">2</option>
                            <option value="3">3</option>
                            <option value="4">4</option>
                        </select>
                    </form>
                    <a href="hotel_order.jsp">訂購</a>
                </div>
            </div>
        </div>
        <div class="roombox">
            <div>
                <p>
                  <a href="../images/hotel/hotel2.jpg" 
                     data-fancybox="images-preview2" 
                     data-width="1500" data-height="1000"
                     data-thumbs='{"autoStart":true}'>
                    <img src="../images/hotel/hotel.jpg" />
                  </a>
                </p>  
                <div style="display: none;">
                  <a href="../images/room/hotel3.jpg" data-fancybox="images-preview2" 
                     data-width="1500" data-height="1000"
                     data-thumb="../images/room/hotel3.jpg" width="240" height="160"></a>

                  <a href="../images/room/hotel4.jpg" data-fancybox="images-preview2" 
                     data-width="1500" data-height="1000"
                     data-thumb="../images/room/hotel4.jpg" width="240" height="160"></a>

                  <a href="../images/room/hotel5.jpg" data-fancybox="images-preview2" 
                     data-width="1500" data-height="1000"
                     data-thumb="../images/room/hotel5.jpg" width="240" height="160"></a>
                </div>
            </div>
            <div class="roomInfo">
                <h5>豪華雙人房(L Plus) (L Plus - Deluxe Double)</h5>
                <p>1張加寬特大床 & 1張特大床<br>
                    獨立淋浴間和浴缸<br>
                    免費wifi<br>
                    可容納四人
                </p>
            </div>
            <div class="roomPrice">
                <div>
                    <h5>NT.9,000</h5>
                </div>
                <div class="btnF">
                    <form class="form-inline amount_form">
                        <label>房數:</label>
                        <select class="form-control-sm ml-3 ">
                            <option value="0">0</option>
                            <option value="1">1</option>
                            <option value="2">2</option>
                            <option value="3">3</option>
                            <option value="4">4</option>
                        </select>
                    </form>
                    <a href="hotel_order.jsp">訂購</a>
                </div>
            </div>
        </div>
    </div>
    <div id="service">
        <h4>飯店設施</h4>
        <div id="service-box">
            <div class="feature-qroup la">
                <div class="service-sec la">
                    <h5>可使用語言</h5>
                    <div>英語、中文</div>
                </div>
            </div>
            <div class="feature-qroup web">
                <div class="service-sec web">
                    <h5>網路服務</h5>
                    <div>房內wifi</div>
                </div>
            </div>
            <div class="feature-qroup fo">
                <div class="service-sec fo">
                    <h5>餐飲服務</h5>
                    <div>酒吧、餐廳</div>
                </div>
            </div>
            <div class="feature-qroup co">
                <div class="service-sec co">
                    <h5>便利設施</h5>
                    <div>吸菸區、可寄放行李、送洗服務</div>
                </div>
            </div>
        </div>
    </div>
    <div id="orderInfo">
        <h4>入住資訊</h4>
        <div id="word">
            <div class="wordbox">
                <h5>入住與退房時間</h5>
                <p>最早可辦理入住的時間: 15:00<br>
                   最遲可辦理入住的時間: 22:00<br>
                   最晚可辦理退房的時間: 11:00
                </p>
            </div>
            <div class="wordbox">
                <h5>其他實用資訊</h5>
                <p>早餐收費: 300 /人<br>
                   中餐收費: 500 /人<br>
                   晚餐收費: 800 /人
                </p>
            </div>
            <div class="wordbox">
                <h5>住宿概況</h5>
                <p>樓層總數: 6<br>
                   客房總數: 65
                </p>
            </div>
        </div>
    </div>
    <div id="comments">
        <h4>評論</h4>
        <div class="commentbox">
            <div class="userPic">
                <img src="../images/user/user.jpg">
            </div>
            <div class="userComment">
               <div class="rating">
<span>☆</span><span>☆</span><span>☆</span><span>☆</span><span>☆</span>
</div>    
                <p>真心推薦到這裡看看！雖然小吃很普通，但景色真的很美，附近也有一些小景點可以逛逛，不錯！真心推薦到這裡看看！雖然小吃很普通，但景色真的很美，附近也有一些小景點可以逛逛，不錯！真心推薦到這裡看看！雖然小吃很普通，但景色真的很美，附近也有一些小景點可以逛逛，不錯！真心推薦到這裡看看！雖然小吃很普通，但景色真的很美，附近也有一些小景點可以逛逛，不錯！真心推薦到這裡看看！雖然小吃很普通，但景色真的很美，附近也有一些小景點可以逛逛，不錯！真心推薦到這裡看看！雖然小吃很普通，但景色真的很美，附近也有一些小景點可以逛逛，不錯！真心推薦到這裡看看！雖然小吃很普通，但景色真的很美，附近也有一些小景點可以逛逛，不錯！真心推薦到這裡看看！雖然小吃很普通，但景色真的很美，附近也有一些小景點可以逛逛，不錯！</p>
            </div>
        </div>
        <div class="commentbox">
            <div class="userPic">
                <img src="../images/user/user.jpg">
            </div>
            <div class="userComment">
               <div class="rating">
<span>☆</span><span>☆</span><span>☆</span><span>☆</span><span>☆</span>
</div>    
                <p>真心推薦到這裡看看！雖然小吃很普通，但景色真的很美，附近也有一些小景點可以逛逛，不錯！</p>
            </div>
        </div>
    </div>
    <footer>
        <small>&copy;TaiwanJourney Co.&trade;,Ltd. 2018 All Rights Reserved.</small>
    </footer>
</body>

</html>