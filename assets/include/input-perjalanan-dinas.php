<?php
include('koneksi.php');
//$year					= date("d-m-Y");
$t_now					= date("d");
$bln_lantik				= date("m");
$y_now					= date("Y");


					if ($bln_lantik =='01')
					{
					$bulan_lantik	='Januari';
					}
					elseif ($bln_lantik =='02')
					{
					$bulan_lantik	='Februari';
					}
					elseif ($bln_lantik =='03')
					{
					$bulan_lantik	='Maret';
					}
					elseif ($bln_lantik =='04')
					{
					$bulan_lantik	='April';
					}
					elseif ($bln_lantik =='05')
					{
					$bulan_lantik	='Mei';
					}
					elseif ($bln_lantik =='06')
					{
					$bulan_lantik	='Juni';
					}
					elseif ($bln_lantik =='07')
					{
					$bulan_lantik	='Juli';
					}
					elseif ($bln_lantik =='08')
					{
					$bulan_lantik	='Agustus';
					}
					elseif ($bln_lantik =='09')
					{
					$bulan_lantik	='September';
					}
					elseif ($bln_lantik =='10')
					{
					$bulan_lantik	='Oktober';
					}
					elseif ($bln_lantik =='11')
					{
					$bulan_lantik	='November';
					}
					else
					{
					$bulan_lantik	='Desember';
					}										
																
					$tgl_ajuan = $t_now;
					$tgl_ajuan .= " ";
					$tgl_ajuan .= $bulan_lantik;
					$tgl_ajuan .= " ";
					$tgl_ajuan .= $y_now;

$id_pegawai 			= $_POST['id_pegawai'];
//$id_atasan 				= $_POST['id_atasan'];

$tahun		 			= $_POST['tahun'];
$id_perjalanan			= $_POST['id_perjalanan'];
$maksud			 		= $_POST['maksud'];
$angkutan		 		= $_POST['angkutan'];
$tujuan			 		= $_POST['tujuan'];
$lama		 			= $_POST['lama_pd'];
$pengikut		 		= $_POST['pengikut'];
$anggaran	 			= $_POST['pembebanan'];
$keterangan	 			= $_POST['keterangan'];
$no_sppd	 			= $_POST['no_sppd'];
$id_unit_org_sppd	 	= $_POST['id_unit_org_sppd'];



$tgl 					= $_POST['tgl'];
$bln			 		= $_POST['bln'];
$thn		 			= $_POST['thn'];

$tgl1 					= $_POST['tgl1'];
$bln1			 		= $_POST['bln1'];
$thn1		 			= $_POST['thn1'];

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




$a1 					= strtoupper($maksud);
$a2		 				= strtoupper($tujuan);

$sql1					= "insert sppd  values('', '$id_perjalanan','$id_pegawai', '$a1','$angkutan','BANJARBARU','$a2', '$lama','$tgl_awal','$tgl_akhir','$pengikut','$anggaran','$keterangan','$y_now','$tgl_ajuan','$id_unit_org_sppd','$no_sppd' )";
$sql 					= mysqli_query($conn, $sql1);
if ($sql){
header("location:../../Data-SPPD.php?pesan=1&isi=Berhasil Menambahkan SPPD ");
}else{
header("location:../../Data-SPPD.php?pesan=2&isi=Gagal Menambahkan SPPD  ".mysql_error());
}
?>



