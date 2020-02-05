<?php
include('koneksi.php');

$nama_jabatan 			= $_POST['nama_jabatan'];
$jenis_jab 				= $_POST['jenis_jab'];
$esselon_jab			= $_POST['esselon_jab'];

$a1 					= strtoupper($nama_jabatan);
$sql1					= "insert jabatan  values('','$a1', '$jenis_jab','$esselon_jab' )";
$sql 					= mysqli_query($conn, $sql1);
if ($sql){
header("location:../../Data-pegawai.php?pesan=1&isi=Berhasil Menambahkan Jabatan Baru Dengan nama $a1");
}else{
header("location:../../Data-pegawai.php?pesan=2&isi=Gagal Menambahkan Jabatan Baru Dengan nama $a1 karena ".mysql_error());
}
?>



