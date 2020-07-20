<?php
include("koneksi.php");
$id_ikhtisar = $_GET['id'];
					
					$jml_data1 	= "SELECT * FROM ikhtisar where id_ikhtisar='$id_ikhtisar' ";
					$query		  = mysqli_query($conn, $jml_data1);
					$data       = mysqli_fetch_array($query);
					
					$id_jabatan		= $data['id_jabatan'];

$sql = "delete from ikhtisar where id_ikhtisar='$id_ikhtisar'";
$ceksql=mysqli_query($conn, $sql);
if ($ceksql)
{
//echo $sql;
header("location:../../anjab-iktisar.php?id=$id_jabatan");
}else
{
header("location:../../Data-Jabatan.php?pesan=2&isi=Gagal Menghapus Menghapus Admin Dengan Username $email  ".mysql_error());
}
?>