<?php
include('koneksi.php');
$id_sppd 					= $_POST['id_sppd'];
$klasifikasi				= $_POST['klasifikasi'];
$rincian					= $_POST['rincian'];
$jumlah						= $_POST['jumlah'];

$t_now					= date("d");
$bln_lantik				= date("m");
$y_now					= date("Y");


					if ($bln_lantik =='01')
					{
					$bulan_lantik	='Januari';
					}
					elseif ($bln_lantik =='02')
					{
					$bulan_lantik	='Februari';
					}
					elseif ($bln_lantik =='03')
					{
					$bulan_lantik	='Maret';
					}
					elseif ($bln_lantik =='04')
					{
					$bulan_lantik	='April';
					}
					elseif ($bln_lantik =='05')
					{
					$bulan_lantik	='Mei';
					}
					elseif ($bln_lantik =='06')
					{
					$bulan_lantik	='Juni';
					}
					elseif ($bln_lantik =='07')
					{
					$bulan_lantik	='Juli';
					}
					elseif ($bln_lantik =='08')
					{
					$bulan_lantik	='Agustus';
					}
					elseif ($bln_lantik =='09')
					{
					$bulan_lantik	='September';
					}
					elseif ($bln_lantik =='10')
					{
					$bulan_lantik	='Oktober';
					}
					elseif ($bln_lantik =='11')
					{
					$bulan_lantik	='November';
					}
					else
					{
					$bulan_lantik	='Desember';
					}										
																
					$tgl_ajuan = $t_now;
					$tgl_ajuan .= " ";
					$tgl_ajuan .= $bulan_lantik;
					$tgl_ajuan .= " ";
					$tgl_ajuan .= $y_now;





$select					= "select * from panjar where id_sppd='$id_sppd' and klasifikasi='$klasifikasi'";
$mysql 					= mysqli_query($conn, $select);
$hit					= mysqli_num_rows($mysql);


if ($hit != 0)
{
header("location:../../Data-SPPD.php?pesan=2&isi=Gagal Menambahkan Jabatan Baru Dengan nama $a1 karena ".mysql_error());
}
else
{
$sql1					= "insert panjar values(0,'$id_sppd','$klasifikasi','$rincian','$jumlah','$tgl_ajuan','Panjar' )";
$sql 					= mysqli_query($conn, $sql1);
if ($sql){
header("location:../../Panjar-SPPD.php?id=$id_sppd");
//echo "Sukses";
}else{
header("location:../../Panjar-SPPD.php?id=$id_sppd");
}
}
?>



