<?php

	include("Controller/cBenhnhan.php");

	$mabv = $_SESSION['mabv'];
	$p = new cBenhnhan();
	$table = $p-> view_benhnhan($mabv);

	$dem = 0;
	echo "<h2 STYLE='text-align:center'>DANH SÁCH BỆNH NHÂN CÓ THỂ CHUYỂN</h2>";
	echo "<table style='width:100%'>";
	echo "<tr style='background-color:aqua'>";
	echo "<th>Mã bệnh nhân</th>";
	echo "<th>Tên bệnh nhân</th>";
	echo "<th>Giới tính</th>";
	echo "<th>Địa chỉ</th>";
	echo "<th>Số điện thoại</th>";
	echo "<th>Action</th>";
	echo "</tr>";
	if($table){
		if(mysql_num_rows($table)){
			while($row = mysql_fetch_assoc($table)){
				$dem++;
				if($dem%2==0){
					echo "<tr style='background-color:aqua'>";
				}else{
					echo "<tr>";
				}
				echo "<td style='text-align:center'>".$row['MaBenhNhan']."</td>";
				echo "<td style='text-align:center'>".$row['TenBenhNhan']."</td>";
				if($row['GioiTinh']==0){
					echo "<td style='text-align:center'>Nữ</td>";
				}else{
					echo "<td style='text-align:center'>Nam</td>";
				}
				echo "<td style='text-align:center'>".$row['DiaChi']."</td>";
				echo "<td style='text-align:center'>".$row['SoDienThoai']."</td>";
				echo "<td style='text-align:center'><a href='index.php?dxchuyen&&mabn=".$row['MaBenhNhan']."'>Chuyển đi</a>";
				echo "</tr>";
			}
		}
	}
	echo "</table>";



?>