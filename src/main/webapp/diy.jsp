<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>台灣旅跡-自製行程</title>
<link href="css/style.css" rel="stylesheet" />
<link href="css/diy.css" rel="stylesheet" />
<link href="css/login.css" rel="stylesheet" />
<link rel="stylesheet" href="//apps.bdimg.com/libs/jqueryui/1.10.4/css/jquery-ui.min.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
<link rel="stylesheet" href="font-awesome-4.7.0/css/font-awesome.min.css">

<script src="js/jquery-3.3.1.min.js"></script>
<script src="js/jquery.func_toggle.js"></script>
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

            //按下day後顯示當天行程
            $('.daybox h3').click(function() {
                $(this).next().slideToggle();
            })
            
            //旅程敘述區塊控制
            $('.Thead .arrowDown').funcToggle('click', 
                function() {
                        $(this).removeClass("arrowDown");
                        $(this).addClass("arrowUp");
                        $(this).parent().next().slideToggle();
                },function(){
                        $(this).removeClass("arrowUp");
                        $(this).addClass("arrowDown");
                        $(this).parent().next().slideToggle();
            });
            
            //景點餐廳按鈕切換
            $('.sight .tag').css("background-color","#b1b1b1");
            $('.sight .tag').click(function(){
                $(this).css("background-color","#e2772b");
                $(this).siblings('.tag').css("background-color","#b1b1b1");
            })
            
            //一進入頁面就先指定"我的收藏"為粗體，代表現在停留在我的收藏
            $('.sight>h5 span:first-child').addClass("chose");
            
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
        function mapboxCg(x){
            $('.sight>h5 span').removeClass("chose");
            $('.sight>h5 span').removeClass("nonchose");
            if(x==1){//切換到我的收藏
                $('.favbox').css("display","block");
                $('.searchbox').css("display","none");
                $('.sight>h5 span:first-child').addClass("chose");
            }else if(x==2){//切換到搜尋
                $('.searchbox').css("display","block");
                $('.favbox').css("display","none");
                $('.sight>h5 span:last-child').addClass("chose");
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
        <h1><a href="index.jsp">台灣旅跡</a></h1>
        <ul>
            <li><a href="flight/flight_index.jsp">搜尋機票</a><span class="line"></span></li>
            <li><a href="hotel/hotel_index.jsp">搜尋住宿</a><span class="line"></span></li>
            <li><a href="ticket_ticket_index.jsp">搜尋門票</a><span class="line"></span></li>
            <li><a href="traffic/traffic_index.jsp">搜尋車票</a><span class="line"></span></li>
            <li><a href="sight/sight_index.jsp">搜尋景點</a><span class="line"></span></li>
            <li><a href="schedule/schedule_index.jsp">搜尋行程</a><span class="line"></span></li>
            <li><a href="dly.jsp">製作行程</a><span class="line"></span></li>
            <li><a href="member/member_index.jsp">會員專區</a><span class="line"></span></li>
        </ul>
        <!--登入後的會員頭貼<div id="user"><span id="userPic"><img src="images/user.jpg"></span><span id="userName">Pei-hsuan</span></div>-->
    </nav>
    <div id="mainInfo">
        <form class="form-inline">
            <div class="form-group row">
                <div class="col-sm-10">
                    <input type="text" class="form-control" id="diy_name" placeholder="行程名稱">
                </div>
            </div>
            <label class="ml-4 mr-2" for="tourType">類型</label>
            <select class="custom-select my-1 mr-sm-2" id="tourType">
                <option selected disabled>選擇類型</option>
                <option value="child">親子</option>
                <option value="family">家族</option>
                <option value="couple">情侶</option>
                <option value="culture">文化</option>
                <option value="food">美食</option>
                <option value="flower">賞花</option>
                <option value="play">遊樂園</option>
            </select>
            <label class="ml-4 mr-2" for="tourDate">天數</label>
            <select class="custom-select my-1 mr-sm-2" id="tourDate">
                <option selected disabled>選擇天數</option>
                <option value="1">1</option>
                <option value="2">2</option>
                <option value="3">3</option>
                <option value="4">4</option>
                <option value="5">5</option>
                <option value="6">6</option>
                <option value="7">7</option>
            </select>
            <label class="ml-4 mr-2" for="tourMoney">預估金額</label>
            <div class="form-group row">
                <div class="col-sm-10">
                    <input type="text" class="form-control" id="tourMoney" placeholder="5000">
                </div>
            </div>
            <button type="submit" class="btn btn-primary ml-4 btn-warning col-1">建立</button>
            <i class="fa fa-trash" aria-hidden="true"></i>
            <i class="fa fa-floppy-o" aria-hidden="true"></i>
        </form>
    </div>
    <div id="diyContent">
        <div id="show">
            <div class="diybox">
               <!-- 旅程敘述區塊 -->
                <div class="telescop">
                    <div class="Thead">
                        <h5>旅程敘述</h5><span class="arrowDown"></span>
                    </div>
                    <div class="form-group">
                        <textarea class="form-control" id="exampleFormControlTextarea1" rows="3" placeholder="請輸入旅程敘述..."></textarea>
                    </div>
                </div>
                <!-- 天數增減區塊 -->
                <div id="days">
                    <div class="daymark">DAY1</div>
                    <div class="daymark">DAY2</div>
                    <div class="daymark">DAY1</div>
                    <div class="control">
                        <i class="fa fa-plus" aria-hidden="true"></i>
                        <i class="fa fa-minus" aria-hidden="true"></i>
                    </div>
                </div>
                <!-- 行程安排區塊 -->
                <div class="daybox">
                    <h3>
                        DAY1
                    </h3>
                    <div class="daySchedule">
                        <div class="dayword">
                            <div class="dayInfo">
                                <div>
                                   <div>
                                    <img src="images/sight/card1.jpg">
                                   </div>
                                    <input type="text" placeholder="09:00" size="7">
                                    ~
                                    <input type="text" placeholder="12:00" size="7">
                                </div>
                                <div>
                                    <h5>九份老街</h5>
                                    <i class="fa fa-trash" aria-hidden="true"></i>
                                    <p>224新北市瑞芳區基山街</p>
                                </div>
                            </div>
                        </div>
                        <div class="trafficbox">
                            <div class="traffic">
                            <input type="text" placeholder="09:00" size="7">
                             ~
                            <input type="text" placeholder="12:00" size="7">
                            <form class="form-inline">
                                <label class="ml-4 mr-2" for="tourTraff">選擇交通工具</label>
                                <select class="custom-select my-1 mr-sm-2" id="tourTraff">
                                    <option selected disabled></option>
                                    <option value="train">火車</option>
                                    <option value="highreal">高鐵</option>
                                    <option value="mrt">捷運</option>
                                    <option value="bus">公車</option>
                                    <option value="walk">步行</option>
                                    <option value="bike">腳踏車</option>
                                    <option value="car">開車</option>
                                    <option value="texi">計程車</option>
                                </select>
                            </form>
                            <div class="buyTicket">前往購買車票</div>
                            </div>
                        </div>
                        <div class="dayword">
                            <div class="dayInfo">
                                <div>
                                   <div>
                                    <img src="images/sight/card1.jpg">
                                   </div>
                                    <input type="text" placeholder="09:00" size="7">
                                    ~
                                    <input type="text" placeholder="12:00" size="7">
                                </div>
                                <div>
                                    <h5>九份老街</h5>
                                    <i class="fa fa-trash" aria-hidden="true"></i>
                                    <p>224新北市瑞芳區基山街</p>
                                </div>
                            </div>
                        </div>
                    </div>
            </div>
            </div>
        </div>
        <div id="mapInfo">
            <div class="mapbox">
                <div class="sight">
                    <h5><span onclick="mapboxCg(1)">我的收藏</span> / <span onclick="mapboxCg(2)">搜尋</span></h5>
                    <!--我的收藏開始-->
                    <div class="favbox">
                    <div>
                        <span class="tag rest">餐廳</span>
                        <span class="tag point">景點</span>
                        <label class="ml-5 mr-2 col-form-label-sm" for="favRegion">地區</label>
                        <select class="custom-select col-4 form-control-sm" id="favRegion">
                            <option selected disabled></option>
                            <option value="taipei">台北</option>
                            <option value="tauyuan">桃園</option>
                            <option value="shinchu">新竹</option>
                            <option value="myauli">苗栗</option>
                            <option value="taichun">台中</option>
                            <option value="chanhua">彰化</option>
                            <option value="yunlin">雲林</option>
                        </select>
                    </div>
                    <div id="likeSpace">
                        <div class="sightbox">
                            <div>
                                <img src="images/sight/card1.jpg">
                            </div>
                            <div>
                                <h5>九份老街</h5>
                                <i class="fa fa-heart" aria-hidden="true"></i>
                                <p>224新北市瑞芳區基山街</p>
                            </div>
                        </div>
                        <div class="sightbox">
                            <div>
                                <img src="images/sight/card1.jpg">
                            </div>
                            <div>
                                <h5>九份老街</h5>
                                <i class="fa fa-heart" aria-hidden="true"></i>
                                <p>224新北市瑞芳區基山街</p>
                            </div>
                        </div><div class="sightbox">
                            <div>
                                <img src="images/sight/card1.jpg">
                            </div>
                            <div>
                                <h5>九份老街</h5>
                                <i class="fa fa-heart" aria-hidden="true"></i>
                                <p>224新北市瑞芳區基山街</p>
                            </div>
                        </div>
                        <div class="sightbox">
                            <div>
                                <img src="images/sight/card1.jpg">
                            </div>
                            <div>
                                <h5>九份老街</h5>
                                <i class="fa fa-heart" aria-hidden="true"></i>
                                <p>224新北市瑞芳區基山街</p>
                            </div>
                        </div>
                    </div>
                    </div>
                    <!--我的收藏結尾-->
                    <!--搜尋開始-->
                    <div class="searchbox">
                    <div>
                        <form class="form-inline my-2 my-lg-0">
                          <input class="form-control form-control-sm mr-2 " type="search" placeholder="景點名稱" aria-label="Search">
                          <label class="mr-1" for="searchRegion">地區</label>
	                      <select class="custom-select form-control-sm col-2 mr-4" id="searchRegion">
                            <option selected disabled></option>
                            <option value="taipei">台北</option>
                            <option value="tauyuan">桃園</option>
                            <option value="shinchu">新竹</option>
                            <option value="myauli">苗栗</option>
                            <option value="taichun">台中</option>
                            <option value="chanhua">彰化</option>
                            <option value="yunlin">雲林</option>
	                      </select>
	                      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
                        </form>
                    </div>
                    <div id="likeSpace">
                        <div class="sightbox">
                            <div>
                                <img src="images/sight/card1.jpg">
                            </div>
                            <div>
                                <h5>九份老街</h5>
                                <p>224新北市瑞芳區基山街</p>
                            </div>
                        </div>
                        <div class="sightbox">
                            <div>
                                <img src="images/sight/card1.jpg">
                            </div>
                            <div>
                                <h5>九份老街</h5>
                                <p>224新北市瑞芳區基山街</p>
                            </div>
                        </div><div class="sightbox">
                            <div>
                                <img src="images/sight/card1.jpg">
                            </div>
                            <div>
                                <h5>九份老街</h5>
                                <p>224新北市瑞芳區基山街</p>
                            </div>
                        </div>
                        <div class="sightbox">
                            <div>
                                <img src="images/sight/card1.jpg">
                            </div>
                            <div>
                                <h5>九份老街</h5>
                                <p>224新北市瑞芳區基山街</p>
                            </div>
                        </div>
                    </div>
                    </div>
                    <!--搜尋結束-->
                </div>
                <div class="googlemap">
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3744358.6569195106!2d118.77292834266305!3d23.58279644267443!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x346ed5cb2b61c3a5%3A0xcf20ddb042be7fa0!2z6Ie654Gj!5e0!3m2!1szh-TW!2stw!4v1538892692267" width="100%" height="300" frameborder="0" style="border:0" allowfullscreen></iframe>
                </div>
            </div>
        </div>
    </div>
    <footer>
        <small>&copy;TaiwanJourney Co.&trade;,Ltd. 2018 All Rights Reserved.</small>
    </footer>
</body>

</html>