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

            //機票資訊框按下"詳細"，向下顯示詳細資訊框
            $('.flybox .info').click(function() {
                $(this).parents('.flybox').next().slideToggle("slow");
            })
            $('.hotel .info').click(function() {
                $(this).parents('.hotelbox').next().slideToggle("slow");
            })

            //控制類別顏色
            $('#ticketType>.tag').css("background-color","#b1b1b1");
            $('#ticketType>.tag').click(function(){
                $(this).css("background-color","#e2772b");
                $(this).siblings().css("background-color","#b1b1b1");
            })
            
            //控制footer保持在最下面
            var h = $(window).height();
            h = h - 50;
            $('#contentM').css("min-height", h);
            h = h - 15;
            $('.where').css("min-height", h);

            //控制左側菜單，標注本頁位置，hover時取消本頁位置
            $('.where ul li:nth-child(2) a').css({"font-weight":"bold", 
                                                  "background-color": "#e2772b"});
            $('.where ul li a').hover(function(){
                $('.where ul li a').css("background-color", "white");
                $(this).css("background-color", "#e2772b");
            }, function(){
                $('.where ul li a').css("background-color", "white");
                $('.where ul li:nth-child(2) a').css({"font-weight":"bold", 
                                                  "background-color": "#e2772b"});
            })
        })
    </script>
</head>

<body>
    <i class="fa fa-sign-out logoutbtn" aria-hidden="true">&nbsp&nbsp登出</i>
    <nav>
        <h1><a href="../index.html">台灣旅跡</a></h1>
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
                <li><a href="member_account.html">會員資料</a></li>
                <li><a href="member_order.html">訂單查詢</a></li>
                <li><a href="member_diy.html">我的行程</a></li>
                <li><a href="member_tour.html">收藏的行程</a></li>
                <li><a href="member_sight.html">收藏的景點</a></li>
            </ul>
        </div>
        <div id="main">
            <div id="show">
                <div id="ticketType">
                    <span class="tag">機票</span>
                    <span class="tag">住宿</span>
                    <span class="tag">交通</span>
                    <span class="tag">門票</span>
                </div>
                <div id="order_info">
                    <div class="fly">
                        <div class="flybox">
                            <div class="flyCom">
                                <h4>中華航空公司</h4>
                            </div>
                            <div class="schedule">
                                <div class="go">
                                    <div>
                                        <h5>去程</h5>
                                        <p>2018/04/26</p>
                                    </div>
                                    <div>
                                        <h5>17:25</h5>
                                        <p>中國武漢</p>
                                    </div>
                                    <div>
                                        <h5>→</h5>
                                    </div>
                                    <div>
                                        <h5>20:25</h5>
                                        <p>台北桃園</p>
                                    </div>
                                    <div>
                                        <h5>2時0分</h5>
                                        <p>直達</p>
                                    </div>
                                </div>
                                <div class="back">
                                    <div>
                                        <h5>回程</h5>
                                        <p>2018/04/29</p>
                                    </div>
                                    <div>
                                        <h5>17:25</h5>
                                        <p>台北桃園</p>
                                    </div>
                                    <div>
                                        <h5>→</h5>
                                    </div>
                                    <div>
                                        <h5>20:25</h5>
                                        <p>台北桃園</p>
                                    </div>
                                    <div>
                                        <h5>2時0分</h5>
                                        <p>直達</p>
                                    </div>
                                </div>
                            </div>
                            <div class="price">
                                <div>
                                    <h4>NT.9,000</h4>
                                </div>
                                <div class="btnF">
                                    <div class="info">詳細</div>
                                    <div class="cancel">取消</div>
                                </div>
                            </div>
                        </div>
                        <div class="infobox">
                            <div class="schedule">
                                <div class="go">
                                    <div>
                                        <h5>去程(直達)</h5>
                                        <p>2018/04/26</p>
                                    </div>
                                    <div>
                                        <h5>艙等</h5>
                                        <p>經濟艙</p>
                                    </div>
                                    <div>
                                        <h5>手提行李</h5>
                                        <p>2件 5公斤/人</p>
                                        <p>23cmx36cmx56cm</p>
                                    </div>
                                    <div>
                                        <h5>托運行李</h5>
                                        <p>1件 30公斤/人</p>
                                        <p>長+寬+高總和158cm以內</p>
                                    </div>
                                    <div>
                                        <h5>成人票價</h5>
                                        <p>8000元</p>
                                    </div>
                                    <div>
                                        <h5>兒童票價</h5>
                                        <p>5000元</p>
                                    </div>
                                </div>
                                <div class="back">
                                    <div>
                                        <h5>回程(直達)</h5>
                                        <p>2018/04/29</p>
                                    </div>
                                    <div>
                                        <h5>艙等</h5>
                                        <p>經濟艙</p>
                                    </div>
                                    <div>
                                        <h5>手提行李</h5>
                                        <p>2件 5公斤/人</p>
                                        <p>23cmx36cmx56cm</p>
                                    </div>
                                    <div>
                                        <h5>托運行李</h5>
                                        <p>1件 30公斤/人</p>
                                        <p>長+寬+高總和158cm以內</p>
                                    </div>
                                    <div>
                                        <h5>成人票價</h5>
                                        <p>8000元</p>
                                    </div>
                                    <div>
                                        <h5>兒童票價</h5>
                                        <p>5000元</p>
                                    </div>
                                </div>
                            </div>
                            <div class="personInfobox">
                                <h5>訂位人資料</h5>
                                <div class="personInfo">
                                    <table>
                                        <tr>
                                            <td>稱謂</td>
                                            <td>先生</td>
                                            <td></td>
                                            <td></td>
                                        </tr>
                                        <tr>
                                            <td>中文姓氏</td>
                                            <td>王</td>
                                            <td>中文名字</td>
                                            <td>大明</td>
                                        </tr>
                                        <tr>
                                            <td>生日</td>
                                            <td>1994/01/01</td>
                                             <td></td>
                                            <td></td>
                                        </tr>
                                        <tr>
                                            <td>手機</td>
                                            <td>0911234567</td>
                                            <td>連絡電話</td>
                                            <td>0223456789</td>
                                        </tr>
                                    </table>
                                </div>
                                <h5>旅客1資料</h5>
                                <div class="personInfo">
                                    <!--不做旅客修改<form>
                                        <div class="form-group">
                                            <label for="exampleFormControlSelect1">稱謂</label>
                                            <select class="form-control col-2" id="exampleFormControlSelect1">
                                               <option selected disabled></option>
                                               <option>女士</option>
                                              <option>先生</option>
                                            </select>
                                        </div>
                                        <div class="form-group">
                                            <div class="row">
                                                <div class="col-3">
                                                    <label for="firstName">護照英文姓氏</label>
                                                    <input type="text" class="form-control" id="firstName" placeholder="英文，如Lee">
                                                </div>
                                                <div class="col-3">
                                                    <label for="lastName">護照英文名字</label>
                                                    <input type="text" class="form-control" id="lastName" placeholder="英文，如TaiWei">
                                                </div>
                                                <div class="col-4">
                                                <label for="inputState">生日</label>
                                                <input type="date" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                        <div>
                                            <button type="submit" class="btn btn-primary btn-warning col-2">修改</button>
                                        </div>
                                    </form>-->
                                    <table>
                                        <tr>
                                            <td>稱謂</td>
                                            <td>先生</td>
                                            <td></td>
                                            <td></td>
                                        </tr>
                                        <tr>
                                            <td>護照英文姓</td>
                                            <td>Wang</td>
                                            <td>護照英文名</td>
                                            <td>DaMing</td>
                                        </tr>
                                        <tr>
                                            <td>生日</td>
                                            <td>1994/01/01</td>
                                            <td></td>
                                            <td></td>
                                        </tr>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="hotel">
                        <div class="hotelbox">
                            <div>
                                <img src="../images/hotel/hotel.jpg">
                            </div>
                            <div>
                                <h4>西門星辰大飯店(西門店)</h4>
                                <p>台北市板橋區府中路67號</p>
                                <div class="date">
                                    <h6>入住日</h6>
                                    <p>2018/01/01</p>
                                    <h6>退房日</h6>
                                    <p>2018/01/02</p>
                                </div>
                            </div>
                            <div>
                                <div class="price">
                                    <h4>NT.9,000</h4>
                                </div>
                                <div class="btnH">
                                    <div class="info">詳細</div>
                                    <div class="cancel">取消</div>
                                </div>
                            </div>
                        </div>
                        <div class="infobox">
                           <div>
                            <div class="personInfoH">
                                <h5>住客資料</h5>
                                <table>
                                    <tr>
                                        <td>姓名</td>
                                        <td>王大明</td>
                                    </tr>
                                    <tr>
                                        <td>聯絡電話</td>
                                        <td>0912345678</td>
                                    </tr>
                                    <tr>
                                        <td>連絡信箱</td>
                                        <td>abc@gmail.com</td>
                                    </tr>
                                    <tr>
                                        <td>入住人數</td>
                                        <td>2大人</td>
                                    </tr>
                                </table>
                            </div>
                            <div class="roomInfoH">
                                <h5>房型資料</h5>
                                <table>
                                    <tr>
                                        <td>房型</td>
                                        <td>豪華雙人床</td>
                                    </tr>
                                    <tr>
                                        <td>設施</td>
                                        <td>1張加寬特大床 & 1張特大床<br>
							                                            獨立淋浴間和浴缸<br>
							                                            免費wifi<br>
							                                            可容納四人
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>價格</td>
                                        <td>9000元/夜</td>
                                    </tr>
                                </table>
                            </div>
                            </div>
                        </div>
                    </div>
                    <div class="ticket">
                        <div class="ticketbox">
                            <div>
                                <img src="../images/sight/card1.jpg">
                            </div>
                            <div>
                                <h4>台南奇美博物館</h4>
                                <p>台南市東區府中路67號</p>
                                <div class="date">
                                    <h6>使用日期</h6>
                                    <p>2018/01/01</p>
                                </div>
                                <div class="people">
                                    <h6>張數</h6>
                                    <p>1大人</p>
                                </div>
                            </div>
                            <div>
                                <div class="price">
                                    <h4>NT.300</h4>
                                </div>
                                <div class="btnT">
                                    <div class="cancel">取消</div>
                                </div>
                            </div>
                        </div>
                        <div class="infobox">
                        </div>
                    </div>
                    <div class="traffic">
                        <h5>捷運</h5>
                        <table id="mrt">
                            <tr>
                                <th>車票名稱</th>
                                <th>北捷/高捷</th>
                                <th>車票內容</th>
                                <th>張數</th>
                                <th>車票價格</th>
                            </tr>
                            <tr>
                                <td>台北捷運一日券</td>
                                <td>台北捷運</td>
                                <td>可自由選擇啟用日期，票卡限啟用當日有效，經【車站驗票閘門自動感應啟用後至當天營運結束】為止，可不限次數、里程重複搭乘臺北捷運，每次搭乘限一人使用</td>
                                <td>1大人</td>
                                <td>150元<p class="cancel">取消</p></td>
                            </tr>
                            <tr>
                                <td>台北捷運一日券</td>
                                <td>台北捷運</td>
                                <td>可自由選擇啟用日期，票卡限啟用當日有效，經【車站驗票閘門自動感應啟用後至當天營運結束】為止，可不限次數、里程重複搭乘臺北捷運，每次搭乘限一人使用</td>
                                <td>1大人</td>
                                <td>150元<p class="cancel">取消</p></td>
                            </tr>
                        </table>
                        <h5>火車</h5>
                        <table id="train">
                            <tr>
                                <th>車種</th>
                                <th>車次</th>
                                <th>日期</th>
                                <th>起站</th>
                                <th>迄站</th>
                                <th>張數</th>
                                <th>車票價格</th>
                            </tr>
                            <tr>
                                <td>自強號</td>
                                <td>1204</td>
                                <td>2018/01/01</td>
                                <td>
                                    12:30<br>
                                    <strong>台北</strong>
                                </td>
                                <td>
                                    13:30<br>
                                    <strong>基隆</strong>
                                </td>
                                <td>1大人</td>
                                <td>150元<p class="cancel">取消</p></td>
                            </tr>
                            <tr>
                                <td>自強號</td>
                                <td>1204</td>
                                <td>2018/01/01</td>
                                <td>
                                    12:30<br>
                                    <strong>台北</strong>
                                </td>
                                <td>
                                    13:30<br>
                                    <strong>基隆</strong>
                                </td>
                                <td>1大人</td>
                                <td>150元<p class="cancel">取消</p></td>
                            </tr>
                        </table>
                        <h5>高鐵</h5>
                        <table id="highreal">
                            <tr>
                                <th>車次</th>
                                <th>日期</th>
                                <th>起站</th>
                                <th>迄站</th>
                                <th>張數</th>
                                <th>車票價格</th>
                            </tr>
                            <tr>
                                <td>1204</td>
                                <td>2018/01/01</td>
                                <td>
                                    12:30<br>
                                    <strong>台北</strong>
                                </td>
                                <td>
                                    13:30<br>
                                    <strong>基隆</strong>
                                </td>
                                <td>1大人</td>
                                <td>150元<p class="cancel">取消</p></td>
                            </tr>
                            <tr>
                                <td>1204</td>
                                <td>2018/01/01</td>
                                <td>
                                    12:30<br>
                                    <strong>台北</strong>
                                </td>
                                <td>
                                    13:30<br>
                                    <strong>基隆</strong>
                                </td>
                                <td>1大人</td>
                                <td>150元<p class="cancel">取消</p></td>
                            </tr>
                        </table>
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

