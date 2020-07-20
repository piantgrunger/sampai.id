<?php
include('koneksi.php');
$id_jabatan 					= $_POST['id_jabatan'];
$pengalaman						= $_POST['pengalaman'];

$sql1					= "insert pengalaman_kerja values('','$id_jabatan','$pengalaman')";
$sql 					= mysqli_query($conn, $sql1);
if ($sql)
{
header("location:../../anjab-pengalaman-kerja.php?id=$id_jabatan");
//echo "Sukses";
}else
{
header("location:../../anjab-pengalaman-kerja.php?id=$id_jabatan");
//echo $sql1;
}

?>



