<?php
session_start();

include "koneksi.php";

if (isset($_SESSION['session_login_by_id'])){ //jika session loginnya ada maka lanjutkan
	$user_id = $_SESSION['session_login_by_id'];
	//dapatkan data user
	$sql = "select * from users where id='$user_id'";
	$sql_01 = mysqli_query ($conn, $sql);
	$data = mysqli_fetch_array($sql_01);
	$id_admin 		= $data['id'];
	$nama_1 		= $data['nama'];
	$email 			= $data['email'];
	$kategori		= $data['kategori'];
	$password 		= $data['pswd'];
	$pertanyaan 	= $data['pertanyaan'];
	$lokasi_pict 	= $data['lokasi_ad'];
	$id_jabatan		= $data['id_skpd'];
	
	
				
		if ($kategori!='Admin Sub Bidang')
		{
		//include("inc/cekyourlogin.php"); 
		//echo "Anda Harus Login terlebih dahulu untuk mengakses halaman ini <p> <a href='index.php'>Kembali</a>";
		exit();
		}
			

}
else{
	//include("inc/cekyourlogin.php"); 
	//echo "Anda Harus Login terlebih dahulu untuk mengakses halaman ini <p> <a href='index.php'>Kembali</a>";
			header("location:Login");

	exit();
}

?>