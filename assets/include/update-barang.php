<?php
include('koneksi.php');


$id_barang		 			= $_POST['id_barang'];
$nama_barang	 			= $_POST['nama_barang'];
$satuan						= $_POST['satuan'];
$harga						= $_POST['harga'];
$kategori					= $_POST['kategori'];


//$a1 					= strtoupper($nama_kantor);
//$a2		 			= strtoupper($nama_akronim);
$sql1					= "
							update barang set
									nama_barang		='$nama_barang',
									satuan			='$satuan',
									harga				='$harga',
									kategori			='$kategori'
									
						where id_barang='$id_barang'
";
$sql 					= mysqli_query($conn, $sql1);
if ($sql){
//echo $sql1;

header("location:../../Daftar-Barang-admin.php?pesan=1&isi=Berhasil Update Barang");
}else{
header("location:../../Daftar-Barang-admin.php?pesan=2&isi=Gagal Update Barang ".mysql_error());
//echo $sql1;
}
?>



