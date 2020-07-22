<?php
include('koneksi.php');
$id_jabatan 					= $_POST['id_jabatan'];
$diklat							= $_POST['diklat'];

$sql1					= "insert diklat_teknis values(0,'$id_jabatan','$diklat')";
$sql 					= mysqli_query($conn, $sql1);
if ($sql)
{
header("location:../../anjab-diklat-teknis.php?id=$id_jabatan");
//echo "Sukses";
}else
{
header("location:../../anjab-diklat-teknis.php?id=$id_jabatan");
//echo $sql1;
}

?>



