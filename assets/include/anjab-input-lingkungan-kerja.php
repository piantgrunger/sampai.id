<?php
include('koneksi.php');
$id_jabatan 				= $_POST['id_jabatan'];
$tempat						= $_POST['tempat'];
$suhu						= $_POST['suhu'];
$udara						= $_POST['udara'];
$ruangan					= $_POST['ruangan'];
$letak						= $_POST['letak'];
$penerangan					= $_POST['penerangan'];
$suara						= $_POST['suara'];
$keadaan					= $_POST['keadaan'];
$getaran					= $_POST['getaran'];


$sql1					= "insert lingkungan_kerja values('','$id_jabatan','$tempat','$suhu','$udara','$ruangan','$letak','$penerangan','$suara','$keadaan','$getaran')";
$sql 					= mysqli_query($conn, $sql1);
if ($sql)
{
header("location:../../anjab-lingkungan-kerja.php?id=$id_jabatan");
//echo "Sukses";
}else
{
header("location:../../anjab-lingkungan-kerja.php?id=$id_jabatan");
//echo $sql1;
}

?>



