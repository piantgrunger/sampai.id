<?php
include('koneksi.php');
$id_jabatan 					= $_POST['id_jabatan'];
$diklat							= $_POST['diklat'];

$sql1					= "insert diklat_perjenjangan values(0,'$id_jabatan','$diklat')";
$sql 					= mysqli_query($conn, $sql1);
if ($sql)
{
header("location:../../anjab-diklat-perjenjangan.php?id=$id_jabatan");
//echo "Sukses";
}else
{
header("location:../../Data-Jabatan.php?pesan=2&isi=Gagal Menambahkan Belanja Barang karena ".mysql_error());
//echo $sql1;
}

?>



