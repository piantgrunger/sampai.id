<?php
include('koneksi.php');
$id_jabatan 					= $_POST['id_jabatan'];
$prestasi						= $_POST['prestasi'];
$kelas							= $_POST['kelas'];


$sql1					= "insert kelas_jabatan values('','$id_jabatan','$kelas' ,'$prestasi')";
$sql 					= mysqli_query($conn, $sql1);
if ($sql)
{
header("location:../../anjab-kelas-jabatan.php?id=$id_jabatan");
//echo "Sukses";
}else
{
header("location:../../anjab-kelas-jabatan.php?id=$id_jabatan");
//echo $sql1;
}

?>



