<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>九份</title>
<link href="../css/sightInfo.css" rel="stylesheet" />
    <link href="../css/style.css" rel="stylesheet" />
    <link href="../css/search.css" rel="stylesheet" />
    <link href="../css/login.css" rel="stylesheet" />
    <link rel="stylesheet" href="../font-awesome-4.7.0/css/font-awesome.min.css"> 
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">

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
            //按下愛心變換成實心愛心         
            $('#infoWord .like').funcToggle('click', 
                function() {
                        $(this).removeClass("like");
                        $(this).addClass("special");
                },function(){
                        $(this).removeClass("special");
                        $(this).addClass("like");
            })
        
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
            <li><a href="sight_index.jsp">搜尋景點</a><span class="line"></span></li>
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
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img class="d-block w-100" src="../images/sight/index9.jpg" alt="First slide">
                    </div>
                    <div class="carousel-item">
                        <img class="d-block w-100" src="../images/sight/index12.jpg" alt="Second slide">
                    </div>
                    <div class="carousel-item">
                        <img class="d-block w-100" src="../images/sight/index14.jpg" alt="Third slide">
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
        <div id="infoWord">
            <h3>九份老街</h3><span class="like"></span>
            <p>新北市瑞芳區汽車路89號</p>
            <p>02-2406-3270</p>
            <p>搭高鐵或臺鐵至臺北站下-轉搭臺北捷運至忠孝復興站下-轉搭基隆客運(往金瓜石)至九份站下。</p>
            <div class="rating">
<span>☆</span><span>☆</span><span>☆</span><span>☆</span><span>☆</span>
</div>    
        </div>
    </div>
    <div id="detail">
        <h3>景點特色</h3>
        <p>同時擁有高山屏障與遼闊海景的九份，除了有首屈一指的山海風光，春夏秋冬晴雨晨昏日夜景致各具物色。區內任何面海窗戶、陽臺、門口埕等地，均可欣賞到不同季節、相異時段的自然景觀、青鬱尖聳的「雞籠山」與開闊碧藍的港灣海濱。「春櫻花、夏清風、秋芒花、冬雲霧」為九份美麗多變之四季容顏最佳寫照。春日踏青，臺陽公司瑞芳礦場辦事處與福山宮前埕，幾叢櫻花迎面展姿。夏日山嵐清風，溫差效應造成日吹山風、夜吹海風，令人暑氣全消。晚秋時分芒花抽穗，隨著東北季風吹拂，一波波白芒如浪潮般在山巒間浪漫搖曳，駐足頌德公園上方涼亭、大竿林、雞籠山及往雙溪的 102縣道上，感受款款詩意。冬日霪雨連綿，細雨中石階兀自流著瀑布般的水流，寒意襲人的繚繞霧氣，為九份增添幾許若隱若現的另一種冷清、蕭瑟面貌。白天若無雲霧瀰漫，海上一片清朗蔚藍，可遠眺層層的海浪；入夜後，海面上漁火點點，更襯托出山城夜晚的寧靜。其它諸如坐看日出雲起、晚霞滿天、觀星賞月...，均令人動容，難以忘懷。
        </p>
    </div>
    <div id="comments">
        <h3>評論</h3>
        <div class="commentbox">
            <div class="userPic">
                <img src="../images/user/user.jpg">
            </div>
            <div class="userComment">
               <div class="rating">
<span>☆</span><span>☆</span><span>☆</span><span>☆</span><span>☆</span>
</div>    
                <from>
                        <textarea class="form-control" id="exampleFormControlTextarea1" rows="3" placeholder="請輸入評論...."></textarea>
                        <div class="mt-2">
                            <button type="submit" class="btn btn-primary btn-warning col-1">發表</button>
                        </div>
                </from>
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