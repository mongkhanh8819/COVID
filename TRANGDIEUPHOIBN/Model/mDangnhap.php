<?php

	include_once("ketnoi.php");

	class mDangnhap{
		function selectUser($tenDN,$pass){
			$conn;
			$p = new ketnoi();
			if($p -> moketnoi($conn,$tenDN,$pass)){
				$string = "SELECT * FROM taikhoancv WHERE MaTK = '".$tenDN."' and password = '".$pass."'";
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