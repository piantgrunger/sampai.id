<?php
include('koneksi.php');
$id_jabatan 					= $_POST['id_jabatan'];
$bakat						= $_POST['bakat'];


$sql1					= "insert bakat values('','$id_jabatan','$bakat')";
$sql 					= mysqli_query($conn, $sql1);
if ($sql)
{
header("location:../../anjab-bakat.php?id=$id_jabatan");
//echo "Sukses";
}else
{
header("location:../../anjab-bakat.php?id=$id_jabatan");
//echo $sql1;
}

?>



