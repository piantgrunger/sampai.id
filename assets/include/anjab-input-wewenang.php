<?php
include('koneksi.php');
$id_jabatan 					= $_POST['id_jabatan'];
$wewenang					= $_POST['wewenang'];

$sql1					= "insert wewenang values(0,'$id_jabatan','$wewenang')";
$sql 					= mysqli_query($conn, $sql1);
if ($sql)
{
header("location:../../anjab-wewenang.php?id=$id_jabatan");
//echo "Sukses";
}else
{
header("location:../../anjab-wewenang.php?id=$id_jabatan");
//echo $sql1;
}

?>



