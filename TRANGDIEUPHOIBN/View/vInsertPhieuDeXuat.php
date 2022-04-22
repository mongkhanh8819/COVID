<?php 

   include("Controller/cBenhnhan.php");
   include_once("Controller/cTang.php");
   include_once("Controller/cBenhvien.php");
   $mabn = $_REQUEST['mabn'];
   $p = new cBenhnhan();
   $a = new cTang();
   $b = new cBenhvien();
   $table = $p-> view_benhnhan_by_mabn($mabn);
   $sotang1 = $p -> view_tanghientai_bybenhnhan($mabn);
   if($sotang1){
      if(mysql_num_rows($sotang1)){
         while($tang = mysql_fetch_assoc($sotang1)){
               //echo $tang['SoTang'];
               $dstang = $a -> view_tang($tang['SoTang']);
            }
         }
      }

 ?>
<div style="width: 600px;margin: auto"><br>
   <h2 style="text-align: center;">PHIẾU ĐỀ XUẤT CHUYỂN BỆNH NHÂN</h2>
   <h3>Thông tin bệnh nhân</h3>
   <form id="form" action="#" method="post" enctype="multipart/form-data">
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
                  echo "<tr>";
                  echo "<td>Địa chỉ hiện tại</td>";
                  echo "<td>";
                  echo "<input type='text' name='txtDiaChi' value='".$row['DiaChi']."' disabled>";
                  echo "</td>";
                  echo "<tr>";
                  echo "<tr>";
                  echo "<td>Số điện thoại</td>";
                  echo "<td>";
                  echo "<input type='text' name='txtSDT' value='".$row['SoDienThoai']."' disabled>";
                  echo "</td>";
                  echo "</tr>";
                  echo "<tr>";
                  echo "<td>Giới tính</td>";
                  echo "<td>";
                  if($row['GioiTinh'] == 1){
                     echo "Nam";
                  }else{
                     echo "Nữ";
                  }
                  echo "</td>";
                  echo "</tr>";
                  echo "<tr>";
                  echo "<td>Tầng hiện tại</td>";
                  echo "<td>";
                  $sotang = $p -> view_tanghientai_bybenhnhan($row['MaBenhNhan']);
                  if($sotang){
                     if(mysql_num_rows($sotang)){
                        while($cot = mysql_fetch_assoc($sotang)){
                           echo "<input type='text' name='sotanght' value='".$cot['SoTang']."' disabled>";
                        }
                     }
                  }
                  echo "</td>";
                  echo "</tr>";
                  echo "<tr>";
                  echo "<td>Bệnh viện hiện tại</td>";
                  echo "<td>";
                  echo "<input type='text' name='TenBVHT' value='".$row['TenBV']."' disabled>";
                  echo "</td>";
                  echo "</tr>";
                  echo "<td>Phường/Quận</td>";
                  echo "<td>";
                  echo $row['MaPhuong'];
                  echo "</td>";
                  echo "</tr>";
                  echo "<td>Tình trạng hiện tại</td>";
                  echo "<td>";
                  if($row['TrangThai'] == 1){
                     echo "Đang điều trị";
                  }elseif($row['TrangThai'] == 0){
                     echo "Đã khỏi bệnh";
                  }else{
                     echo "Chờ chuyển viện";
                  }
                  echo "</td>";
                  echo "</tr>";

       ?>
   </table>
      <h3>Thêm phiếu đề xuất</h3>
      <table style="margin: auto;text-align: left">
         <tr>
            <?php 

                  $so = $p -> view_tanghientai_bybenhnhan($row['MaBenhNhan']);
                  if($so){
                     if(mysql_num_rows($so)){
                        while($cot9 = mysql_fetch_assoc($so)){
                           echo "<input type='hidden' name='sotanght' value='".$cot9['SoTang']."'>";
                        }
                     }
                  }
                  echo "<td><input type='hidden' name='TenBVHT' value='".$row['TenBV']."'></td>";

               }
            }
         }

             ?>
         </tr>
         <tr>
            <td><h4>Hãy chọn tầng muốn chuyển:</h4></td>
            <td><select name="cboTang" onChange="myFunction();">
                  <option value="">Chọn tầng điều trị</option>
                  <?php
                     

                     if($dstang){
                        if(mysql_num_rows($dstang)){
                           while($row1 = mysql_fetch_assoc($dstang)){
                              ?>
                              <option value="<?php echo $row1['SoTang']; ?>" <?php if(isset($_POST['cboTang'])&&$_POST['cboTang']==$row1['SoTang']) echo "selected" ?>>Tầng <?php echo $row1['SoTang'] ?></option>
                              <?php 
                           }
                        }
                     }
                  
                  ?>  
               </select></td>
         </tr>
         <tr>
            <?php
               if(isset($_POST['cboTang'])){
                  $idtang = $_POST['cboTang'];
                  echo "<td><h4>Hãy chọn bệnh viện muốn chuyển:</h3></td>";
                  echo "<td><select name='MaBV'>";
               }
                     $dsbv = $b -> view_benhvien_by_sotang($idtang);
                     if($dsbv){
                        if(mysql_num_rows($dsbv)){
                           while($row2 = mysql_fetch_assoc($dsbv)){
                              ?>
                              <option value="<?php echo $row2['MaBV'] ?>"><?php echo $row2['TenBV'] ?></option>
                              <?php 
                           }
                        }
                     }

                   ?>
               </select></td>
         </tr>
         <tr>
            <td><h4>Nhập lý do chuyển viện</h4></td>
            <td><textarea name="lydo" cols="30" rows="10"></textarea></td>
         </tr>
         <tr>
            <td></td>
            <td><input type="submit" name="submit" value="XÁC NHẬN CHUYỂN">
            <input type="reset" name="reset" value="Nhập lại"></td>
         </tr>
      </table>
   </form>
   </div>
   <?php 

      include("Controller/cPhieudexuat.php");
      if(isset($_REQUEST['submit']) && ($_REQUEST['lydo'] != "")){
         $tanght = $_REQUEST['sotanght'];
         $tangdx = $_REQUEST['cboTang'];
         $TenBVHT = $_REQUEST['TenBVHT'];
         //$lydo = $_REQUEST['lydo'];
         $maNVBV = $_SESSION['MaNVBV'];
         $MaBenhNhan = $_REQUEST['txtMaBN'];
         $MaBVDX = $_REQUEST['MaBV'] ;
         $them = new cPhieudexuat();
         $kq = $them -> them_phieudexuat($tanght,$tangdx,$TenBVHT,$_REQUEST['lydo'],$maNVBV,$MaBenhNhan,$MaBVDX);
         //hiện thông báo
            if($kq == 1){
               echo "<script>alert('Đề xuất thành công, phiếu đề xuất đã được lưu vào hệ thống')</script>";
               //echo header("refresh:0; url='index.php");
            }else{
              //echo "<script>alert('Đề xuất chuyển không thành công')</script>";
            }
         }

    ?>