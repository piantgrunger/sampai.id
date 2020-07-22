<?php
header ("Content-Type: application/msword");
header ("Expires: 0");
header ("Cache-Control : must-revalidate, post-check=0, pre-check=0");
header("Content-Disposition: attachment; Filename=SaveAsWordDoc.doc");

  	include "assets/include/koneksi.php";
	//include "asset/include/session_admin.php";
//include("cek_session.php");
$localtime		= date("d-m-Y, g:i a"); 
 $bulan			= $_POST['bulan'];
 $tahun			= $_POST['tahun'];

	 if ($bulan ==1)
	  {
	  $n_bulan ='JANUARI';
	  }
	  else if ($bulan ==2)
	  {
	  $n_bulan ='FEBRUARI';
	  }
	   else if ($bulan ==3)
	  {
	  $n_bulan ='MARET';
	  }
	   else if ($bulan ==4)
	  {
	  $n_bulan ='APRIL';
	  }
	   else if ($bulan ==5)
	  {
	  $n_bulan ='MEI';
	  }
	   else if ($bulan ==6)
	  {
	  $n_bulan ='JUNI';
	  }
	   else if ($bulan ==7)
	  {
	  $n_bulan ='JULI';
	  }
	   else if ($bulan ==8)
	  {
	  $n_bulan ='AGUSTUS';
	  }
	   else if ($bulan ==9)
	  {
	  $n_bulan ='SEPTEMBER';
	  }
	   else if ($bulan ==910)
	  {
	  $n_bulan ='OKTOBER';
	  }
	   else if ($bulan ==911)
	  {
	  $n_bulan ='NOVEMBER';
	  }
	   else 
	  {
	  $n_bulan ='DESEMBER';
	  }

?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
</head>

<body>
<div class="row-fluid">
      <div class="span12">
	  <h1> LAPORAN  BUKU TAMU
	  <BR />
	  PADA BADAN KEPEGAWAIAN, PENDIDIKAN DAN PELATIHAN KOTA BANJARBARU
	   <BR />
	   BULAN <?php echo $n_bulan; ?> TAHUN  <?php echo $tahun; ?>
	  </h1>
	  <?php
	 
	  $no 				= 1;
	  $query_esselon 	= "select * from buku_tamu where bulan = '$bulan' and tahun = '$tahun' ORDER BY id_tamu ";
	  $sql				= mysqli_query ($conn,$query_esselon);
	  
	 
	  ?>
	  	<table width="100%" border="1">
  <tr>
    <td width="5%">NO</td>
    <td width="10%">TANGGAL</td>
    <td width="30%">NAMA / INSTANSI </td>
    <td width="30%">KEPERLUAN</td>
    <td width="15%">PETUGAS</td>
    <td width="10%">KODE</td>
  </tr>
  <?php
  
  while($data_bro =  mysqli_fetch_array($sql))
  {
  
	$nama			= $data_bro['nama'];
	$instansi		= $data_bro['instansi'];
	$keperluan		= $data_bro['keperluan'];		
	$tanggal		= $data_bro['tanggal'];
	$id_petugas		= $data_bro['id_petugas'];
	$unix			= $data_bro['unix'];

 
											$sql_bro11 			= "select * from petugas where id_petugas= $id_petugas ";
											$sql_0				= mysqli_query ($conn,$sql_bro11);
											$data_bro1			= mysqli_fetch_array($sql_0);
											$nama_petugas		= $data_bro1['nama'];
											
											
											?>
  <tr>
    <td><?php echo $no++;?></td>
    <td><strong><?php echo $tanggal;?></strong></td>
    <td><strong><?php echo $nama;?></strong><br /> <?php echo $instansi;?></td>
    <td><?php echo $keperluan;?></td>
    <td><?php echo $nama_petugas;?></td>
    <td><?php echo $unix;?></td>
  </tr>
  <?php
   }
  ?>
</table>

DICETAK PADA : <?php echo $localtime;?>
	  </div>
</div>





</body>
</html>
