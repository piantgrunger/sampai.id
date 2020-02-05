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

$untuk		 			= $_POST['untuk'];
$keperluan	 			= $_POST['keperluan'];
$id_distributor			= $_POST['id_distributor'];
$id_klasifikasi			= $_POST['id_klasifikasi'];
$nomor_spk				= $_POST['nomor_spk'];
$hari					= $_POST['hari'];
$jenis					= $_POST['jenis'];




$tgl 					= $_POST['tgl'];
$bln			 		= $_POST['bln'];
$thn		 			= $_POST['thn'];

$tgl1 					= $_POST['tgl1'];
$bln1			 		= $_POST['bln1'];
$thn1		 			= $_POST['thn1'];

$id_jabatan		 		= $_POST['id_jabatan'];
$id_admin		 		= $_POST['id_admin'];


$tgl_awal 				= $tgl;
$tgl_awal 				.= ' ';
$tgl_awal 				.= $bln;
$tgl_awal 				.= ' ';
$tgl_awal 				.= $thn;


if ($bln =='Januari')
	  {
	  $n_bulan ='1';
	  }
	  else if ($bln =='Februari')
	  {
	  $n_bulan ='2';
	  }
	   else if ($bln =='Maret')
	  {
	  $n_bulan ='3';
	  }
	   else if ($bln =='April')
	  {
	  $n_bulan ='4';
	  }
	   else if ($bln =='Mei')
	  {
	  $n_bulan ='5';
	  }
	   else if ($bln =='Juni')
	  {
	  $n_bulan ='6';
	  }
	   else if ($bln =='Juli')
	  {
	  $n_bulan ='7';
	  }
	   else if ($bln =='Agustus')
	  {
	  $n_bulan ='8';
	  }
	   else if ($bln =='September')
	  {
	  $n_bulan ='9';
	  }
	   else if ($bln =='Oktober')
	  {
	  $n_bulan ='910';
	  }
	   else if ($bln =='November')
	  {
	  $n_bulan ='911';
	  }
	   else 
	  {
	  $n_bulan ='912';
	  } 



$tahun					= date("Y");

	$t_now					= date("d");
				$bln_lantik				= date("m");
				$y_now					= date("Y");


					if ($bln_lantik =='01')
					{
					$bulan_lantik	='Januari';
					}
					elseif ($bln_lantik =='02')
					{
					$bulan_lantik	='Februari';
					}
					elseif ($bln_lantik =='03')
					{
					$bulan_lantik	='Maret';
					}
					elseif ($bln_lantik =='04')
					{
					$bulan_lantik	='April';
					}
					elseif ($bln_lantik =='05')
					{
					$bulan_lantik	='Mei';
					}
					elseif ($bln_lantik =='06')
					{
					$bulan_lantik	='Juni';
					}
					elseif ($bln_lantik =='07')
					{
					$bulan_lantik	='Juli';
					}
					elseif ($bln_lantik =='08')
					{
					$bulan_lantik	='Agustus';
					}
					elseif ($bln_lantik =='09')
					{
					$bulan_lantik	='September';
					}
					elseif ($bln_lantik =='10')
					{
					$bulan_lantik	='Oktober';
					}
					elseif ($bln_lantik =='11')
					{
					$bulan_lantik	='November';
					}
					else
					{
					$bulan_lantik	='Desember';
					}										
																
					$tgl_ajuan = $t_now;
					$tgl_ajuan .= " ";
					$tgl_ajuan .= $bulan_lantik;
					$tgl_ajuan .= " ";
					$tgl_ajuan .= $y_now;


//$a1 					= strtoupper($nama_kantor);
//$a2		 			= strtoupper($nama_akronim);
$sql1					= "insert spk  values('', '$id_admin','$id_distributor','$id_jabatan', '$untuk','$keperluan','$hari','$tgl_awal','$tgl_ajuan','$code','$nomor_spk','','$tahun','$id_klasifikasi' ,'$jenis','$n_bulan' )";
$sql 					= mysqli_query($conn, $sql1);
if ($sql){
header("location:../../Data-SPK.php?pesan=1&isi=Berhasil Menambahkan Surat Perintah Kerja (SPK)");
}else{
header("location:../../Data-SPK.php?pesan=2&isi=Gagal Menambahkan Surat Perintah Kerja (SPK) karena ".mysql_error());
}
?>



