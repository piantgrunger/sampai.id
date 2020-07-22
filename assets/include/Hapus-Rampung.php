<?php
include("koneksi.php");
$id = $_GET['id'];

		
				$sql_00		= "select * from rampung where id_rampung='$id'";
				$sql_kk 	= mysqli_query($conn, $sql_00);
				$data_kk 	= mysqli_fetch_array($sql_kk);
				$id_sppd		= $data_kk['id_sppd'];

$sql = "delete from rampung where id_rampung='$id'";
$ceksql=mysqli_query($conn, $sql);
if ($ceksql){
//echo $sql;
header("location:../../Rampung-SPPD.php?id=$id_sppd");
}else{
echo $sql;
echo "Gagal";

//header("location:../../Data-SPPD.php?pesan=2&isi=Gagal  ".mysql_error());
}
?>