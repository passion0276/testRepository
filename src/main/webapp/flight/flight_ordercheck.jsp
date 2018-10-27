<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>台灣旅跡-機票資料確認</title>
<link href="../css/style.css" rel="stylesheet" />
    <link href="../css/order.css" rel="stylesheet" />
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

            //機票資訊框按下"詳細"，向下顯示詳細資訊框
            $('.flybox .price .btnF .info').click(function() {
                $(this).parents('.flybox').next().slideToggle();
            })

            //控制進度條顏色
            $('#progress .steps').css({
                "background-color": "#e2772b",
                "color": "white"
            });
            $('.progressline:nth-child(3)').css("border-bottom", "4px solid #e2772b");
            $('.progressline:nth-child(5)').css("border-bottom", "4px solid #e2772b");
            
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
            <li><a href="flight_index.jsp">搜尋機票</a><span class="line"></span></li>
            <li><a href="../hotel/hotel_index.jsp">搜尋住宿</a><span class="line"></span></li>
            <li><a href="../ticket/ticket_index.jsp">搜尋門票</a><span class="line"></span></li>
            <li><a href="../traffic/traffic_index.jsp">搜尋車票</a><span class="line"></span></li>
            <li><a href="../sight/sight_index.jsp">搜尋景點</a><span class="line"></span></li>
            <li><a href="../schedule/schedule_index.jsp">搜尋行程</a><span class="line"></span></li>
            <li><a href="../diy.jsp">製作行程</a><span class="line"></span></li>
            <li><a href="../member/member_index.jsp">會員專區</a><span class="line"></span></li>
        </ul>
        <!--登入後的會員頭貼<div id="user"><span id="userPic"><img src="../images/user.jpg"></span><span id="userName">Pei-hsuan</span></div>-->
    </nav>
    <div id="orderContent">
        <div id="show">
            <div id="progress">
                <div id="step1">填寫資料</div>
                <div class="progressline"></div>
                <div class="progressline"></div>
                <div class="steps">確認資料</div>
                <div class="progressline"></div>
                <div class="progressline"></div>
                <div id="stepEnd">交易完成</div>
            </div>
            <div class="keybox">
                <h5>訂位人資料</h5>
                 <div class="commitbox">
                    <table class="checkInfo">
                        <tr>
                            <td>稱謂</td>
                            <td>Mr.</td>
                        </tr>
                        <tr>
                            <td>姓名</td>
                            <td>王大同</td>
                        </tr>
                        <tr>
                            <td>手機</td>
                            <td>0912345678</td>
                        </tr>
                        <tr>
                            <td>聯絡電話</td>
                            <td>0223456789</td>
                        </tr>
                    </table>
                </div>
                <h5>旅客1資料</h5>
                 <div class="commitbox">
                    <table class="checkInfo">
                        <tr>
                            <td>稱謂</td>
                            <td>Mr.</td>
                        </tr>
                        <tr>
                            <td>姓名</td>
                            <td>王大同</td>
                        </tr>
                        <tr>
                            <td>手機</td>
                            <td>0912345678</td>
                        </tr>
                        <tr>
                            <td>聯絡電話</td>
                            <td>0223456789</td>
                        </tr>
                    </table>
                </div>
                <div>
                    <h5>航班條款與規則</h5>
                    <div class="agree">
                      <div>
                           <ol>
                               <li>出發前可更改皆須改票，每次收取『航空公司罰金』+『價差』+『稅差』+本公司服務費，所有更改須符合原購票之相關規定及限制（機票若有NO SHOW *記錄須另查）
                               </li>
                               <li>
                                   出發後欲更改，須另洽詢，亦有可能不可更改。
                               </li>
                               <li>
                                   退票須於機票效期內申請
                               </li>
                               <li>
                                   全程未用者，收取航空公司罰金+本公司退票手續費
                               </li>
                               <li>
                                   機票一經使用或NO SHOW者可能無退票價值。 
                               </li>
                               <li>
                                   如更改必須於原搭乘日前２個工作日完成(國定假日無法提供更改服務)。 務必於原班機出發前２天更改行程並完成改票或取消紀錄，如造成NO SHOW (未照原訂航班搭乘) 將不接受任何更改或退票。
                               </li>
                               <li>
                                   上述航班時間如有變動，以航空公司確認的時間為準。 機票開立後，不可轉讓其他公司航空、不可轉讓他人使用。
                               </li>
                               <li>
                                   機票開出後,取消預訂，相關退票規定請見退票須知。 可能有額外支付費用。
                               </li>
                           </ol>
                       </div>
                       <div class="form-check">
                            <input class="form-check-input" type="checkbox" value="" id="agreeCheck">
                            <label class="form-check-label" for="agreeCheck">
                                我已完整閱讀訂航班條款與細則，並同意所有規定事項。
                            </label>
                        </div>
                    </div>
                </div>
                <div class="container mt-3">
                  <div class="row justify-content-between">
                    <div>
                     <a href="flight_order.jsp"><button class="btn btn-primary btn-secondary">上一步：填寫資料</button></a>
                    </div>
                    <div>
                     <a href="flight_ordercommit.jsp"><button class="btn btn-primary btn-warning">下一步：付款</button></a>
                    </div>
                  </div>
                </div>
                
            </div>
        </div>
        <div id="flightInfo">
            <div class="flybox">
                <div class="orderInfo">
                    <h5>去程</h5>
                    <div>
                        <img src="../images/flight/chinaAirline.jpg">
                    </div>
                    <div>
                        <div>
                            <p>2018/04/26</p>
                            <p>17:25</p>
                            <p>中國武漢</p>
                        </div>
                        <div>
                            <p>→</p>
                        </div>
                        <div>
                            <p>2018/04/26</p>
                            <p>20:25</p>
                            <p>台北桃園</p>
                        </div>
                    </div>
                </div>
                <div class="orderInfo">
                    <h5>回程</h5>
                    <div>
                        <img src="../images/flight/chinaAirline.jpg">
                    </div>
                    <div>
                        <div>
                            <p>2018/04/26</p>
                            <p>17:25</p>
                            <p>中國武漢</p>
                        </div>
                        <div>
                            <p>→</p>
                        </div>
                        <div>
                            <p>2018/04/26</p>
                            <p>20:25</p>
                            <p>台北桃園</p>
                        </div>
                    </div>
                </div>
                <div class="total">
                    <table>
                        <tr>
                            <td>成人x1</td>
                            <td>2500元(含稅)</td>
                        </tr>
                        <tr>
                            <td>兒童x1</td>
                            <td>2300元(含稅)</td>
                        </tr>
                        <tr>
                            <td>總計</td>
                            <td>4800元</td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
    </div>
    <footer>
        <small>&copy;TaiwanJourney Co.&trade;,Ltd. 2018 All Rights Reserved.</small>
    </footer>
</body>

</html>