<?php
include('koneksi.php');

$nama_barang		 	= $_POST['nama_barang'];
$satuan			 		= $_POST['satuan'];
$harga					= $_POST['harga'];
$kategori				= $_POST['kategori'];



//$a1 					= strtoupper($distributor);
//$a2		 			= strtoupper($nama_akronim);
$sql1					= "insert barang  values(0,'$nama_barang','$satuan', '$harga','$kategori' )";
$sql 					= mysqli_query($conn, $sql1);
if ($sql){
header("location:../../Daftar-Barang-Admin.php?pesan=1&isi=Berhasil Menambahkan Barang Baru");
}else{
header("location:../../Daftar-Barang-Admin.php?pesan=2&isi=Gagal Menambahkan Barang Baru ".mysql_error());
}
?>



