<?php
include('koneksi.php');
$id_jabatan 				= $_POST['id_jabatan'];
$jk						= $_POST['jk'];
$umur						= $_POST['umur'];
$tinggi						= $_POST['tinggi'];
$berat						= $_POST['berat'];
$postur						= $_POST['postur'];
$penampilan						= $_POST['penampilan'];



$sql1					= "insert kondisi_fisik values(0,'$id_jabatan','$jk','$umur','$tinggi','$berat','$postur','$penampilan')";
$sql 					= mysqli_query($conn, $sql1);
if ($sql)
{
header("location:../../anjab-kondisi-fisik.php?id=$id_jabatan");
//echo "Sukses";
}else
{
header("location:../../anjab-kondisi-fisik.php?id=$id_jabatan");
//echo $sql1;
}

?>



