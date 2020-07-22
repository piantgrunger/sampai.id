<?php
include('session.php');
include('koneksi.php');
$id_pegawai 			= $_GET['KODE'];
$tgl			= date("d-m-Y, g:i a"); 
$year			= date("d-m-Y");
$year1			= date("Y");
$tgll			= date("dmY"); 

				$sql_00 	= "SELECT * FROM pegawai where id_pegawai=$id_pegawai";
				$sql_kk 	= mysqli_query($conn, $sql_00);
				$data_kk 	= mysqli_fetch_array($sql_kk);
				$nama		= $data_kk['nama'];



$sql1					= "insert cetak  values('','$id_pegawai', '$year','$nama_1'  )";
$sql 					= mysqli_query($conn, $sql1);
if ($sql){
header("location:../../Data-Pegawai.php?pesan=1&isi=Berhasil Mencetak Kartu Pegawai  Atas Nama $nama");
}else{
header("location:../../Data-Pegawai.php?pesan=2&isi=Gagal Mencetak Kartu Pegawai  Atas Nama $nama ".mysql_error());
}
?>



