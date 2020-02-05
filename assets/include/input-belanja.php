<?php
include('koneksi.php');
$id_barang 					= $_POST['id_barang'];
$qty						= $_POST['qty'];
$id_spk						= $_POST['id_spk'];
$keterangan					= $_POST['keterangan'];



					$query_distributor 	= "SELECT * FROM barang where id_barang='$id_barang' ";
					$mysql_distributor	= mysqli_query($conn, $query_distributor);
					$data_dis			= mysqli_fetch_array($mysql_distributor);
					$harga				= $data_dis['harga'];



$jumlah 					= $qty * $harga;







$sql1					= "insert belanja_barang values('','$id_spk','$id_barang','$keterangan','$qty','$jumlah' )";
$sql 					= mysqli_query($conn, $sql1);
if ($sql)
{
header("location:../../Input-SPK-Step-Three.php?KODE=$id_spk");
//echo "Sukses";
}else
{
header("location:../../Data-SPK.php?pesan=2&isi=Gagal Menambahkan Belanja Barang karena ".mysql_error());
//echo $sql1;
}

?>



