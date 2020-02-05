<?php
include('koneksi.php');

$acara		 			= $_POST['acara'];
$hari		 			= $_POST['hari'];
$tanggal 				= $_POST['tanggal'];
$waktu			 		= $_POST['waktu'];
$tempat		 			= $_POST['tempat'];
$id_pegawai		 		= $_POST['id_pejabat'];
$keterangan	 			= $_POST['keterangan'];
$id_acara		 		= $_POST['id_acara'];


$a1 					= strtoupper($acara);
$a2		 				= strtoupper($tempat);
$sql1					= " update acara  set
							acara ='$a1',
							hari ='$hari',
							tanggal ='$tanggal',
							waktu ='$waktu',
							tempat ='$a2',
							id_pegawai ='$id_pegawai',
							keterangan ='$keterangan'
							
							where id_acara='$id_acara'
							";
$sql 					= mysqli_query($conn, $sql1);
if ($sql){
header("location:../../Data-Agenda.php?pesan=1&isi=Berhasil Update Agenda Acara  $a1");
}else{
header("location:../../Data-Agenda.php?pesan=2&isi=Gagal Update  Agenda Acara $a1 karena ".mysql_error());
}
?>



