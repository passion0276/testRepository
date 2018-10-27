<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
                        <label for="exampleInputEmail1">Account</label>
                        <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
                        <small id="emailHelp" class="form-text text-muted">email address</small>
                    </div>
                    <div class="form-group">
                        <label for="exampleInputPassword1">Password</label>
                        <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
                        <small id="passerror" class="form-text text-danger">Please enter your password</small><!--error提示文字展演-->
                    </div>
                    <div class="form-check">
                        <input type="checkbox" class="form-check-input" id="exampleCheck1">
                        <label class="form-check-label mb-3" for="exampleCheck1">remember me</label>
                    </div>
                    <div id="thirdLogin">
                        <div class="fbLogin">
                            <span>login by Facebook</span>
                        </div>
                        <div class="ggLogin">
                            <span>login by google</span>
                        </div>
                    </div>
                    <hr/>
                    <button name="login" class="btn btn-primary btn-block">Login</button>
                   
            </form>
            <p class="regisBtn" onclick="register(1)">create account</p>
        </div>
        <div class="loginbox reg">
            <form>
                    <div class="form-group">
                        <label for="reg_email">Email(account name)</label>
                        <input type="email" class="form-control" id="reg_email" aria-describedby="emailHelp" placeholder="Enter email">
                        <small id="passerror" class="form-text text-danger">Please enter your password</small>
                    </div>
                    <div class="form-group">
                        <label for="reg_password">Password</label>
                        <input type="password" class="form-control" id="reg_password" placeholder="Password">
                        <small id="passerror" class="form-text text-danger">Please enter your password</small>
                    </div>
                    <div class="form-group">
                        <label for="reg_name">FirstName</label>
                        <input type="text" class="form-control" id="reg_name" placeholder="Cheng Pei Pei">
                        <small id="passerror" class="form-text text-danger">Please enter your firstName</small>
                    </div>  
                    <div class="form-group">
                        <label for="reg_name">LastName</label>
                        <input type="text" class="form-control" id="reg_name" placeholder="Cheng Pei Pei">
                        <small id="passerror" class="form-text text-danger">Please enter your lastName</small>
                    </div>  
                    <div class="form-group">
                        <label for="reg_birth">Birthday</label>
                        <input type="date" class="form-control" id="reg_birth" placeholder="0911-220-330">
                        <small id="passerror" class="form-text text-danger">Please enter your password</small>
                    </div>
                    <div id="thirdLogin">
                        <div class="fbLogin">
                            <span>login by Facebook</span>
                        </div>
                        <div class="ggLogin">
                            <span>login by google</span>
                        </div>
                    </div>
                    <hr/>
                    <button name="login" class="btn btn-primary btn-block">Creat Account</button>
                   
            </form>
            <p class="regisBtn" onclick="register(2)">Login</p>
        </div>
    </div>
    
    <section id="s1">
        <div id="language">
            <a href="index.jsp">繁體中文</a>&nbsp;/&nbsp;
            <a href="#">English</a>
        </div>
        <div class="logo">
            <p>—— 台灣 ——</p>
        </div>
        <img src="images/index/index_logo.png" width="550px" />
        <nav id="navbar">
            <ul> 
                <li><a href="flight/flight_index.jsp">order flights</a></li>
                <li><a href="hotel/hotel_index.jsp">order rooms</a></li>
                <li><a href="ticket/ticket_index.jsp">order tickets</a></li>
                <li><a href="traffic/traffic_index.jsp">order traffic</a></li>
                <li><a href="sight/sight_index.jsp">find sights</a></li>
                <li><a href="schedule/schedule_index.jsp">find course</a></li>
                <li><a href="diy.jsp">made plane</a></li>
                <li onclick="login()"><a href="javascript:void(0);">member</a></li>
            </ul>
        </nav>
    </section>
    <section id="s2_2">
        <h2>Start Your <br/>Fabulous Travel in Taiwan.</h2>
    </section>
    <section id="s2"></section>
    <section id="s3">
        <div class="textbox">
            <p>Book your flight to this beautiful island and explore our warm and rich terrain.</p>
            <p>We offer invaluable airline ticket enquiries and provide a variety of search criteria to help you find the best ticket in your mind. Make an initial query with your starting point and destination and look for your estimated departure date.</p>
            <a href="flight/flight_index.jsp"><div class="btna">booking flight ticket</div></a>
        </div>
        <div class="textbox">
            <p>Book your accommodation to have enough physical strength to meet the beautiful dawn of the next day.</p>
            <p>Find the hotel or homestay according to the area you are visiting, match the check-in time and check-out time and the number of travel companions to find the hotel that suits you best. After entering the introduction page, you will be provided with various room types to find out the peace of mind that belongs to you only.</p>
            <a href="hotel/hotel_index.jsp"><div class="btna">booking Hotel</div></a>
        </div>
    </section>
    <section id="s4">
        <div class="textbox">
            <p>Find popular attractions in Taiwan.</p>
            <p>Find the most popular attractions and restaurants according to the area you are locked in. We provide a variety of detailed information, including ticket price information and opening hours, and find the most suitable sightseeing spots with the date of your departure.</p>
            <a href="sight/sight_index.jsp"><div class="btna">searching Hot Spot</div></a>
        </div>
        <div class="textbox">
            <p>Haven't thought about exploring which corner of Taiwan?</p>
            <p>We provide a platform for everyone to share their itinerary in Taiwan. You can find the one that suits you best by region, type of travel or number of days and estimated amount.</p>
            <a href="schedule/schedule_index.jsp"><div class="btna">searching journey</div></a>
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
</html>