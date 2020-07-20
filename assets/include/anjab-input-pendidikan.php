<?php
include('koneksi.php');
$id_jabatan 					= $_POST['id_jabatan'];
$pendidikan						= $_POST['pendidikan'];

$sql1					= "insert pendidikan values('','$id_jabatan','$pendidikan')";
$sql 					= mysqli_query($conn, $sql1);
if ($sql)
{
header("location:../../anjab-pendidikan-formal.php?id=$id_jabatan");
//echo "Sukses";
}else
{
header("location:../../anjab-pendidikan-formal.php?id=$id_jabatan");
//echo $sql1;
}

?>



