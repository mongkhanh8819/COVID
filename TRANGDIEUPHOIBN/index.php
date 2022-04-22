<?php
    
    session_start();
//  $_SESSION['username'] = "admin";
//  $_SESSION['password'] = "123456";
    //var_dump($_SESSION['dn']);
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Trang điều phối bệnh nhân</title>
    <link rel="stylesheet" type="text/css" href="CSS/style.css"/>
    <style>
        a{
            text-decoration: none;
            font-size: 24px;
        }
        .dangnhap{
            background-image: url("IMAGE/vnm.jpg");
            background-size: cover;
            background-repeat: no-repeat;
        }
        .menu ul
        {
            margin-top:  20px;padding-left: 0px;
        }
        .menu ul li
        {
            list-style-type: none;
            display: inline;
            margin-left: 50px;
        }
    </style>
    <script>
        function dangxuat(){
            var x = confirm("Bạn có chắc chắn muốn đăng xuất?");
            if(x){
                return true;
            }else{
                return false;
            }
        }
        function myFunction() {
            document.querySelectorAll("input[type=submit]")[0].click();
        }
    </script>
</head>
<body>
    <?php
        
        if(($_SESSION['dn']) == false){

            include("View/dangnhap.php");
            
        }
        elseif(isset($_SESSION['dn']) && $_SESSION['dn'] == true){
            
                ?>
    <div class="container">
        <div class="header">
            <div class="top-header">
                <div id="logan">HÃY GIỮ AN TOÀN CHO BẠN, GIA ĐÌNH VÀ CỘNG ĐỒNG TRƯỚC ĐẠI DỊCH COVID-19</div>
            </div>
            <div class="content">
                <div id="logo"><img src="IMG/image 1.png" height="80"/></div>
                <div id="title">ChiEmCovid</div>
                <div id="logo2"><img src="IMG/image 2.png"height="110"/></div>
                <div id="contact"><b style="padding-left: 50px;">HOTLINE</b>: 19006868 <br> <b>Email</b>: chiemcaykhe@gmail.com</div>
            </div>
        </div>
            <div class="nav">
                <ul>
                    <li><a href="../index.html">TRANG CHỦ</a></li>
                    <li><a href="index.php?dexuat">ĐỀ XUẤT CHUYỂN BỆNH NHÂN</a></li>
                    <li><a href="index.php?tiepnhan">TIẾP NHẬN BỆNH NHÂN</a></li>
                    <?php 

                        if(($_SESSION['dn']) == true){
                            echo "<li><a href='VIEW/dangxuat.php' onclick='return dangxuat();'>ĐĂNG XUẤT</a></li>";
                            echo "<li>";
                            include_once("View/vNhanvienbenhvien.php");
                            echo "</li>";
                    }
                ?>
            </ul>
            </div>
            <div class="session" style="height: 500px;">
                <div id="ar_left">
                    <?php 

                    if(isset($_REQUEST['dexuat'])){
                        include("View/vDanhsachbenhnhan.php");
                    }
                    elseif(isset($_REQUEST['tiepnhan'])){
                        include("View/vGiaodientiepnhan.php");
                    }
                    elseif(isset($_REQUEST['insertdxchuyen'])){
                        include("View/vInsertPhieuDeXuat.php"); 
                    }
                    else{
                        echo "<img src='IMG/dieu-tri-covi-de-5-tang-tphcm.jpg' width='100%'; height='500px'/>";
                    }


                    ?>
                </div>
                <div id="ar_right">
                    <img src="IMG/hinh-thap5tang.jpg" width="100%"; height="500px"/>
                </div>
            </div>
            <div class="footer">
            <div id="ft_contact"><b style="padding-left: 50px;">HOTLINE</b>: 19006868 <br> <b>Email</b>: chiemcaykhe@gmail.com</div>
            <div class="ft_nav">
                <ul>
                    <li>Hướng dẫn</li>
                    <li>Tư vấn - Hỗ trợ</li>
                    <li>Điều khoản sử dụng</li>
                </ul>
            </div>
        </div>
        <?php
                
            
        }
        else{
            echo header("refresh:0,url='index.php'");
        }
        //
        
    
        ?>
    </div>
</body>
</html>