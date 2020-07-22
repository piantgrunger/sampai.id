<?php
  	include "assets/include/koneksi.php";
	require_once("dompdf/dompdf_config.inc.php");
	ob_start();
	
?>
<?php
							$id_ambil_cuti = $_GET['id'];

					$sql_cuti 					="select * from cuti where id_ambil_cuti='$id_ambil_cuti' ";
	$mysql_cuti 				= mysqli_query ($conn,$sql_cuti);
	$fetch_sql_cuti				= mysqli_fetch_array($mysql_cuti);
	
	$id_cuti					= $fetch_sql_cuti['id_cuti'];
	$id_pegawai					= $fetch_sql_cuti['id_pegawai'];
	$lama_cuti					= $fetch_sql_cuti['lama_cuti'];
	$tgl_awal					= $fetch_sql_cuti['tgl_awal'];
	$tgl_akhir					= $fetch_sql_cuti['tgl_akhir'];
	$alamat_cuti				= $fetch_sql_cuti['alamat_cuti'];
	$telp						= $fetch_sql_cuti['telp'];
	$tahun						= $fetch_sql_cuti['tahun'];
	$status						= $fetch_sql_cuti['status'];
	$id_atasan					= $fetch_sql_cuti['id_atasan'];
	$tgl_pengajuan				= $fetch_sql_cuti['tgl_pengajuan'];
					
					$sql_0011	= "select * from pegawai where id_pegawai='$id_pegawai'";
					$sql_kk11 	= mysqli_query($conn, $sql_0011);
					$data_kk11 	= mysqli_fetch_array($sql_kk11);
					$gelar_dpn	= $data_kk11['gelar_dpn'];
					$nama		= $data_kk11['nama'];
					$gelar_blk	= $data_kk11['gelar_blk'];
					$nip		= $data_kk11['nip'];
					$tempat_lahir	= $data_kk11['tempat_lahir'];
					$tgl_lahir	= $data_kk11['tgl_lahir'];
					$id_gol		= $data_kk11['golongan'];
					$tmt		= $data_kk11['tmt'];
					$jabatan	= $data_kk11['jabatan'];
					$eselon		= $data_kk11['eselon'];
					$status_p	= $data_kk11['status'];
					$unit_kerja	= $data_kk11['unit_kerja'];
					
					$sql_00111	= "select * from tb_golongan where id_gol='$id_gol'";
					$sql_kk111 	= mysqli_query($conn, $sql_00111);
					$data_kk111	= mysqli_fetch_array($sql_kk111);
					$golongan	= $data_kk111['golongan'];
					
					echo 	$nama;
				?>