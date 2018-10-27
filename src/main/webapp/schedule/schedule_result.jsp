<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>台灣旅跡-行程查詢結果</title>
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
                        "background-color": "rgba(255, 255, 255, 0.54)"
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
            $('#show .tourbox .like').funcToggle('click',
                function() {
                    $(this).removeClass("like");
                    $(this).addClass("special");
                },
                function() {
                    $(this).removeClass("special");
                    $(this).addClass("like");
                })

            //機票資訊框按下"詳細"，向下顯示詳細資訊框
            $('.flybox .price .btnF .info').click(function() {
                $(this).parents('.flybox').next().slideToggle();
            })

            //控制左側條件“出發時間-去程”
            $("#slider-range").slider({
                range: true,
                min: 0,
                max: 1440,
                step: 15,
                values: [0, 1440],
                slide: function(e, ui) {
                    var hours1 = Math.floor(ui.values[0] / 60);
                    var minutes1 = ui.values[0] - (hours1 * 60);

                    if (hours1.length == 1) hours1 = '0' + hours1;
                    if (minutes1.length == 1) minutes1 = '0' + minutes1;
                    if (minutes1 == 0) minutes1 = '00';
                    if (hours1 >= 12) {
                        if (hours1 == 12) {
                            hours1 = hours1;
                            minutes1 = minutes1 + " PM";
                        } else {
                            hours1 = hours1 - 12;
                            minutes1 = minutes1 + " PM";
                        }
                    } else {
                        hours1 = hours1;
                        minutes1 = minutes1 + " AM";
                    }
                    if (hours1 == 0) {
                        hours1 = 12;
                        minutes1 = minutes1;
                    }
                    $('.slider-time').html(hours1 + ':' + minutes1);

                    var hours2 = Math.floor(ui.values[1] / 60);
                    var minutes2 = ui.values[1] - (hours2 * 60);

                    if (hours2.length == 1) hours2 = '0' + hours2;
                    if (minutes2.length == 1) minutes2 = '0' + minutes2;
                    if (minutes2 == 0) minutes2 = '00';
                    if (hours2 >= 12) {
                        if (hours2 == 12) {
                            hours2 = hours2;
                            minutes2 = minutes2 + " PM";
                        } else if (hours2 == 24) {
                            hours2 = 11;
                            minutes2 = "59 PM";
                        } else {
                            hours2 = hours2 - 12;
                            minutes2 = minutes2 + " PM";
                        }
                    } else {
                        hours2 = hours2;
                        minutes2 = minutes2 + " AM";
                    }

                    $('.slider-time2').html(hours2 + ':' + minutes2);
                }
            });
            //控制左側條件“出發時間-回程”
            $("#slider-rangeE").slider({
                range: true,
                min: 0,
                max: 1440,
                step: 15,
                values: [0, 1440],
                slide: function(e, ui) {
                    var hours1 = Math.floor(ui.values[0] / 60);
                    var minutes1 = ui.values[0] - (hours1 * 60);

                    if (hours1.length == 1) hours1 = '0' + hours1;
                    if (minutes1.length == 1) minutes1 = '0' + minutes1;
                    if (minutes1 == 0) minutes1 = '00';
                    if (hours1 >= 12) {
                        if (hours1 == 12) {
                            hours1 = hours1;
                            minutes1 = minutes1 + " PM";
                        } else {
                            hours1 = hours1 - 12;
                            minutes1 = minutes1 + " PM";
                        }
                    } else {
                        hours1 = hours1;
                        minutes1 = minutes1 + " AM";
                    }
                    if (hours1 == 0) {
                        hours1 = 12;
                        minutes1 = minutes1;
                    }
                    $('.slider-timeE').html(hours1 + ':' + minutes1);

                    var hours2 = Math.floor(ui.values[1] / 60);
                    var minutes2 = ui.values[1] - (hours2 * 60);

                    if (hours2.length == 1) hours2 = '0' + hours2;
                    if (minutes2.length == 1) minutes2 = '0' + minutes2;
                    if (minutes2 == 0) minutes2 = '00';
                    if (hours2 >= 12) {
                        if (hours2 == 12) {
                            hours2 = hours2;
                            minutes2 = minutes2 + " PM";
                        } else if (hours2 == 24) {
                            hours2 = 11;
                            minutes2 = "59 PM";
                        } else {
                            hours2 = hours2 - 12;
                            minutes2 = minutes2 + " PM";
                        }
                    } else {
                        hours2 = hours2;
                        minutes2 = minutes2 + " AM";
                    }

                    $('.slider-time2E').html(hours2 + ':' + minutes2);
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
            <li><a href="../ight/sight_index.jsp">搜尋景點</a><span class="line"></span></li>
            <li><a href="schedule_index.jsp">搜尋行程</a><span class="line"></span></li>
            <li><a href="../diy.jsp">製作行程</a><span class="line"></span></li>
            <li><a href="../member/member_index.jsp">會員專區</a><span class="line"></span></li>
        </ul>
        <!--登入後的會員頭貼<div id="user"><span id="userPic"><img src="../images/user.jpg"></span><span id="userName">Pei-hsuan</span></div>-->
    </nav>
    <div id="search">
        <div class="container">
            <div class="row">
                <div class="col-1">
                    <label for="orderOp" class="col-form-label-sm">航段</label>
                    <select id="orderbyOp" class="form-control">
                        <option selected>來回</option>
                        <option>單程</option>
                    </select>
                </div>
                <div class="col-2">
                    <label for="inputState" class="col-form-label-sm">出發日</label>
                    <input type="date" class="form-control">
                </div>
                <div class="col-2">
                    <label for="inputState" class="col-form-label-sm">回程日</label>
                    <input type="date" class="form-control">
                </div>
                <div class="col-2">
                    <label for="inputState" class="col-form-label-sm">出發地</label>
                    <input type="text" class="form-control" placeholder="出發地(城市/機場)">
                </div>
                <div class="col-2">
                    <label for="inputState" class="col-form-label-sm">目的地</label>
                    <input type="text" class="form-control" placeholder="目的地(城市/機場)">
                </div>
                <div class="col-1">
                    <label for="orderOp" class="col-form-label-sm">艙等</label>
                    <select id="orderbyOp" class="form-control">
                        <option selected>經濟艙</option>
                        <option>商務艙</option>
                        <option>頭等艙</option>
                    </select>
                </div>
                <div class="col-1">
                    <label for="orderOp" class="col-form-label-sm">成人</label>
                    <select id="orderbyOp" class="form-control">
                        <option selected>0</option>
                            <option value="1" selected>1</option>
                            <option value="2">2</option>
                            <option value="3">3</option>
                            <option value="4">4</option>
                            <option value="5">5</option>
                            <option value="6">6</option>
                    </select>
                </div>
                <div class="col-1">
                    <label for="orderOp" class="col-form-label-sm">兒童</label>
                    <select id="orderbyOp" class="form-control">
                        <option selected>0</option>
                            <option value="0" selected>0</option>
                            <option value="1">1</option>
                            <option value="2">2</option>
                            <option value="3">3</option>
                            <option value="4">4</option>
                            <option value="5">5</option>
                            <option value="6">6</option>
                    </select>
                </div>
            </div>
        </div>
    </div>
    <div id="orderby">
        <form class="form-inline">
            <label for="orderOp" class="col-form-label-sm">排序方式</label>
            <div class="col-lg-2">
                <select id="orderbyOp" class="form-control-sm">
                                <option selected>最優</option>
                                <option>最便宜優先</option>
                                <option>最快優先</option>
                                <option>去程出發時間</option>
                                <option>航空公司</option>
                                <option>轉機次數</option>
                </select>
            </div>
        </form>
    </div>
    <div id="content">
        <div class="where">
            <div class="accordion" id="accordionExample">
                <!--第一格條件區!-->
                <div class="card">
                    <div class="card-header" id="transferFeq">
                        <h5 class="mb-0">
                            <button class="btn btn-link" type="button" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">轉機次數
                            </button>
                        </h5>
                    </div>

                    <div id="collapseOne" class="collapse show" aria-labelledby="transferFeq" data-parent="#accordionExample">
                        <div class="card-body">
                            <div class="form-check">
                                <input class="form-check-input" type="checkbox" value="" id="direct">
                                <label class="form-check-label" for="direct">直飛</label>
                            </div>
                            <div class="form-check">
                                <input class="form-check-input" type="checkbox" value="" id="turn1">
                                <label class="form-check-label" for="turn1">轉機1次</label>
                            </div>
                            <div class="form-check">
                                <input class="form-check-input" type="checkbox" value="" id="turn2">
                                <label class="form-check-label" for="turn2">轉機2次以上</label>
                            </div>
                        </div>
                    </div>
                </div>
                <!--第一格條件區結束!-->
                <!--第二格條件區!-->
                <div class="card">
                    <div class="card-header" id="startTime">
                        <h5 class="mb-0">
                            <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">出發時間</button>
                        </h5>
                    </div>
                    <div id="collapseTwo" class="collapse" aria-labelledby="startTime" data-parent="#accordionExample">
                        <div class="card-body">
                            <div id="time-range">
                                <p>去程:
                                    <span class="slider-time">12:00 AM</span> - <span class="slider-time2">11:59 PM</span>
                                </p>
                                <div class="sliders_step1">
                                    <div id="slider-range"></div>
                                </div>
                            </div>
                            <div id="time-rangeE">
                                <p>回程:
                                    <span class="slider-timeE">12:00 AM</span> - <span class="slider-time2E">11:59 PM</span>
                                </p>
                                <div class="sliders_step1">
                                    <div id="slider-rangeE"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--第二格條件區結束!-->
                <!--第三格條件區!-->
                <div class="card">
                    <div class="card-header" id="airlineCom">
                        <h5 class="mb-0">
                            <button class="btn btn-link collapsed " type="button" data-toggle="collapse" data-target="#collapseFour" aria-expanded="false" aria-controls="collapseFour">航空公司</button>
                        </h5>
                    </div>
                    <div id="collapseFour" class="collapse" aria-labelledby="airlineCom" data-parent="#accordionExample">
                        <div class="card-body">
                            <div class="checkC">
                                <button id="selectAll">全選</button>
                                <button id="clearAll">取消全選</button>
                            </div>
                            <div class="form-check">
                                <input class="form-check-input" type="checkbox" value="上海航空公司的編號" id="air+number">
                                <label class="form-check-label" for="air+number">上海航空</label>
                            </div>
                            <div class="form-check">
                                <input class="form-check-input" type="checkbox" value="中華航空公司的編號" id="air+number">
                                <label class="form-check-label" for="air+number">中華航空</label>
                            </div>
                            <div class="form-check">
                                <input class="form-check-input" type="checkbox" value="國泰航空的編號" id="air+number">
                                <label class="form-check-label" for="air+number">國泰航空</label>
                            </div>
                        </div>
                    </div>
                </div>
                <!--第三格條件區結束!-->
            </div>
        </div>
        <main>
            <div id="show">
                <div class="tourbox">
                    <div>
                        <img src="../images/schedule/tour.jpg">
                    </div>
                    <div>
                        <h4><span class="tag child">親子</span>環島遊‧台北+花蓮 (南部出發)</h4>
                        <p><span>3</span>天/預算<span>5,000</span>元</p>
                        <p>台北101→九份老街→野柳地質公園→宜蘭羅東夜市→花蓮海洋公園</p>
                        <div class="btnT">
                            <div class="info"><a href="schedule_detail.jsp">詳細行程</a></div>
                        </div>
                    </div>
                    <span class="like"></span>
                </div>
                <div class="tourbox">
                    <div>
                        <img src="../images/schedule/tour.jpg">
                    </div>
                    <div>
                        <h4><span class="tag child">親子</span>環島遊‧台北+花蓮 (南部出發)</h4>
                        <p><span>3</span>天/預算<span>5,000</span>元</p>
                        <p>台北101→九份老街→野柳地質公園→宜蘭羅東夜市→花蓮海洋公園</p>
                        <div class="btnT">
                            <div class="info"><a href="schedule_detail.jsp">詳細行程</a></div>
                        </div>
                    </div>
                    <span class="like"></span>
                </div>
            </div>
        </main>
    </div>
    <footer>
        <small>&copy;TaiwanJourney Co.&trade;,Ltd. 2018 All Rights Reserved.</small>
    </footer>
</body>

</html>