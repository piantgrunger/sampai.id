<?php
include('koneksi.php');


$id_tugas	 					= $_POST['id_tugas'];
$id_jabatan 					= $_POST['id_jabatan'];
$uraian							= $_POST['uraian'];
$satuan							= $_POST['satuan'];
$beban							= $_POST['beban'];
$waktu							= $_POST['waktu'];
$hasil							= $_POST['hasil'];
$bahan							= $_POST['bahan'];
$digunakan_1					= $_POST['digunakan_1'];
$perangkat						= $_POST['perangkat'];
$digunakan_2					= $_POST['digunakan_2'];

$hitung							= $waktu * $beban / 75000;



$sql1					= "
							update tugas_pokok  set
							uraian ='$uraian',
							satuan ='$satuan',
							beban ='$beban',
							waktu ='$waktu',
							kebutuhan ='$hitung',
							hasil ='$hasil',
							bahan ='$bahan',
							digunakan_1 ='$digunakan_1',
							perangkat ='$perangkat',
							digunakan_2 ='$digunakan_2'
							
							where id_tugas='$id_tugas'
							



							";
$sql 					= mysqli_query($conn, $sql1);
if ($sql)
{
header("location:../../anjab-tugas-pokok.php?id=$id_jabatan");
//echo "Sukses";
}else
{
//header("location:../../Data-Jabatan.php?pesan=2&isi=Gagal Menambahkan Belanja Barang karena ".mysql_error());
echo $sql1;
}

?>



