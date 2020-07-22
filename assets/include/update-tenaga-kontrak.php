<?php
include("koneksi.php");

	$id_pegawai		= $_POST['id_pegawai'];

	$nama1			= $_POST['nama1'];
	$nama2			= $_POST['nama2'];
	$nama3			= $_POST['nama3'];
	$nip			= $_POST['nip'];
	$golongan		= $_POST['golongan'];
	$jabatan		= $_POST['jabatan'];
	$esselon		= $_POST['esselon'];

	$unitkerja		= $_POST['unitkerja'];
	$jk				= $_POST['jk'];
	$goldarah		= $_POST['goldarah'];
	$telp			= $_POST['telp'];
	$alamat			= $_POST['alamat'];
	$jenis_jab		= $_POST['jenis_jab'];
	
	$name			=strtoupper($nama2);
	$jabatan_p		=strtoupper($jabatan);
	$alamat_p		=ucfirst(strtolower($alamat));
	
				
				$tgl			= date("d-m-Y, g:i a"); 			
				$tep			=ucfirst(strtolower($t_lahir));
	

				$sqlutama3		= " update pegawai set 
									gelar_dpn='$nama1',
									nama='$name',
									gelar_blk='$nama3',
									nama_p='$name',
									nrtk='$nip',
									jabatan='$jabatan_p',
									unit_kerja='$unitkerja',
									kelamin='$jk',
									gol_darah='$goldarah',
									no_telp	='$telp',
									alamat='$alamat_p'
									
									where id_pegawai='$id_pegawai'";
				$sql 			= mysqli_query($conn, $sqlutama3);
if ($sql){
header("location:../../Data-Pegawai.php?pesan=1&isi=Berhasil Mengedit Pegawai Dengan Nama $name");
}else{
header("location:../../Data-Pegawai.php?pesan=2&isi=Gagal Mengedit Pegawai Dengan Nama $name  ".mysql_error());
//echo $sqlutama3;
}
?>