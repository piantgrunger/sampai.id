<?php
include('koneksi.php');
$id_jabatan 					= $_POST['id_jabatan'];
$tanggungjawab					= $_POST['tanggungjawab'];

$sql1					= "insert tanggungjawab values('','$id_jabatan','$tanggungjawab')";
$sql 					= mysqli_query($conn, $sql1);
if ($sql)
{
header("location:../../anjab-tanggung-jawab.php?id=$id_jabatan");
//echo "Sukses";
}else
{
header("location:../../anjab-tanggung-jawab.php?id=$id_jabatan");
//echo $sql1;
}

?>



