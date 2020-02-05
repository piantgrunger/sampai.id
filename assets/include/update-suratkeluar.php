<?php
include("koneksi.php");

	$id_suratkeluar		= $_POST['id_suratkeluar'];

	$id_klasifikasi			= $_POST['id_klasifikasi'];
	$no_surat			= $_POST['no_surat'];
	$perihal			= $_POST['perihal'];
	$name				= strtolower($perihal);
	$a1 		   		= ucwords($name);
	
	$id_unitkerja		= $_POST['id_unitkerja'];
	$sifat				= $_POST['sifat'];
	$tujuan				= $_POST['tujuan'];
	
	$tgl				= $_POST['tgl'];
	$bln				= $_POST['bln'];
	$thn				= $_POST['thn'];
	
	$tgl_surat 				= $tgl;
	$tgl_surat 				.= ' ';
	$tgl_surat 				.= $bln;
	$tgl_surat 				.= ' ';
	$tgl_surat 				.= $thn;

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

				$sqlutama3		= " update surat_keluar set 
									id_unitkerja='$id_unitkerja',
									id_klasifikasi='$id_klasifikasi',
									no_surat='$no_surat',
									tgl_surat='$tgl_surat',
									perihal='$a1',
									tujuan='$tujuan',
									sifat='$sifat',
									tgl_input='$tgl_ajuan'
									
									where id_suratkeluar='$id_suratkeluar'";
				$sql 			= mysqli_query($conn, $sqlutama3);
if ($sql){
header("location:../../Data-Surat-Keluar.php?pesan=1&isi=Berhasil Mengupdate Surat Keluar $no_surat");
}else{
header("location:../../Data-Instansi.php?pesan=2&isi=Gagal Mengupdate Surat Keluar $no_surat  ".mysql_error());
//echo $sqlutama3;
}
?>