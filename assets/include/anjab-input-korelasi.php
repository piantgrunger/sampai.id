<?php
include('koneksi.php');
$id_jabatan 				= $_POST['id_jabatan'];
$jabatan_					= $_POST['jabatan_'];
$unitkerja					= $_POST['unitkerja'];
$hal						= $_POST['hal'];

$sql1					= "insert korelasi values(0,'$id_jabatan','$jabatan_','$unitkerja','$hal')";
$sql 					= mysqli_query($conn, $sql1);
if ($sql)
{
header("location:../../anjab-korelasi.php?id=$id_jabatan");
//echo "Sukses";
}else
{
header("location:../../anjab-korelasi.php?id=$id_jabatan");
//echo $sql1;
}

?>



