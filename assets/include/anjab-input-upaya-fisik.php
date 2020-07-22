<?php
include('koneksi.php');
$id_jabatan 				= $_POST['id_jabatan'];
$upaya						= $_POST['upaya'];


$sql1					= "insert upaya_fisik values(0,'$id_jabatan','$upaya')";
$sql 					= mysqli_query($conn, $sql1);
if ($sql)
{
header("location:../../anjab-upaya-fisik.php?id=$id_jabatan");
//echo "Sukses";
}else
{
header("location:../../anjab-upaya-fisik.php?id=$id_jabatan");
//echo $sql1;
}

?>



