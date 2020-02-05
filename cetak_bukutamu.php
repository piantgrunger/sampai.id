<?php
header ("Content-Type: application/msword");
header ("Expires: 0");
header ("Cache-Control : must-revalidate, post-check=0, pre-check=0");
header("Content-Disposition: attachment; Filename=SaveAsWordDoc.doc");

include "assets/include/koneksi.php";
	//include "asset/include/session_admin.php";
//include("cek_session.php");
$localtime		= date("d-m-Y, g:i a"); 
$yearsnow	= date("Y");


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
	   TAHUN  <?php echo $yearsnow; ?>
	  </h1>
	  <?php
	  $no 				= 1;
	  $query_esselon 	= "select * from buku_tamu where tanggal LIKE '%$yearsnow%' ";
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

DICETAK PADA : <?PHP echo $localtime;?>
	  </div>
</div>





</body>
</html>
