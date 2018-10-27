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
                },
                function() {
                    $(this).removeClass("special");
                    $(this).addClass("like");
                })

            //控制footer保持在最下面
            var h = $(window).height();
            h=h-62;
            $('.where').css("min-height", h);

            //控制左側菜單，標注本頁位置，hover時取消本頁位置
            $('.where ul li:nth-child(1) a').css({
                "font-weight": "bold",
                "background-color": "#e2772b"
            });
            $('.where ul li a').hover(function() {
                $('.where ul li a').css("background-color", "white");
                $(this).css("background-color", "#e2772b");
            }, function() {
                $('.where ul li a').css("background-color", "white");
                $('.where ul li:nth-child(1) a').css({
                    "font-weight": "bold",
                    "background-color": "#e2772b"
                });
            })
        })
    </script>
</head>

<body>
    <i class="fa fa-sign-out logoutbtn" aria-hidden="true">&nbsp&nbsp登出</i>
    <nav>
        <h1><a href="../index.jsp">台灣旅跡</a></h1>
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
                <li><a href="member_account.jsp">會員資料</a></li>
                <li><a href="member_order.jsp">訂單查詢</a></li>
                <li><a href="member_diy.jsp">我的行程</a></li>
                <li><a href="member_tour.jsp">收藏的行程</a></li>
                <li><a href="member_sight.jsp">收藏的景點</a></li>
            </ul>
        </div>
        <div id="main">
            <div id="show">
                <h5 class="titleh5">會員資料</h5>
                <div id="memberbox">
                    <div id="personPic">
                        <div id="cutPic">
                            <img src="../images/user/user.jpg">
                        </div>
                        <form>
                          <div class="form-group">
                            <input type="file" class="form-control-file" id="userPicC">
                            <button class="btn btn-primary" type="submit">上傳照片</button>
                          </div>
                        </form>
                    </div>
                    <div id="personInfo">
                        <form>
                            <div class="form-group">
                                <div class="row">
                                    <div class="col">
                                        <label for="firstName">中文姓名</label>
                                        <input type="text" class="form-control" id="firstName" placeholder="中文，如:李">
                                        <small id="emailHelp" class="form-text text-muted">必填欄位</small>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="row">
                                    <div class="col">
                                        <label for="firstName">護照英文姓</label>
                                        <input type="text" class="form-control" id="firstName">
                                        <small id="emailHelp" class="form-text text-muted">必填欄位</small>
                                    </div>
                                    <div class="col">
                                        <label for="lastName">護照英文名</label>
                                        <input type="text" class="form-control" id="lastName">
                                        <small id="emailHelp" class="form-text text-muted">必填欄位</small>
                                    </div>
                                </div>
                            </div>
                             <div class="form-group">
                                <label for="inputState">生日</label>
                                <input type="date" class="form-control">
                            </div>
                            <div class="form-group">
                               <div class="row">
                               <div class="col">
                                <label for="exampleInputEmail1">電子郵件</label>
                                <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
                                <small id="emailHelp" class="form-text text-muted">必填欄位</small>
                                </div>
                                <div class="col">
                                  <label for="exampleInputEmail1">手機</label>
                                <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
                                <small id="emailHelp" class="form-text text-muted">必填欄位</small>
                                   </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="row">
                                    <div class="col">
                                        <label for="firstName">密碼</label>
                                        <input type="text" class="form-control" id="password">
                                        <small id="emailHelp" class="form-text text-muted">必填欄位，至少6位數，內含數字、大小寫英文。</small>
                                    </div>
                                </div>
                            </div>
                            <div>
                                <button type="submit" class="btn btn-primary btn-warning col-2">修改</button>
                            </div>
                        </form>
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