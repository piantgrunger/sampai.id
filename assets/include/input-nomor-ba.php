<?
include('koneksi.php');
$id_spk = $_GET['id'];


						$query_ 	= "SELECT MAX(nomor_ba) as max_id FROM spk where tahun ='$yearsnow' ORDER BY nomor_ba";
						  $result_ 	= mysqli_query($conn, $query_);
						  $data_ 	= mysqli_fetch_array($result_);
						  $id_max 	= $data_['max_id'];
						  if ($id_max==0)
						  {
						  $id_awal = 0;
						  $nourut = substr($id_awal, 0, 4); // contoh JRD0004, angka 3 adalah awal pengambilan angka, dan 4 jumlah angka yang diambil
						  $nourut++; 
						  $new_code = sprintf("%04s", $nourut);
						  }
						  else
						  {
						  $id_awal = $id_max;
						  $nourut = substr($id_awal, 0, 4); // contoh JRD0004, angka 3 adalah awal pengambilan angka, dan 4 jumlah angka yang diambil
						  $nourut++; 
						  $new_code = sprintf("%04s", $nourut);
						  }


//$a1 					= strtoupper($nama_kantor);
//$a2		 			= strtoupper($nama_akronim);
$sql1					= "update spk set
									nomor_ba			='$new_code'
							where id_spk='$id_spk'
							";
$sql 					= mysqli_query($conn, $sql1);
if ($sql){
header("location:../../Data-SPK-Admin.php?pesan=1&isi=Berhasil Membuat Nomor Berita Acara");
}else{
header("location:../../Data-SPK-Admin.php?pesan=2&isi=Gagal Membuat Nomor Berita Acara ".mysql_error());
}
?>



