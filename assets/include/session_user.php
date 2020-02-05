<?php
session_start();

include "koneksi.php";

if (isset($_SESSION['session_login_by_id'])){ //jika session loginnya ada maka lanjutkan
	$user_id = $_SESSION['session_login_by_id'];
	//dapatkan data user
	$sql = "select * from users where id='$user_id'";
	$sql_01 = mysqli_query ($conn, $sql);
	$data = mysqli_fetch_array($sql_01);
	$nama_1 		= $data['nama'];
	$email 			= $data['email'];
	$kategori		= $data['kategori'];
	$password 		= $data['pswd'];
	$pertanyaan 	= $data['pertanyaan'];
	$lokasi_pict 	= $data['lokasi_ad'];
	$cekid_skpd		= $data['id_skpd'];
	
	//untuk liat data skpd
				$sql_skpd	= "select * from skpd where id_skpd='$cekid_skpd'";
				$sql_skpd01	= mysqli_query($conn, $sql_skpd);
				$data_skpd 	= mysqli_fetch_array($sql_skpd01);
				$kode_skpd 	= $data_skpd['kode_skpd'];
				$nama_skpd	= $data_skpd['nama_skpd'];
				$jenis_skpd	= $data_skpd['jenis_skpd'];
				$tgl		= date("d-m-Y, g:i a"); 
				
	//untuk liat data jabatan
				$id_j				= $_GET['id_j'];
				$sql_jabatan		= "select * from jabatan where id_jabatan='$id_j'";
				$sql_jabatan		= mysqli_query($conn, $sql_jabatan);
				$data_jabatan		= mysqli_fetch_array($sql_jabatan);
				$nama_jabatan		= $data_jabatan['jabatan'];
				$golongan_jabatan	= $data_jabatan['golongan'];
				$rumusan_tugas		= $data_jabatan['rumusan_tgs'];
				$id_u				= $data_jabatan['id_unit_org'];
				$unit_organisasi	= $data_jabatan['unit_organisasi'];
				
				
		if ($kategori!='User')
		{
			
		//include("inc/cekyourlogin.php"); 
		//echo "Anda Harus Login terlebih dahulu untuk mengakses halaman ini <p> <a href='index.php'>Kembali</a>";
		
		exit();
		}
			

}
else{
	//include("inc/cekyourlogin.php"); 
	//echo "Anda Harus Login terlebih dahulu untuk mengakses halaman ini <p> <a href='index.php'>Kembali</a>";
			header("location:login.php");

	exit();
}

?>