<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>台灣旅跡-景點查詢結果</title>
<link href="../css/style.css" rel="stylesheet" />
    <link href="../css/search.css" rel="stylesheet" />
    <link href="../css/login.css" rel="stylesheet" />
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

            //景點餐廳按鈕切換
            $('#changeSR .tag').css("background-color","#b1b1b1");
            $('#changeSR .tag').click(function(){
                $(this).css("background-color","#e2772b");
                $(this).siblings().css("background-color","#b1b1b1");
            })
            //按下愛心變換成實心愛心         
            $('#show .like').funcToggle('click', 
                function() {
                        $(this).removeClass("like");
                        $(this).addClass("special");
                },function(){
                        $(this).removeClass("special");
                        $(this).addClass("like");
            })
            
            //控制左側條件“出發時間-去程”
            $("#slider-range").slider({
                range: true,
                min: 0,
                max: 100000,
                step: 500,
                values: [0, 100000],
                slide: function(e, ui) {
                    var money1 = ui.values[0];
                    var money2 = ui.values[1];

                    if (money1.length > 3) {
                        var money = money1.substr(0, 3) + ',' + money1.substr(3) + '元';
                    } else {
                        var money = money1 + '元';
                    }
                    $('.slider-time').html(money);
                    if (money2.length > 3) {
                        money = money2.substr(0, 3) + ',' + money2.substr(3) + '元';
                    } else {
                        money = money2 + '元';
                    }
                    $('.slider-time2').html(money);
                }
            });
            
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
    <div id="orderby">
        <form class="form-inline">
            <label for="orderOp" class="col-form-label-sm">排序方式</label>
            <div class="col-lg-2">
                <select id="orderbyOp" class="form-control-sm">
                                <option value="popular" selected>歡迎程度由高到低</option>
                                <option value="priceH">預算由高到低</option>
                                <option value="priceL">預算由低到高</option>
                                <option value="dayH">天數由多到少</option>
                                <option value="dayL">天數由少到多</option>
                        </select>
            </div>
        </form>
    </div>
    <div id="contentS">
       <div id="changeSR">
           <span class="tag">景點</span>
           <span class="tag">餐廳</span>
       </div>
        <div class="where" style="margin-top: 8px;">
            <div class="accordion" id="accordionExample" class="card-group">
                <!--第一格條件區!-->
                <div class="card">
                    <div class="card-header" id="tourType">
                        <h5 class="mb-0">
                            <button class="btn btn-link" type="button" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">主題類型
                            </button>
                        </h5>
                    </div>

                    <div id="collapseOne" class="collapse show" aria-labelledby="tourType" data-parent="#accordionExample">
                        <div class="card-body">
                            <div class="form-check">
                                <input class="form-check-input" type="checkbox" value="" id="direct">
                                <label class="form-check-label" for="direct">親子</label>
                            </div>
                            <div class="form-check">
                                <input class="form-check-input" type="checkbox" value="" id="turn1">
                                <label class="form-check-label" for="turn1">情侶</label>
                            </div>
                            <div class="form-check">
                                <input class="form-check-input" type="checkbox" value="" id="turn2">
                                <label class="form-check-label" for="turn2">賞花</label>
                            </div>
                            <div class="form-check">
                                <input class="form-check-input" type="checkbox" value="" id="turn2">
                                <label class="form-check-label" for="turn2">美食</label>
                            </div>
                            <div class="form-check">
                                <input class="form-check-input" type="checkbox" value="" id="turn2">
                                <label class="form-check-label" for="turn2">文化之旅</label>
                            </div>
                            <div class="form-check">
                                <input class="form-check-input" type="checkbox" value="" id="turn2">
                                <label class="form-check-label" for="turn2">遊樂園</label>
                            </div>
                        </div>
                    </div>
                </div>
                <!--第一格條件區結束!-->
                <!--第二格條件區!-->
                <div class="card">
                    <div class="card-header" id="day">
                        <h5 class="mb-0">
                            <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseZero" aria-expanded="false" aria-controls="collapseZero">天數</button>
                        </h5>
                    </div>
                    <div id="collapseZero" class="collapse show" aria-labelledby="day" data-parent="#accordionExample">
                        <div class="card-body">
                            <label for="days" class="col-form-label-sm">旅遊天數</label>
                            <select id="days" class="form-control">
                                <option value="none" selected>不限</option>
                                <option value="1">1日</option>
                                <option value="2">2日</option>
                                <option value="3">3日</option>
                                <option value="4">3日以上</option>
                            </select>
                        </div>
                    </div>
                </div>
                <!--第二格條件區結束!-->
                <!--第三格條件區!-->
                <div class="card">
                    <div class="card-header" id="moneyLimit">
                        <h5 class="mb-0">
                            <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">金額限制</button>
                        </h5>
                    </div>
                    <div id="collapseTwo" class="collapse show" aria-labelledby="moneyLimit" data-parent="#accordionExample">
                        <div class="card-body">
                            <div id="money-range">
                                <p>
                                    <span class="slider-time">0元</span> - <span class="slider-time2">100000元</span>
                                </p>
                                <div class="sliders_step1">
                                    <div id="slider-range"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--第三格條件區結束!-->
                <!--第四格條件區!-->
                <div class="card">
                    <div class="card-header" id="area">
                        <h5 class="mb-0">
                            <button class="btn btn-link collapsed " type="button" data-toggle="collapse" data-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">地區</button>
                        </h5>
                    </div>
                    <div id="collapseThree" class="collapse show" aria-labelledby="area" data-parent="#accordionExample">
                        <div class="card-body">
                            <div class="checkC">
                                <button id="selectAll">全選</button>
                                <button id="clearAll">取消全選</button>
                            </div>
                            <fieldset class="form-group">
                                <legend>北部</legend>
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" value="上海航空公司的編號" id="air+number">
                                    <label class="form-check-label" for="air+number">台北</label>
                                </div>
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" value="國泰航空的編號" id="air+number">
                                    <label class="form-check-label" for="air+number">基隆</label>
                                </div>
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" value="國泰航空的編號" id="air+number">
                                    <label class="form-check-label" for="air+number">宜蘭</label>
                                </div>
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" value="中華航空公司的編號" id="air+number">
                                    <label class="form-check-label" for="air+number">桃園</label>
                                </div>
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" value="國泰航空的編號" id="air+number">
                                    <label class="form-check-label" for="air+number">新竹</label>
                                </div>
                            </fieldset>
                            <fieldset class="form-group">
                                <legend>中部</legend>
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" value="國泰航空的編號" id="air+number">
                                    <label class="form-check-label" for="air+number">苗栗</label>
                                </div>
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" value="國泰航空的編號" id="air+number">
                                    <label class="form-check-label" for="air+number">台中</label>
                                </div>
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" value="國泰航空的編號" id="air+number">
                                    <label class="form-check-label" for="air+number">彰化</label>
                                </div>
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" value="國泰航空的編號" id="air+number">
                                    <label class="form-check-label" for="air+number">雲林</label>
                                </div>
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" value="國泰航空的編號" id="air+number">
                                    <label class="form-check-label" for="air+number">南投</label>
                                </div>
                            </fieldset>
                            <fieldset class="form-group">
                                <legend>南部</legend>
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" value="國泰航空的編號" id="air+number">
                                    <label class="form-check-label" for="air+number">嘉義</label>
                                </div>
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" value="國泰航空的編號" id="air+number">
                                    <label class="form-check-label" for="air+number">台南</label>
                                </div>
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" value="國泰航空的編號" id="air+number">
                                    <label class="form-check-label" for="air+number">高雄</label>
                                </div>
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" value="國泰航空的編號" id="air+number">
                                    <label class="form-check-label" for="air+number">屏東</label>
                                </div>
                            </fieldset>
                            <fieldset class="form-group">
                                <legend>東部</legend>
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" value="國泰航空的編號" id="air+number">
                                    <label class="form-check-label" for="air+number">花蓮</label>
                                </div>
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" value="國泰航空的編號" id="air+number">
                                    <label class="form-check-label" for="air+number">台東</label>
                                </div>
                            </fieldset>
                            <fieldset class="form-group">
                                <legend>外島</legend>
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" value="國泰航空的編號" id="air+number">
                                    <label class="form-check-label" for="air+number">澎湖</label>
                                </div>
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" value="國泰航空的編號" id="air+number">
                                    <label class="form-check-label" for="air+number">金門</label>
                                </div>
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" value="國泰航空的編號" id="air+number">
                                    <label class="form-check-label" for="air+number">馬祖</label>
                                </div>
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" value="國泰航空的編號" id="air+number">
                                    <label class="form-check-label" for="air+number">蘭嶼</label>
                                </div>
                            </fieldset>
                        </div>
                    </div>
                </div>
                <!--第四格條件區結束!-->
                <!--第五格條件區!-->
                <div class="card">
                    <div class="card-header" id="traffic">
                        <h5 class="mb-0">
                            <button class="btn btn-link" type="button" data-toggle="collapse" data-target="#collapseFour" aria-expanded="true" aria-controls="collapseFour">主要交通工具
                            </button>
                        </h5>
                    </div>

                    <div id="collapseFour" class="collapse show" aria-labelledby="traffic" data-parent="#accordionExample">
                        <div class="card-body">
                            <div class="form-check">
                                <input class="form-check-input" type="checkbox" value="" id="direct">
                                <label class="form-check-label" for="direct">火車</label>
                            </div>
                            <div class="form-check">
                                <input class="form-check-input" type="checkbox" value="" id="turn1">
                                <label class="form-check-label" for="turn1">高鐵</label>
                            </div>
                            <div class="form-check">
                                <input class="form-check-input" type="checkbox" value="" id="turn2">
                                <label class="form-check-label" for="turn2">捷運</label>
                            </div>
                            <div class="form-check">
                                <input class="form-check-input" type="checkbox" value="" id="turn2">
                                <label class="form-check-label" for="turn2">汽車</label>
                            </div>
                            <div class="form-check">
                                <input class="form-check-input" type="checkbox" value="" id="turn2">
                                <label class="form-check-label" for="turn2">機車</label>
                            </div>
                            <div class="form-check">
                                <input class="form-check-input" type="checkbox" value="" id="turn2">
                                <label class="form-check-label" for="turn2">腳踏車</label>
                            </div>
                        </div>
                    </div>
                </div>
                <!--第五格條件區結束!-->
            </div>
        </div>
        <main>
            <div id="show">
                <div class="container-fluid px-lg-1">
                    <div class="row">
                        <div class=" col-lg-4 p-2">
                            <div class="card">
                                <span class="like"></span>
                                <img class="card-img-top" src="../images/sight/card1.jpg" alt="Card image cap">
                                <div class="card-body">
                                    <h5 class="card-title">(台北)瑞芳</h5>
                                    <p class="card-text">瑞芳區古樸的風情近年來吸引了相當多的民眾前往旅遊，除九份、金瓜石所呈現的古鎮風情以外，許多特別的旅遊景點也不容錯過。</p>
                                    <a href="sight_info.jsp" class="btn btn-primary d-block mx-auto btn-warning">詳細資訊</a>
                                </div>
                            </div>
                        </div>
                        <div class=" col-lg-4 p-2">
                            <div class="card">
                               <span class="like"></span>
                                <img class="card-img-top" src="../images/sight/card2.jpg" alt="Card image cap">
                                <div class="card-body">
                                    <h5 class="card-title">(台北)金瓜石</h5>
                                    <p class="card-text">日治時期日本人來金瓜石開採金礦，逐漸成唯一個地方生活圈，金瓜石便有『東亞第一金都』之稱。</p>
                                    <a href="sight_info.jsp" class="btn btn-primary d-block mx-auto btn-warning">詳細資訊</a>
                                </div>
                            </div>
                        </div>
                        <div class=" col-lg-4 p-2">
                            <div class="card">
                               <span class="like"></span>
                                <img class="card-img-top" src="../images/sight/card3.jpg" alt="Card image cap">
                                <div class="card-body">
                                    <h5 class="card-title">(台北)淡水</h5>
                                    <p class="card-text">漁人碼頭為一兼具漁業發展與觀光休閒的優質公園，漁人碼頭在經過整地興建後，已成為新北市重要的觀光活動休閒場地。</p>
                                    <a href="sight_info.jsp" class="btn btn-primary d-block mx-auto btn-warning">詳細資訊</a>
                                </div>
                            </div>
                        </div>
                        <div class=" col-lg-4 p-2">
                            <div class="card">
                                <span class="like"></span>
                                <img class="card-img-top" src="../images/sight/card4.jpg" alt="Card image cap">
                                <div class="card-body">
                                    <h5 class="card-title">(臺北)九份</h5>
                                    <p class="card-text">金瓜石，60年代以後，隨著礦脈枯竭，採金的事業雙雙走入歷史，留下的礦場景觀在70年代末期隨著懷舊風潮吹起，反而成為觀光熱門地。</p>
                                    <a href="sight_info.jsp" class="btn btn-primary d-block mx-auto btn-warning">詳細資訊</a>
                                </div>
                            </div>
                        </div>
                        <div class=" col-lg-4 p-2">
                            <div class="card">
                                <span class="like"></span>
                                <img class="card-img-top" src="../images/sight/card5.jpg" alt="Card image cap">
                                <div class="card-body">
                                    <h5 class="card-title">(南投)埔里</h5>
                                    <p class="card-text">埔里由於氣候環境優良，水質清澈，為南投花卉產業重鎮。近來更在埔霧公路起端處探測出溫泉，屬於本縣新興溫泉區。</p>
                                    <a href="sight_info.jsp" class="btn btn-primary d-block mx-auto btn-warning">詳細資訊</a>
                                </div>
                            </div>
                        </div>
                        <div class=" col-lg-4 p-2">
                            <div class="card">
                                <span class="like"></span>
                                <img class="card-img-top" src="../images/sight/card6.jpg" alt="Card image cap">
                                <div class="card-body">
                                    <h5 class="card-title">(台東)鐵路藝術村</h5>
                                    <p class="card-text">擁有80年歷史的臺東火車站功成身退後，搖身一變成為歷史建築、藝術、旅遊休閒的多元文化空間－臺東鐵道藝術村，各類型的藝術家、藝術團體群聚、整合、交流。</p>
                                    <a href="sight_info.jsp" class="btn btn-primary d-block mx-auto btn-warning">詳細資訊</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </main>
    </div>
    <footer>
        <small>&copy;TaiwanJourney Co.&trade;,Ltd. 2018 All Rights Reserved.</small>
    </footer>
</body>

</html>