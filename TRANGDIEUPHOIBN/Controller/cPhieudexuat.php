<?php

	include("Model/mPhieudexuat.php");

	class cPhieudexuat{
		//lấy danh sách tất cả phiếu đề xuất
		function view_phieudexuat(){
			$p = new mPhieudexuat();
			$table = $p -> select_phieudexuat();
			return $table;
		}
		//thêm phiếu đề xuất
		function them_phieudexuat($tanght,$tangdx,$TenBVHT,$lydo,$maNVBV,$MaBenhNhan,$MaBVDX){
			$p = new mPhieudexuat();
			//var_dump($lydo);
			$insert = $p ->insert_phieudexuat($tanght,$tangdx,$TenBVHT,$lydo,$maNVBV,$MaBenhNhan,$MaBVDX);
			//var_dump($insert);
			if($insert){
				return 1;//chèn thành công
			}
			else{
				return 0; //không thể insert
			}

		}
	}


?>