<?php
include('koneksi.php');
$id_jabatan 				= $_POST['id_jabatan'];
$temperamen					= $_POST['temperamen'];


$sql1					= "insert temperamen values('','$id_jabatan','$temperamen')";
$sql 					= mysqli_query($conn, $sql1);
if ($sql)
{
header("location:../../anjab-temperamen.php?id=$id_jabatan");
//echo "Sukses";
}else
{
header("location:../../anjab-temperamen.php?id=$id_jabatan");
//echo $sql1;
}

?>



