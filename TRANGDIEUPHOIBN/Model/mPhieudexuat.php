<?php

	include_once("ketnoi.php");

	class mPhieudexuat{
		// lấy thông tin phiếu đề xuất chưa được duyệt và chờ duyệt
		function select_phieudexuat(){
			$conn;
			$p = new ketnoi();
			if($p -> moketnoi($conn,$_SESSION['matk'],$_SESSION['password'])){
				$string = "SELECT * FROM phieudexuatchuyenvien WHERE TrangThaiDuyet IN (1,3)";
				//echo $string;
				$table = mysql_query($string);
				$p -> dongketnoi($conn);
				//var_dump($table);
				return $table;
			}else{
				return false;
			}
		}
	}


?>