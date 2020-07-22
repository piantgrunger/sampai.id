<?php
include('koneksi.php');
$id_jabatan 					= $_POST['id_jabatan'];
$ikhtisar						= $_POST['ikhtisar'];

$sql1					= "insert ikhtisar values(0,'$id_jabatan','$ikhtisar')";
$sql 					= mysqli_query($conn, $sql1);
if ($sql)
{
header("location:../../anjab-iktisar.php?id=$id_jabatan");
//echo "Sukses";
}else
{
header("location:../../Data-Jabatan.php?pesan=2&isi=Gagal Menambahkan Belanja Barang karena ".mysql_error());
//echo $sql1;
}

?>



