<?php
include("koneksi.php");
$id_barang = $_GET['id'];

		
				$sql_00		= "select * from belanja_barang where id_belanja='$id'";
				$sql_kk 	= mysqli_query($conn, $sql_00);
				$data_kk 	= mysqli_fetch_array($sql_kk);
				$id_spk		= $data_kk['id_spk'];

$sql = "delete from barang where id_barang='$id_barang'";
$ceksql=mysqli_query($conn, $sql);
if ($ceksql){
//echo $sql;
header("location:../../Daftar-Barang-Admin.php");
}else{
header("location:../../Daftar-Barang-Admin.php?pesan=2&isi=Gagal Menghapus Menghapus Admin Dengan Username $email  ".mysql_error());
}
?>