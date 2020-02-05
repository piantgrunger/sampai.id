<?
	include "assets/include/koneksi.php";
	$nama_kantor 	= $_GET['KODE'];
	$sql_u			= "select * from pegawai where id_pegawai='$nama_kantor'";
	$sql_2 			= mysqli_query($conn, $sql_u);
	$data_p 		= mysqli_fetch_array($sql_2);
	$nama_pegawai 	= $data_p['nama'];
	$nama_pe 		= $data_p['2'];
	$id_peg 		= $data_p['0'];
	$nip 			= $data_p['3'];
	$golongan 		= $data_p['4'];
	$jabatan 		= $data_p['5'];
	$eselon 		= $data_p['6'];
	$unit_kerja 	= $data_p['7'];
	$t_lahir 		= $data_p['8'];
	$tgl_lahir 		= $data_p['9'];
	$kelamin 		= $data_p['10'];
	$gol_darah 		= $data_p['11'];
	$agama 			= $data_p['12'];
	$cek_peg 		= $data_p['21'];
	$no_telp 		= $data_p['14'];
	$email 			= $data_p['15'];
	$alamat 		= $data_p['16'];
	$lokasi			= $data_p['lokasi'];
	$status			= $data_p['status'];
	$te				= ucfirst(strtolower($t_lahir));
	$captcha 		= strtoupper($unit_kerja);
	
if ($status=='1'  )
{
header("location:update-pegawai.php?KODE=$id_peg");
}

else
{
header("location:update-tenaga-kontrak.php?KODE=$id_peg");
}
?>

