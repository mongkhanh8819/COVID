<?php 

   include("Controller/cBenhnhan.php");

   $mabn = $_REQUEST['mabn'];
   $p = new cBenhnhan();
   $table = $p-> view_benhnhan_by_mabn($mabn);


 ?>
<div style="width: 600px;margin: auto"><br>
   <h2 style="text-align: center;">PHIẾU ĐỀ XUẤT CHUYỂN BỆNH NHÂN</h2>
   <h3>Thông tin bệnh nhân</h3>
   <form action="#" method="post" enctype="multipart/form-data">
      <table>
      <?php 

         if($table){
            if(mysql_num_rows($table)){
               while($row = mysql_fetch_assoc($table)){
                  echo "<tr>";
                  echo "<td>Tên bệnh nhân</td>";
                  echo "<td>";
                  echo "<input type='text' name='txtTenBenhNhan' value='".$row['TenBenhNhan']."' disabled>";
                  echo "<input type='hidden' name='txtMaBN' value='".$row['MaBenhNhan']."'>";
                  echo "</td>";
                  echo "</tr>";
                  echo "<tr>";
                  echo "<td>Ngày sinh</td>";
                  echo "<td>";
                  echo "<input type='date' name='txtNgaySinh' value='".$row['NgaySinh']."' disabled>";
                  echo "</td>";
                  echo "</tr>";
                  echo "<tr>";
                  echo "<td>Quê quán</td>";
                  echo "<td>";
                  echo "<input type='text' name='txtQueQuan' value='".$row['QueQuan']."' disabled>";
                  echo "</td>";
                  echo "</tr>";
                  echo "<td>Địa chỉ hiện tại</td>";
                  echo "<td>";
                  echo "<input type='text' name='txtDiaChi' value='".$row['DiaChi']."' disabled>";
                  echo "</td>";
                  echo "</tr>";
                  echo "<td>Số điện thoại</td>";
                  echo "<td>";
                  echo "<input type='text' name='txtSDT' value='".$row['SoDienThoai']."' disabled>";
                  echo "</td>";
                  echo "</tr>";
                  echo "<td>Giới tính</td>";
                  echo "<td>";
                  if($row['GioiTinh'] == 1){
                     echo "Nam";
                  }else{
                     echo "Nữ";
                  }
                  echo "</td>";
                  echo "</tr>";
                  echo "<td>Bệnh viện hiện tại</td>";
                  echo "<td>";
                  echo "<input type='text' name='txtSDT' value='".$row['MaBV']."' disabled>";
                  echo "</td>";
                  echo "</tr>";
                  echo "<td>Phường/Quận</td>";
                  echo "<td>";
                  echo $row['MaPhuong'];
                  echo "</td>";
                  echo "</tr>";
                  echo "<td>Tình trạng hiện tại</td>";
                  echo "<td>";
                  echo $row['TrangThai'];
                  echo "</td>";
                  echo "</tr>";
               }
            }
         }

       ?>
   </table>
      <h3>Thêm phiếu đề xuất</h3>
      <table style="margin: auto;text-align: left">
         <tr>
            <td>Tên sữa</td>
            <td><input type="text" name="txtTensua" required></td>
         </tr>
         <tr>
            <td>Hãng sữa</td>
            <td><select name="maHS">
         
               </select></td>
         </tr>
         <tr>
            <td>Loại sữa</td>
            <td><select name="loaiSua">
                  <option value="Sữa tươi">Sữa tươi</option>
                  <option value="Sữa bột">Sữa bột</option>
                  <option value="Sữa đặc">Sữa đặc</option>
                  <option value="Sữa chua">Sữa chua</option>
               </select></td>
         </tr>
         <tr>
            <td>Trọng lượng</td>
            <td><input type="text" name="trongluong" required> (gr hoặc ml)</td>
         </tr>
         <tr>
            <td>Đơn giá</td>
            <td><input type="text" name="dongia" required> (VNĐ)</td>
         </tr>
         <tr>
            <td>Thành phần dinh dưỡng</td>
            <td><textarea name="thanhphan" cols="30" rows="5"></textarea></td>
         </tr>
         <tr>
            <td>Lợi ích</td>
            <td><textarea name="loiich" cols="30" rows="5"></textarea></td>
         </tr>
         <tr>
            <td>Hình ảnh</td>
            <td><input type="file" name="ffile" required></td>
         </tr>
         <tr>
            <td></td>
            <td><input type="submit" name="submit" value="THÊM MỚI">
            <input type="reset" name="reset" value="Nhập lại"></td>
         </tr>
      </table>
   </form>
   </div>