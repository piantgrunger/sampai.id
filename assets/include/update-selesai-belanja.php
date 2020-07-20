<?php
include('koneksi.php');
$yearsnow	= date("Y");

$id_spk = $_GET['id'];


						  
$sql1					= "update spk set
						   status			= '1'
						   where 	id_spk	= '$id_spk'
						  ";
$sql 					= mysqli_query($conn, $sql1);
if ($sql){
header("location:../../Data-SPK.php?pesan=1&isi=Selamat Anda Selesai Shoping, Silahkan Tunggu Nomor BA anda");
}else{
header("location:../../Data-SPK.php?pesan=2&isi=Gagal Moveon ".mysql_error());
}
?>



