<?php
include("koneksi.php");
$id = $_GET['id'];

		
			

$sql = "delete from distributor	 where id_distributor='$id'";
$ceksql=mysqli_query($conn, $sql);
if ($ceksql){
//echo $sql;
header("location:../../Data-Distributor-Admin.php ");
}else{
header("location:../../Data-Distributor-Admin.php?pesan=2&isi=Gagal Menghapus Menghapus Distributor $email  ".mysql_error());
}
?>