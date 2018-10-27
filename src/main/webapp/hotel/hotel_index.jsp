<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>台灣旅跡-住宿查詢頁面</title>
<link href="../css/firstpage.css" rel="stylesheet" />
    <link href="../css/style.css" rel="stylesheet" />
    <link href="../css/login.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
    <link rel="stylesheet" href="../font-awesome-4.7.0/css/font-awesome.min.css">
    
    <script src="../js/jquery-3.3.1.min.js"></script>
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
                　　 //當高度小於100時，關閉區塊      　　
                if ($this_Top < 100) {　　　
                    $('nav').css({"position":"absolute",
                                  "background-color":"rgba(255, 255, 255, 0.54)"
                                  });　　　
                    $('nav a').css("color","black");
                    $('#user').css("color","black");
                }　　　　
                if ($this_Top > 100) {　　　　
                    $('nav').css({"position":"fixed",
                                  "background-color":"rgba(74, 74, 74, 0.63)"
                                  });　
                    $('nav a').css("color","white");
                    $('#user').css("color","white");
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
        <h1><a href="../index.jsp">台灣旅跡</a></h1>
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
    <section id="search">
        <form action="" method="post">
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="ticketType" id="return" value="return">
                <label class="form-check-label" for="return">來回</label>
            </div>
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="ticketType" id="once" value="once">
                <label class="form-check-label" for="once">單程</label>
            </div>
            <div class="form-row">
                <div class="col">
                    <label for="inputState" class="col-form-label-sm">從</label>
                    <input type="text" class="form-control" placeholder="出發地(城市/機場)">
                </div>
                <div class="col">
                    <label for="inputState" class="col-form-label-sm">到</label>
                    <input type="text" class="form-control" placeholder="目的地(城市/機場)">
                </div>
                <div class="col">
                    <label for="inputState" class="col-form-label-sm">去程</label>
                    <input type="date" class="form-control" placeholder="去程日">
                </div>
                <div class="col">
                    <label for="inputState" class="col-form-label-sm">回程</label>
                    <input type="date" class="form-control" placeholder="回程日">
                </div>
            </div>
            <div class="form-row">
                <div class="form-group col-md-1">
                    <label for="inputState" class="col-form-label-sm">成人</label>
                    <select id="inputState" class="form-control">
                            <option selected>0</option>
                            <option>1</option>
                            <option>2</option>
                            <option>3</option>
                            <option>4</option>
                            <option>5</option>
                            <option>6</option>
                        </select>
                </div>
                <div class="form-group col-md-1">
                    <label for="inputState" class="col-form-label-sm">兒童</label>
                    <select id="inputState" class="form-control">
                            <option selected>0</option>
                            <option>1</option>
                            <option>2</option>
                            <option>3</option>
                            <option>4</option>
                            <option>5</option>
                            <option>6</option>
                        </select>
                </div>
            </div>
            <div>
                <button type="submit" class="btn btn-primary btn-warning">搜尋</button>
            </div>
        </form>
    </section>
    <section id="wall">
        <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
            <ol class="carousel-indicators">
                <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                <li data-target="#carouselExampleIndicators" data-slide-to="3"></li>
                <li data-target="#carouselExampleIndicators" data-slide-to="4"></li>
            </ol>
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img class="d-block w-100" src="../images/hotel/firstpage_wall1.jpg" alt="First slide">
                    <div class="carousel-caption d-none d-md-block">
                        <h5>臺灣桃園國際機場</h5>
                        <p>為臺灣國際航空樞紐，現今共有66家航空公司經營定期航線、飛往全球33個國家的143個航點，年均旅客流量超過4,000萬人次。 擁有2座客運航廈，聯外之高速公路及捷運系統，其客運吞吐量位居世界各機場第35位，貨運吞吐量則為世界第9高。
                        </p>
                    </div>
                </div>
                <div class="carousel-item">
                    <img class="d-block w-100" src="../images/hotel/firstpage_wall2.jpg" alt="Second slide">
                    <div class="carousel-caption d-none d-md-block">
                        <h5>高雄小港國際機場</h5>
                        <p>為南臺灣的主要聯外國際機場、以及國際客運出入吞吐地，也是臺灣第二大國際機場，場區緊鄰高雄市區，亦是臺灣第一個設有聯外捷運系統的民用機場。</p>
                    </div>
                </div>
                <div class="carousel-item">
                    <img class="d-block w-100" src="../images/hotel/firstpage_wall3.jpg" alt="Third slide">
                    <div class="carousel-caption d-none d-md-block">
                        <h5>臺北松山國際機場</h5>
                        <p>為臺灣第一座機場，與桃園國際機場同為臺北的聯外機場。目前國內與國際航線並重（含兩岸航線），為臺灣的國內航線樞紐。 松山機場成為繼高雄國際機場後，臺灣第二個有聯外捷運系統直接連接的民用機場。
                        </p>
                    </div>
                </div>
                <div class="carousel-item">
                    <img class="d-block w-100" src="../images/hotel/firstpage_wall4.jpg" alt="Third slide">
                    <div class="carousel-caption d-none d-md-block">
                        <h5>花蓮機場</h5>
                        <p>場區位在臺灣省花蓮縣花蓮市中心北方，該機場為一軍民合用機場，也是東臺灣第一座國際機場。</p>
                    </div>
                </div>
                <div class="carousel-item">
                    <img class="d-block w-100" src="../images/hotel/firstpage_wall5.jpg" alt="Tainan Airport">
                    <div class="carousel-caption d-none d-md-block">
                        <h5>臺南國際機場</h5>
                        <p>位於臺灣臺南市，是雲嘉南地區最大的機場，不僅是臺南主要的聯外機場，也是雲嘉南地區第一座國際機場。 臺南機場緊臨臺南市南區、高雄市北端，到臺南市中心的火車站周邊僅6公里。
                        </p>
                    </div>
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
    </section>
    <section id="recommend">
        <div class="container-fluid px-lg-5">
            <div class="row">
                <div class=" col-lg-4 p-4">
                    <div class="card">
                        <img class="card-img-top" src="../images/sight/card1.jpg" alt="Card image cap">
                        <div class="card-body">
                            <h5 class="card-title">(台北)瑞芳</h5>
                            <p class="card-text">瑞芳區古樸的風情近年來吸引了相當多的民眾前往旅遊，除九份、金瓜石所呈現的古鎮風情以外，許多特別的旅遊景點也不容錯過。</p>
                            <a href="#" class="btn btn-primary d-block mx-auto btn-warning">book flight ticket</a>
                        </div>
                    </div>
                </div>
                <div class=" col-lg-4 p-4">
                    <div class="card">
                        <img class="card-img-top" src="../images/sight/card2.jpg" alt="Card image cap">
                        <div class="card-body">
                            <h5 class="card-title">(台北)金瓜石</h5>
                            <p class="card-text">日治時期日本人來金瓜石開採金礦，逐漸成唯一個地方生活圈，金瓜石便有『東亞第一金都』之稱。</p>
                            <a href="#" class="btn btn-primary d-block mx-auto btn-warning">book flight ticket</a>
                        </div>
                    </div>
                </div>
                <div class=" col-lg-4 p-4">
                    <div class="card">
                        <img class="card-img-top" src="../images/sight/card3.jpg" alt="Card image cap">
                        <div class="card-body">
                            <h5 class="card-title">(台北)淡水</h5>
                            <p class="card-text">漁人碼頭為一兼具漁業發展與觀光休閒的優質公園，漁人碼頭在經過整地興建後，已成為新北市重要的觀光活動休閒場地。</p>
                            <a href="#" class="btn btn-primary d-block mx-auto btn-warning">book flight ticket</a>
                        </div>
                    </div>
                </div>
                <div class=" col-lg-4 p-4">
                    <div class="card">
                        <img class="card-img-top" src="../images/sight/card4.jpg" alt="Card image cap">
                        <div class="card-body">
                            <h5 class="card-title">(臺北)九份</h5>
                            <p class="card-text">金瓜石，60年代以後，隨著礦脈枯竭，採金的事業雙雙走入歷史，留下的礦場景觀在70年代末期隨著懷舊風潮吹起，反而成為觀光熱門地。</p>
                            <a href="#" class="btn btn-primary d-block mx-auto btn-warning">book flight ticket</a>
                        </div>
                    </div>
                </div>
                <div class=" col-lg-4 p-4">
                    <div class="card">
                        <img class="card-img-top" src="../images/sight/card5.jpg" alt="Card image cap">
                        <div class="card-body">
                            <h5 class="card-title">(南投)埔里</h5>
                            <p class="card-text">埔里由於氣候環境優良，水質清澈，為南投花卉產業重鎮。近來更在埔霧公路起端處探測出溫泉，屬於本縣新興溫泉區。</p>
                            <a href="#" class="btn btn-primary d-block mx-auto btn-warning">book flight ticket</a>
                        </div>
                    </div>
                </div>
                <div class=" col-lg-4 p-4">
                    <div class="card">
                        <img class="card-img-top" src="../images/sight/card6.jpg" alt="Card image cap">
                        <div class="card-body">
                            <h5 class="card-title">(台東)鐵路藝術村</h5>
                            <p class="card-text">擁有80年歷史的臺東火車站功成身退後，搖身一變成為歷史建築、藝術、旅遊休閒的多元文化空間－臺東鐵道藝術村，各類型的藝術家、藝術團體群聚、整合、交流。</p>
                            <a href="#" class="btn btn-primary d-block mx-auto btn-warning">book flight ticket</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <footer>
        <small>&copy;TaiwanJourney Co.&trade;,Ltd. 2018 All Rights Reserved.</small>
    </footer>
</body>

</html>