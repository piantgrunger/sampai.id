<?php
include('koneksi.php');


$untuk		 			= $_POST['untuk'];
$keperluan	 			= $_POST['keperluan'];
$id_distributor			= $_POST['id_distributor'];
$id_klasifikasi			= $_POST['id_klasifikasi'];
$nomor_spk				= $_POST['nomor_spk'];
$hari					= $_POST['hari'];
$id_spk					= $_POST['id_spk'];




$tgl 					= $_POST['tgl'];
$bln			 		= $_POST['bln'];
$thn		 			= $_POST['thn'];

$tgl1 					= $_POST['tgl1'];
$bln1			 		= $_POST['bln1'];
$thn1		 			= $_POST['thn1'];

$id_jabatan		 		= $_POST['id_jabatan'];
$id_admin		 		= $_POST['id_admin'];


$tgl_awal 				= $tgl;
$tgl_awal 				.= ' ';
$tgl_awal 				.= $bln;
$tgl_awal 				.= ' ';
$tgl_awal 				.= $thn;

$tgl_akhir 				= $tgl1;
$tgl_akhir 				.= ' ';
$tgl_akhir 				.= $bln1;
$tgl_akhir 				.= ' ';
$tgl_akhir 				.= $thn1;

$tahun					= date("Y");


//$a1 					= strtoupper($nama_kantor);
//$a2		 			= strtoupper($nama_akronim);
$sql1					= "
							update spk set
									id_distributor		='$id_distributor',
									untuk				='$untuk',
									keperluan			='$keperluan',
									hari				='$hari',
									tgl_serah			='$tgl_awal',
									tgl_buat			='$tgl_akhir',
									id_klasifikasi		='$id_klasifikasi'
									
						where id_spk='$id_spk'
";
$sql 					= mysqli_query($conn, $sql1);
if ($sql){
//echo $sql1;

header("location:../../Data-SPK.php?pesan=1&isi=Berhasil Update Surat Perintah Kerja (SPK)");
}else{
header("location:../../Data-SPK.php?pesan=2&isi=Gagal Update Surat Perintah Kerja (SPK) karena ".mysql_error());
//echo $sql1;
}
?>



