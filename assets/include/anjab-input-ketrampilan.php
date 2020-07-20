<?php
include('koneksi.php');
$id_jabatan 					= $_POST['id_jabatan'];
$keterampilan					= $_POST['keterampilan'];
$tambahan						= $_POST['tambahan'];


$sql1					= "insert keterampilan values('','$id_jabatan','$keterampilan' ,'$tambahan')";
$sql 					= mysqli_query($conn, $sql1);
if ($sql)
{
header("location:../../anjab-ketrampilan.php?id=$id_jabatan");
//echo "Sukses";
}else
{
header("location:../../anjab-ketrampilan.php?id=$id_jabatan");
//echo $sql1;
}

?>



