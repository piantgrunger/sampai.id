<?php
include('koneksi.php');
$id_jabatan 				= $_POST['id_jabatan'];
$minat						= $_POST['minat'];


$sql1					= "insert minat values('','$id_jabatan','$minat')";
$sql 					= mysqli_query($conn, $sql1);
if ($sql)
{
header("location:../../anjab-minat.php?id=$id_jabatan");
//echo "Sukses";
}else
{
header("location:../../anjab-minat.php?id=$id_jabatan");
//echo $sql1;
}

?>



