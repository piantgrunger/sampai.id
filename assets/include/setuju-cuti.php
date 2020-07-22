<?php
include("koneksi.php");
$id = $_GET['id'];

		
				//$sql_00		= "select * from users where id='$id'";
				//$sql_kk 	= mysqli_query($conn, $sql_00);
				//$data_kk 	= mysqli_fetch_array($sql_kk);
				//$email		= $data_kk['email'];

$sql = "update cuti set status='Setuju' where id_ambil_cuti='$id'";
$ceksql=mysqli_query($conn, $sql);
if ($ceksql){
//echo $sql;
header("location:../../Data-Cuti.php?pesan=1&isi=Cuti Telah Disetujui ");
}else{
header("location:../../Data-Admin.php?pesan=2&isi=Gagal menyetujui Cuti  ".mysql_error());
}
?>