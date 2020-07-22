<?php
include("koneksi.php");
$id_skpd = $_GET['KODE'];

		
				$sql_00		= "select * from skpd where id_skpd='$id_skpd'";
				$sql_kk 	= mysqli_query($conn, $sql_00);
				$data_kk 	= mysqli_fetch_array($sql_kk);
				$nama_skpd		= $data_kk['nama_skpd'];

$sql = "delete from skpd where id_skpd='$id_skpd'";
$ceksql=mysqli_query($conn, $sql);
if ($ceksql){
//echo $sql;
header("location:../../Data-Instansi.php?pesan=1&isi=Berhasil Menghapus Instansi  $nama_skpd ");
}else{
header("location:../../Data-Instansi.php?pesan=2&isi=Gagal Menghapus Instansi  $nama_skpd".mysql_error());
}
?>