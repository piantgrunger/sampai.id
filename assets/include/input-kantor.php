<?php
include('koneksi.php');

$nama_kantor 			= $_POST['nama_kantor'];
$nama_akronim 			= $_POST['nama_akronim'];
$alamat 				= $_POST['alamat'];
$no_telp		 		= $_POST['no_telp'];
$email		 			= $_POST['email'];
$a1 					= strtoupper($nama_kantor);
$a2		 				= strtoupper($nama_akronim);
$sql1					= "insert skpd  values('', '','$a1', '$alamat','$no_telp','$email','','','$a2'  )";
$sql 					= mysqli_query($conn, $sql1);
if ($sql){
header("location:../../Data-Instansi.php?pesan=1&isi=Berhasil Menambahkan Unit Kerja/Kantor Baru Dengan nama $a1");
}else{
header("location:../../Data-Instansi.php?pesan=2&isi=Gagal Menambahkan Unit Kerja/Kantor Baru Dengan nama $a1 karena ".mysql_error());
}
?>



