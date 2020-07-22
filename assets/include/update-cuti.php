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
$id_atasan 			= $_POST['id_atasan'];

$tahun		 			= $_POST['tahun'];
$id_cuti 				= $_POST['id_cuti'];
$alasan			 		= $_POST['alasan'];
$lama_cuti		 		= $_POST['lama_cuti'];
$id_ambil_cuti	 		= $_POST['id_ambil_cuti'];
//$tgl_akhir	 			= $_POST['tgl_akhir'];
$no_telp		 		= $_POST['no_telp'];
$alamat_cuti 			= $_POST['alamat_cuti'];
$telp		 			= $_POST['telp'];

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




$a1 					= strtoupper($alasan);
$a2		 				= strtoupper($alamat_cuti);


					$sqlutama3		= " update cuti set 
									id_cuti='$id_cuti',
									lama_cuti='$lama_cuti',
									tgl_awal='$tgl_awal',
									tgl_akhir='$tgl_akhir',
									alasan='$a1',
									alamat_cuti='$a2',
									telp='$telp',
									tgl_pengajuan='$tgl_ajuan' 
									
									where id_ambil_cuti='$id_ambil_cuti'";






$sql 					= mysqli_query($conn, $sqlutama3);
if ($sql){
header("location:../../Data-Cuti.php?pesan=1&isi=Berhasil Mengupdate Cuti");
}else{
header("location:../../Data-Cuti.php?pesan=2&isi=Gagal Mengupdate Cuti ".mysql_error());
}
?>



