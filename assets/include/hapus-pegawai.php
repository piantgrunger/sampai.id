<?php
include("koneksi.php");
$id_pegawai = $_GET['KODE'];

		
				$sql_00		= "select * from pegawai where id_pegawai='$id_pegawai'";
				$sql_kk 	= mysqli_query($conn, $sql_00);
				$data_kk 	= mysqli_fetch_array($sql_kk);
				$nip		= $data_kk['nip'];
				$nama		= $data_kk['nama'];

$sql = "delete from pegawai where id_pegawai='$id_pegawai'";
$ceksql=mysqli_query($conn, $sql);
if ($ceksql){
//echo $sql;
header("location:../../Data-Pegawai.php?pesan=1&isi=Berhasil Menghapus Pegawai Dengan NIP $nip A.n $nama ");
}else{
header("location:../../Data-Pegawai.php?pesan=2&isi=Gagal Menghapus Menghapus Pegawai Dengan NIP $nip A.n $nama  ".mysql_error());
}
?>