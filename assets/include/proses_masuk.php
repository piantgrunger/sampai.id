<?php
session_start();
include "koneksi.php";

$email 			= mysqli_real_escape_string($conn, $_POST['email']);
$pass 			= md5($_POST['pswd']);
$sql_login1 	= "select * from users where email='$email' and pswd='$pass'";
$sql_login 		= mysqli_query($conn,$sql_login1);
//echo $sql_login1;
$count = mysqli_num_rows($sql_login);
if ( $count != 0 )
{
//berhasil login
		$data_login 	= mysqli_fetch_array($sql_login);
		$id_user 		= $data_login['id'];
		$user 			= $data_login['nama'];
		$kategori 		= $data_login['kategori'];
		if ($kategori=='User')
		{
		$log = date("H:i d M Y");
		//$_SESSION['login_chat_gue'] = $user; //set session login
		$_SESSION['session_login_by_id'] = $id_user;
		//$sql_online = mysql_query("UPDATE `users` SET `on`=1, `log`='$log' WHERE email='$email'"); //membuat user menjadi online
		header("location:../../user.php");
		}
		elseif ($kategori=='Admin')
		{
		$log = date("H:i d M Y");
		//$_SESSION['login_chat_gue'] = $user; //set session login
		$_SESSION['session_login_by_id'] = $id_user;
		//$sql_online = mysql_query("UPDATE `users` SET `on`=1, `log`='$log' WHERE email='$email'"); //membuat user menjadi online
		header("location:../../home");
		}
		elseif ($kategori=='Admin Persediaan')
		{
		$log = date("H:i d M Y");
		//$_SESSION['login_chat_gue'] = $user; //set session login
		$_SESSION['session_login_by_id'] = $id_user;
		//$sql_online = mysql_query("UPDATE `users` SET `on`=1, `log`='$log' WHERE email='$email'"); //membuat user menjadi online
		header("location:../../Admin-Persediaan.php");
		}
		elseif ($kategori=='Admin Sub Bidang')
		{
		$log = date("H:i d M Y");
		//$_SESSION['login_chat_gue'] = $user; //set session login
		$_SESSION['session_login_by_id'] = $id_user;
		//$sql_online = mysql_query("UPDATE `users` SET `on`=1, `log`='$log' WHERE email='$email'"); //membuat user menjadi online
		header("location:../../Admin-Sub-Bidang.php");
		}
		
		else
		{
		echo "Salah";
		}
}else{
//gagal login
//echo "Gagal Login! ".mysql_error();
//echo $sql_login1;
header("location:../../home");

}
?>
