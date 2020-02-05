<?php
include("koneksi.php");

	$id_skpd		= $_POST['id_skpd'];

	$nama_skpd		= $_POST['nama_kantor'];
	$nama_akronim	= $_POST['nama_akronim'];
	$telp_skpd		= $_POST['telp_skpd'];
	$email			= $_POST['email'];
	$alamat			= $_POST['alamat'];

	
	$a1 			= strtoupper($nama_skpd);
	$a2		 		= strtoupper($nama_akronim);
	$alamat_p		=ucfirst(strtolower($alamat));
	
			
				$sqlutama3		= " update skpd set 
									nama_skpd='$a1',
									singkat='$a2',
									alamat_skpd='$alamat_p',
									telp_skpd='$telp_skpd',
									email_skpd='$email'
									
									where id_skpd='$id_skpd'";
				$sql 			= mysqli_query($conn, $sqlutama3);
if ($sql){
header("location:../../Data-Instansi.php?pesan=1&isi=Berhasil Mengupdate Instansi $a1");
}else{
header("location:../../Data-Instansi.php?pesan=2&isi=Gagal Mengupdate Instansi $a1  ".mysql_error());
//echo $sqlutama3;
}
?>