<?
	include "assets/include/koneksi.php";
	$nama_kantor 	= $_GET['KODE'];
	$sql_u			= "select * from pegawai where id_pegawai='$nama_kantor'";
	$sql_2 			= mysqli_query($conn, $sql_u);
	$data_p 		= mysqli_fetch_array($sql_2);
	$nama_pegawai 	= $data_p['nama'];
	$nama_pe 		= $data_p['2'];
	$id_peg 		= $data_p['0'];
	$status 		= $data_p['status'];
	
if ($status=='1' )
{
header("location:cuti.php?KODE=$id_peg");
}

else
{
header("location:cuti.php?KODE=$id_peg");
}
?>

