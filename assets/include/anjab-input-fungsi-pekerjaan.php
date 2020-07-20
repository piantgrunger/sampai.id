<?php
include('koneksi.php');
$id_jabatan 				= $_POST['id_jabatan'];
$data						= $_POST['data'];
$orang						= $_POST['orang'];
$benda						= $_POST['benda'];




$sql1					= "insert fungsi_pekerjaan values('','$id_jabatan','$data','$orang','$benda')";
$sql 					= mysqli_query($conn, $sql1);
if ($sql)
{
header("location:../../anjab-fungsi-pekerjaan.php?id=$id_jabatan");
//echo "Sukses";
}else
{
header("location:../../anjab-fungsi-pekerjaan.php?id=$id_jabatan");
//echo $sql1;
}

?>



