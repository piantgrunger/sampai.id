<?php
include('koneksi.php');

				function randomPrefix($length)
				{
				$random	="";
				srand((double)microtime()*1000000);
				
				$data	=  "AbcDE123IJKLMN67QRSTUVWXYZ";
				$data	.= "aBCdefghijkmn123opq45rs67tuv89xyz";
				$data	.= "0FGH45OP89";
				for ($i = 0; $i < $length; $i++)
				{
				$random	.= substr($data,(rand()%(strlen($data))), 1);
				}
				return $random;
				}



$code						= randomPrefix(12);

$distributor		 	= $_POST['distributor'];
$nama_pemilik	 		= $_POST['nama_pemilik'];
$alamat					= $_POST['alamat'];
$npwp					= $_POST['npwp'];
$rek_bank				= $_POST['rek_bank'];



$a1 					= strtoupper($distributor);
//$a2		 			= strtoupper($nama_akronim);
$sql1					= "insert distributor  values('', '$a1','$nama_pemilik','$alamat', '$npwp','$rek_bank' )";
$sql 					= mysqli_query($conn, $sql1);
if ($sql){
header("location:../../Data-Distributor.php?pesan=1&isi=Berhasil Menambahkan Distributor Baru");
}else{
header("location:../../Data-Distributor.php?pesan=2&isi=Gagal Menambahkan Distributor Baru ".mysql_error());
}
?>



