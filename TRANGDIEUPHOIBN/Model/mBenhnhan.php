<?php

	include_once("ketnoi.php");

	class mBenhnhan{
		// lấy thông tin bệnh nhân theo mã bệnh viện của người nhân viên đăng nhập
		function select_benhnhan($mabv){
			$conn;
			$p = new ketnoi();
			if($p -> moketnoi($conn,$_SESSION['matk'],$_SESSION['password'])){
				$string = "SELECT * FROM benhnhan WHERE MaBV = '".$mabv."'";
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