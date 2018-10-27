<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>此頁面不存在</title>
<link href="css/error.css" rel="stylesheet" />
<link href="css/style.css" rel="stylesheet" />
<link href="https://fonts.googleapis.com/css?family=Dosis:500,800" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Nunito:300" rel="stylesheet">

<script src="js/jquery-3.3.1.min.js"></script>
    <script>
        $(function(){
            var h = $(window).height();
            h=h-50;
            $('main').css("height",h);
         })
    </script>
</head>

<body>
    <main>
        <div id="title">
            <h1>Oops!</h1>
            <img src="images/error/errorpic.png" width="100px">
        </div>
        <div id="errormsg">
            <p>This page is still constructing.</p>
            <p>We will redirect this page in three second.</p>
        </div>
    </main>
    <footer>
        <small>&copy;TaiwanJourney Co.&trade;,Ltd. 2018 All Rights Reserved.</small>
    </footer>
</body>
</html>