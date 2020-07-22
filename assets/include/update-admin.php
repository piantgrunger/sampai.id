<?php
include("koneksi.php");

	$id_user		= $_POST['id_user'];

	$email 			= $_POST['email'];
	$admin 			= $_POST['admin'];
	$pswd 			= md5($_POST['pswd']);
	
	$a11			=strtoupper($admin);
	
	

				$sqlutama3		= " update users set 
									nama='$admin',
									email='$email',
									pswd='$pswd'
									
									where id='$id_user'";
				$sql 			= mysqli_query($conn, $sqlutama3);
if ($sql){
header("location:../../Data-Admin.php?pesan=1&isi=Berhasil Mengedit Admin Dengan Nama $admin");
}else{
header("location:../../Data-Admin.php?pesan=2&isi=Gagal Mengedit Admin Dengan Nama $admin  ".mysql_error());
//echo $sqlutama3;
}
?>