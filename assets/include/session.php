<?php
session_start();

include "koneksi.php";

if (isset($_SESSION['session_login_by_id']))
{ //jika session loginnya ada maka lanjutkan
	$user_id = $_SESSION['session_login_by_id'];
	//dapatkan data user
	$sql_0 			= "select * from users where id='$user_id'";
	$sql 			= mysqli_query($conn, $sql_0);
	$data 			= mysqli_fetch_array($sql);
	$nama_1 		= $data['nama'];
	$email 			= $data['email'];
	$password		= $data['pswd'];
	$pertanyaan 	= $data['pertanyaan'];
	$lokasi_pict 	= $data['lokasi_ad'];


}

else
{
	header("location:login.php");

	exit();
}

?>