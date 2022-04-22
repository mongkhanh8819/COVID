<?php

	include_once("ketnoi.php");

	class mPhieudexuat{
		// lấy thông tin phiếu đề xuất chưa được duyệt và chờ duyệt
		function select_phieudexuat(){
			$conn;
			$p = new ketnoi();
			if($p -> moketnoi($conn,$_SESSION['matk'],$_SESSION['password'])){
				$string = "SELECT * FROM phieudexuatchuyenvien WHERE TrangThaiDuyet IN (1,2,3)";
				//echo $string;
				$table = mysql_query($string);
				$p -> dongketnoi($conn);
				//var_dump($table);
				return $table;
			}else{
				return false;
			}
		}
		//HÀM THÊM MỚI PHIẾU ĐỀ XUẤT
		function insert_phieudexuat($tanght,$tangdx,$TenBVHT,$lydo,$maNVBV,$MaBenhNhan,$MaBVDX){
			$conn;
			$p = new ketnoi();
			if($p -> moketnoi($conn,$_SESSION['matk'],$_SESSION['password'])){
				$string = "INSERT INTO phieudexuatchuyenvien(ThoiGianLapPhieu, TangHienTai, TangDeXuat, TenBV, LyDo,TrangThaiDuyet, MaNVBV, MaBenhNhan, MaBV) values";
				$string .= " (NOW(),".$tanght.",".$tangdx.",N'".$TenBVHT."',N'".$lydo."',1,N'".$maNVBV."'";
				$string .= " ,".$MaBenhNhan.",N'".$MaBVDX."')";
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