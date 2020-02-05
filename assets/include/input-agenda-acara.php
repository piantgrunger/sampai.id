<?php
include('koneksi.php');

$acara		 			= $_POST['acara'];
$hari		 			= $_POST['hari'];
$tanggal 				= $_POST['tanggal'];
$waktu			 		= $_POST['waktu'];
$tempat		 			= $_POST['tempat'];
$id_pegawai		 		= $_POST['id_pejabat'];
$keterangan	 			= $_POST['keterangan'];

$a1 					= strtoupper($acara);
$a2		 				= strtoupper($tempat);
$sql1					= "insert acara  values('','$a1', '$hari','$tanggal','$waktu','$a2','$id_pegawai','$keterangan','Proses'  )";
$sql 					= mysqli_query($conn, $sql1);
if ($sql){
header("location:../../Data-Agenda.php?pesan=1&isi=Berhasil Menambahkan Agenda Acara  $a1");
}else{
header("location:../../Data-Agenda.php?pesan=2&isi=Gagal Menambahkan Menambahkan Agenda Acara $a1 karena ".mysql_error());
}
?>



