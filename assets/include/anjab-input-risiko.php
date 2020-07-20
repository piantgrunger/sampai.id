<?php
include('koneksi.php');
$id_jabatan 					= $_POST['id_jabatan'];
$bahaya						= $_POST['bahaya'];
$penyebab					= $_POST['penyebab'];


$sql1					= "insert risiko values('','$id_jabatan','$bahaya' ,'$penyebab')";
$sql 					= mysqli_query($conn, $sql1);
if ($sql)
{
header("location:../../anjab-risiko.php?id=$id_jabatan");
//echo "Sukses";
}else
{
header("location:../../anjab-risiko.php?id=$id_jabatan");
//echo $sql1;
}

?>



