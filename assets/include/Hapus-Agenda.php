<?php
include("koneksi.php");
$id = $_GET['id'];

		
			

$sql = "delete from acara where id_acara='$id'";
$ceksql=mysqli_query($conn, $sql);
if ($ceksql){
//echo $sql;
header("location:../../Data-Agenda.php");
}else{
echo $sql;
echo "Gagal";

//header("location:../../Data-SPPD.php?pesan=2&isi=Gagal  ".mysql_error());
}
?>