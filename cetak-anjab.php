<?php
header ("Content-Type: application/msword");
header ("Expires: 0");
header ("Cache-Control : must-revalidate, post-check=0, pre-check=0");
header("Content-Disposition: attachment; Filename=SaveAsWordDoc.doc");

include "assets/include/koneksi.php";
//include "asset/include/session_admin.php";
//include("cek_session.php");
$localtime		= date("d-m-Y, g:i a"); 

$id_jabatan = $_GET['id'];

$cek_data 	= "SELECT * FROM jabatan where id_jabatan='$id_jabatan' ";
$query_cek	= mysqli_query($conn, $cek_data);
$data_cek	= mysqli_fetch_array($query_cek);
$jabatan	= $data_cek['jabatan'];

?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- Tell the browser to be responsive to screen width -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- Favicon icon -->
    <?php include "pages/icon-1.php"; ?>
    <?php include "pages/title.php"; ?>
    <!-- Custom CSS -->
  
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->
<style>
 #table {

    border-collapse: collapse;

 
}
#table th {
border: 1px solid black;
padding: 2px;
  
}
#table td {
  border: 1px solid black;
padding: 2px 5px;
}
</style>

</head>

<body>
<div class="row-fluid">
      <div class="span12">
	  	<h1>Informasi Jabatan </h1>
		<br />
		<table width="100%" border="0">
		  <tr>
			<td width="2%" 		align="left" valign="top">1.</td>
			<td width="30%" 	align="left" valign="top">Nama Jabatan </td>
			<td width="2%"	 	align="left" valign="top">:</td>
			<td width="66%" 	align="left" valign="top"><?PHP echo $jabatan;?></td>
		  </tr>
		  <tr>
		    <td 	align="left" valign="top">2.</td>
		    <td 	align="left" valign="top">Kode Jabatan </td>
		    <td	 	align="left" valign="top">:</td>
		    <td 	align="left" valign="top">&nbsp;</td>
	      </tr>
		  <?php
		  	$cek_unitkerja 		= "SELECT * FROM tb_unitkerja where id_jabatan='$id_jabatan' ";
			$query_unitkerja	= mysqli_query($conn, $cek_unitkerja);
			$data_unitkerja		= mysqli_fetch_array($query_unitkerja);
			$utama				= $data_unitkerja['jabatan'];
			$madya				= $data_unitkerja['madya'];
			$pertama			= $data_unitkerja['pertama'];
			$administrator		= $data_unitkerja['administrator'];
			$pengawas			= $data_unitkerja['pengawas'];
			$pelaksana			= $data_unitkerja['pelaksana'];
			$jft				= $data_unitkerja['jft'];
		  ?>
		  <tr>
		    <td 	align="left" valign="top">3.</td>
		    <td 	align="left" valign="top">Unit Kerja </td>
		    <td	 	align="left" valign="top">:</td>
		    <td 	align="left" valign="top">&nbsp;</td>
	      </tr>
		  <tr>
		    <td 		align="left" valign="top">&nbsp;</td>
		    <td 	align="left" valign="top">a. JPT Utama </td>
		    <td	 	align="left" valign="top">:</td>
		    <td 	align="left" valign="top"><?PHP echo $utama;?></td>
	      </tr>
		  <tr>
		    <td 		align="left" valign="top">&nbsp;</td>
		    <td 	align="left" valign="top">b. JPT Madya </td>
		    <td	 	align="left" valign="top">:</td>
		    <td 	align="left" valign="top"><?PHP echo $madya;?></td>
	      </tr>
		  <tr>
		    <td 		align="left" valign="top">&nbsp;</td>
		    <td 	align="left" valign="top">c. JPT Pertama </td>
		    <td	 	align="left" valign="top">:</td>
		    <td 	align="left" valign="top"><?PHP echo $pertama;?></td>
	      </tr>
		  <tr>
		    <td 		align="left" valign="top">&nbsp;</td>
		    <td 	align="left" valign="top">d. Administrator </td>
		    <td	 	align="left" valign="top">:</td>
		    <td 	align="left" valign="top"><?PHP echo $administrator;?></td>
	      </tr>
		  <tr>
		    <td 		align="left" valign="top">&nbsp;</td>
		    <td 	align="left" valign="top">e. Pengawas </td>
		    <td	 	align="left" valign="top">:</td>
		    <td 	align="left" valign="top"><?PHP echo $pengawas;?></td>
	      </tr>
		  <tr>
		    <td 		align="left" valign="top">&nbsp;</td>
		    <td 	align="left" valign="top">f. Pelaksana </td>
		    <td	 	align="left" valign="top">:</td>
		    <td 	align="left" valign="top"><?PHP echo $pelaksana;?></td>
	      </tr>
		  <tr>
		    <td 		align="left" valign="top">&nbsp;</td>
		    <td 	align="left" valign="top">g. Jabatan Fungsional </td>
		    <td	 	align="left" valign="top">:</td>
		    <td 	align="left" valign="top"><?PHP echo $jft;?></td>
	      </tr>
		  <?php
		  	$cek_ikhtisar 		= "SELECT * FROM ikhtisar where id_jabatan='$id_jabatan' ";
			$query_ikhtisar		= mysqli_query($conn, $cek_ikhtisar);
			$data_ikhtisar		= mysqli_fetch_array($query_ikhtisar);
			$ikhtisar			= $data_ikhtisar['ikhtisar'];
		  ?>
		  <tr>
		    <td 		align="left" valign="top">4.</td>
		    <td 	align="left" valign="top">Ikhtisar Jabatan </td>
		    <td	 	align="left" valign="top">:</td>
		    <td 	align="left" valign="top"><?PHP echo $ikhtisar;?></td>
	      </tr>
		  <tr>
		    <td 		align="left" valign="top">5.</td>
		    <td 	align="left" valign="top">Kualifikasi Pendidikan </td>
		    <td	 	align="left" valign="top">:</td>
		    <td 	align="left" valign="top">&nbsp;</td>
	      </tr>
		  <?php
		  	$cek_pendidikan		= "SELECT * FROM pendidikan where id_jabatan='$id_jabatan' ";
			$query_pendidikan	= mysqli_query($conn, $cek_pendidikan);
			$data_pendidikan	= mysqli_fetch_array($query_pendidikan);
			$pendidikan			= $data_pendidikan['pendidikan'];
		  ?>
		  <tr>
		    <td 		align="left" valign="top">&nbsp;</td>
		    <td 	align="left" valign="top">a. Pendidikan Formal </td>
		    <td	 	align="left" valign="top">:</td>
		    <td 	align="left" valign="top"><?PHP echo $pendidikan;?></td>
	      </tr>
		  <tr>
		    <td 		align="left" valign="top">&nbsp;</td>
		    <td 	align="left" valign="top">b. Pendidikan dan Pelatihan </td>
		    <td	 	align="left" valign="top">:</td>
		    <td 	align="left" valign="top">&nbsp;</td>
	      </tr>
		  <tr>
		    <td 	align="left" valign="top">&nbsp;</td>
		    <td 	align="left" valign="top">1) Perjenjangan </td>
		    <td	 	align="left" valign="top">:</td>
		    <td 	align="left" valign="top">
			 <ol type="1">
			<?php
		  	$cek_diklat		= "SELECT * FROM diklat_perjenjangan where id_jabatan='$id_jabatan' ";
			$query_diklat	= mysqli_query($conn, $cek_diklat);
			while($data_diklat	= mysqli_fetch_array($query_diklat))
					{			
					$diklat			= $data_diklat['diklat'];
					?>
					
					<li>
					<?PHP echo $diklat;?>
					</li>
					
					<?php
					}
			
		  			?>
			  </ol>
			
			</td>
	      </tr>
		  <tr>
		    <td 		align="left" valign="top">&nbsp;</td>
		    <td 	align="left" valign="top">2) Teknis </td>
		    <td	 	align="left" valign="top">:</td>
		    <td 	align="left" valign="top"><ol type="1"><?php
		  	$cek_diklat1		= "SELECT * FROM diklat_teknis where id_jabatan='$id_jabatan' ";
			$query_diklat1		= mysqli_query($conn, $cek_diklat1);
			while($data_diklat1	= mysqli_fetch_array($query_diklat1))
					{			
					$diklat1			= $data_diklat1['diklat_'];
					?>
					
					<li>
					<?PHP echo $diklat1;?>
					</li>
					
					<?php
					}
			
		  			?></ol>
			</td>
	      </tr>
		</table>
		
		<table width="100%" border="0">
		  <tr>
			<td width="2%" 		align="left" valign="top">6.</td>
			<td width="30%" 	align="left" valign="top">Tugas Pokok</td>
			<td width="2%"	 	align="left" valign="top">:</td>
			<td width="66%" 	align="left" valign="top"></td>
		  </tr>
		</table>
		<!-- Tabel Tugas Pokok -->
		<table width="100%"  id="table">
  <thead>
    <th width="5%" align="center" valign="top">No.</th>
    <th width="30%" align="left" valign="top">Uraian Tugas </th>
    <th width="10%" align="center" valign="top">Hasil Kerja </th>
    <th width="15%" align="center" valign="top">Jumlah Beban Kerja <br />(1 Tahun) </th>
    <th width="15%" align="center" valign="top">Waktu Penyelesaian (Menit) </th>
    <th width="15%" align="center" valign="top">Waktu Efektif <br />(1 Tahun) </th>
    <th width="10%" align="center" valign="top">Kebutuhan Pegawai </th>
  </thead>
  <?php
 			$i 					= 1;
		  	$cek_tupok			= "SELECT * FROM tugas_pokok where id_jabatan='$id_jabatan' ";
			$query_tupok		= mysqli_query($conn, $cek_tupok);
			
			$sql_00001			= "select SUM(kebutuhan) as jumlah_total from tugas_pokok where id_jabatan='$id_jabatan' ";
			$sql_kk001 			= mysqli_query($conn, $sql_00001);
			$data_p1 			= mysqli_fetch_array($sql_kk001);
		    $jumlah_total	 	= $data_p1['0'];
                      $hasil_bulat    = round($jumlah_total,4);
			
			
			
			while($data_tupok	= mysqli_fetch_array($query_tupok))
					{	
					$uraian			= $data_tupok['uraian'];
					$satuan			= $data_tupok['satuan'];
					$beban			= $data_tupok['beban'];
					$waktu			= $data_tupok['waktu'];
					$kebutuhan		= $data_tupok['kebutuhan'];	
  ?>

  <tr>
    <td align="center" valign="top"><?PHP echo $i++;?></td>
    <td align="left" valign="top"><?PHP echo $uraian;?></td>
    <td align="center" valign="top"><?PHP echo $satuan;?></td>
    <td align="center" valign="top"><?PHP echo $beban;?></td>
    <td align="center" valign="top"><?PHP echo $waktu;?></td>
    <td align="center" valign="top">75.000</td>
    <td align="center" valign="top"><?PHP echo $kebutuhan;?></td>
  </tr>
  
  <?php
   }
  ?>
  <tr>
    <td colspan="6" align="center" valign="top">Kebutuhan Pegawai </td>
    <td align="center" valign="top"><?PHP echo $hasil_bulat;?></td>
  </tr>
</table>
<!-- end Tugas Pokok -->
<table width="100%" border="0">
		  <tr>
			<td width="2%" 		align="left" valign="top">7.</td>
			<td width="30%" 	align="left" valign="top">Hasil Kerja </td>
			<td width="2%"	 	align="left" valign="top">:</td>
			<td width="66%" 	align="left" valign="top"></td>
		  </tr>
		</table>
		<!-- Tabel Hasil Kerja -->
		<table width="100%"  id="table">
  <thead>
    <th width="5%" align="center" valign="top">No.</th>
    <th width="50%" align="left" valign="top">Hasil Kerja </th>
    <th width="45%" align="center" valign="top">Satuan</th>
    </thead>
	 <?php
 			$no 					= 1;
			$cek_tupok1			= "SELECT * FROM tugas_pokok where id_jabatan='$id_jabatan' ";
			$query_tupok1		= mysqli_query($conn, $cek_tupok1);
			while($data_tupok1	= mysqli_fetch_array($query_tupok1))
					{	
					$hasil			= $data_tupok1['hasil'];
					$satuan			= $data_tupok1['satuan'];
					
  	?>
  <tr>
    <td align="center" valign="top"><?PHP echo $no++;?></td>
    <td align="left" valign="top"><?PHP echo $hasil;?></td>
    <td align="left" valign="top"><?PHP echo $satuan;?></td>
  </tr>
   <?php
   }
  ?>
</table>
<!-- end Hasil Kerja -->
<table width="100%" border="0">
		  <tr>
			<td width="2%" 		align="left" valign="top">8.</td>
			<td width="30%" 	align="left" valign="top">Bahan Kerja </td>
			<td width="2%"	 	align="left" valign="top">:</td>
			<td width="66%" 	align="left" valign="top"></td>
		  </tr>
		</table>
		<!-- Tabel Hasil Kerja -->
		<table width="100%"  id="table">
  <thead>
    <th width="5%" align="center" valign="top">No.</th>
    <th width="50%" align="left" valign="top">Bahan Kerja </th>
    <th width="45%" align="center" valign="top">Digunakan dalam Tugas </th>
    </thead>
	<?php
 			$noi 					= 1;
			$cek_tupok2			= "SELECT * FROM tugas_pokok where id_jabatan='$id_jabatan' ";
			$query_tupok2		= mysqli_query($conn, $cek_tupok2);
			while($data_tupok2	= mysqli_fetch_array($query_tupok2))
					{	
					$bahan			= $data_tupok2['bahan'];
					$digunakan_1			= $data_tupok2['digunakan_1'];
					
  	?>
  <tr>
    <td align="center" valign="top"><?PHP echo $noi++;?></td>
    <td align="left" valign="top"><?PHP echo $bahan;?></td>
    <td align="left" valign="top"><?PHP echo $digunakan_1;?></td>
  </tr>
   <?php
   }
  ?>
</table>
<!-- end Hasil Kerja -->

<table width="100%" border="0">
		  <tr>
			<td width="2%" 		align="left" valign="top">9.</td>
			<td width="30%" 	align="left" valign="top">Perangkat Kerja </td>
			<td width="2%"	 	align="left" valign="top">:</td>
			<td width="66%" 	align="left" valign="top"></td>
		  </tr>
		</table>
		<!-- Tabel Hasil Kerja -->
		<table width="100%"  id="table">
  <thead>
    <th width="5%" align="center" valign="top">No.</th>
    <th width="50%" align="left" valign="top">Perangkat Kerja </th>
    <th width="45%" align="left" valign="top">Digunakan dalam Tugas </th>
    </thead>
	<?php
 			$no_ 					= 1;
			$cek_tupok3			= "SELECT * FROM tugas_pokok where id_jabatan='$id_jabatan' ";
			$query_tupok3		= mysqli_query($conn, $cek_tupok3);
			while($data_tupok3	= mysqli_fetch_array($query_tupok3))
					{	
					$perangkat			= $data_tupok3['perangkat'];
					$digunakan_2		= $data_tupok3['digunakan_2'];
					
  	?>
  <tr>
    <td align="center" valign="top"><?PHP echo $no_++;?></td>
    <td align="left" valign="top"><?PHP echo $perangkat;?></td>
    <td align="left" valign="top"><?PHP echo $digunakan_1;?></td>
  </tr>
   <?php
   }
  ?>
</table>
<!-- end Hasil Kerja -->
<table width="100%" border="0">
		  <tr>
			<td width="2%" 		align="left" valign="top">10.</td>
			<td width="30%" 	align="left" valign="top">Tanggung Jawab </td>
			<td width="2%"	 	align="left" valign="top">:</td>
			<td width="66%" 	align="left" valign="top">
			<ol type="1">
			<?php
		  	$cek_tanggung			= "SELECT * FROM tanggungjawab where id_jabatan='$id_jabatan' ";
			$query_tanggung			= mysqli_query($conn, $cek_tanggung);
			while($data_tanggung	= mysqli_fetch_array($query_tanggung))
					{			
					$tanggungjawab			= $data_tanggung['tanggungjawab'];
					?>
					
					<li>
					<?PHP echo $tanggungjawab;?>
					</li>
					
					<?php
					}
			
		  			?>
			</ol>
			</td>
		  </tr>
		</table>
<table width="100%" border="0">
		  <tr>
			<td width="2%" 		align="left" valign="top">11.</td>
			<td width="30%" 	align="left" valign="top">Wewenang</td>
			<td width="2%"	 	align="left" valign="top">:</td>
			<td width="66%" 	align="left" valign="top">
			<ol type="1">
			<?php
		  	$cek_tanggung1			= "SELECT * FROM  wewenang where id_jabatan='$id_jabatan' ";
			$query_tanggung1		= mysqli_query($conn, $cek_tanggung1);
			while($data_tanggung1	= mysqli_fetch_array($query_tanggung1))
					{			
					$wewenang			= $data_tanggung1['wewenang'];
					?>
					<li>
					<?PHP echo $wewenang;?>
					</li>
					<?php
					}
		  			?>
			</ol>
			</td>
		  </tr>
		</table>
		
<table width="100%" border="0">
		  <tr>
			<td width="2%" 		align="left" valign="top">12.</td>
			<td width="30%" 	align="left" valign="top">Korelasi Jabatan </td>
			<td width="2%"	 	align="left" valign="top">:</td>
			<td width="66%" 	align="left" valign="top"></td>
		  </tr>
		  
		</table>
		<!-- Tabel Korelasi Jabatan -->
		<table width="100%"  id="table">
  <tr>
    <th width="5%" align="center" valign="top">No.</th>
    <th width="35%" align="left" valign="top">Jabatan</th>
    <th width="30%" align="center" valign="top">Unit Kerja / Instansi </th>
    <th width="30%" align="center" valign="top">Dalam Hal </th>
    </tr>
	<?php
 			$nn 						= 1;
			$cek_korelasi			= "SELECT * FROM korelasi where id_jabatan='$id_jabatan' ";
			$query_korelasi			= mysqli_query($conn, $cek_korelasi);
			while($data_korelasi	= mysqli_fetch_array($query_korelasi))
					{	
					$jabatan_				= $data_korelasi['jabatan_'];
					$unitkerja				= $data_korelasi['unitkerja'];
					$hal					= $data_korelasi['hal'];
					
  	?>
	<tr>
    <td align="center" valign="top"><?PHP echo $nn++;?></td>
    <td align="left" valign="top"><?PHP echo $jabatan_;?></td>
    <td align="left" valign="top"><?PHP echo $unitkerja;?></td>
	<td align="left" valign="top"><?PHP echo $hal;?></td>

 	</tr>
  <?php
					}
		  			?>
</table>
<!-- end Korelasi Jabatan -->	

<table width="100%" border="0">
		  <tr>
			<td width="2%" 		align="left" valign="top">13.</td>
			<td width="30%" 	align="left" valign="top">Kondisi Lingkungan Kerja </td>
			<td width="2%"	 	align="left" valign="top">:</td>
			<td width="66%" 	align="left" valign="top"></td>
		  </tr>
		</table>
		<!-- Tabel Korelasi Jabatan -->
		 <?php
		  	$cek_lk		 		= "SELECT * FROM lingkungan_kerja where id_jabatan='$id_jabatan' ";
			$query_lk			= mysqli_query($conn, $cek_lk);
			$data_lk			= mysqli_fetch_array($query_lk);
			$tempat				= $data_lk['tempat'];
			$suhu				= $data_lk['suhu'];
			$udara				= $data_lk['udara'];
			$ruangan			= $data_lk['ruangan'];
			$letak				= $data_lk['letak'];
			$penerangan			= $data_lk['penerangan'];
			$suara				= $data_lk['suara'];
			$keadaan			= $data_lk['keadaan'];
			$getaran			= $data_lk['getaran'];
		  ?>
		<table width="100%"  id="table">
  <tr>
    <th width="5%" align="center" valign="top">No.</th>
    <th width="50%" align="left" valign="top">Aspek</th>
    <th width="45%" align="center" valign="top">Keterangan</th>
    </tr>
	<tr>
    <td align="center" valign="top">a.</td>
    <td align="left" valign="top">Tempat Kerja </td>
    <td align="center" valign="top"><?PHP echo $tempat;?></td>
  </tr>
	<tr>
	  <td align="center" valign="top">b.</td>
	  <td align="left" valign="top">Suhu</td>
	  <td align="center" valign="top"><?PHP echo $suhu;?></td>
	  </tr>
	<tr>
	  <td align="center" valign="top">c.</td>
	  <td align="left" valign="top">Udara</td>
	  <td align="center" valign="top"><?PHP echo $udara;?></td>
	  </tr>
	<tr>
	  <td align="center" valign="top">d.</td>
	  <td align="left" valign="top">Keadaan Ruangan </td>
	  <td align="center" valign="top"><?PHP echo $ruangan;?></td>
	  </tr>
	<tr>
	  <td align="center" valign="top">e.</td>
	  <td align="left" valign="top">Letak</td>
	  <td align="center" valign="top"><?PHP echo $letak;?></td>
	  </tr>
	<tr>
	  <td align="center" valign="top">f.</td>
	  <td align="left" valign="top">Penerangan</td>
	  <td align="center" valign="top"><?PHP echo $penerangan;?></td>
	  </tr>
	<tr>
	  <td align="center" valign="top">g.</td>
	  <td align="left" valign="top">Suara</td>
	  <td align="center" valign="top"><?PHP echo $suara;?></td>
	  </tr>
	<tr>
	  <td align="center" valign="top">h.</td>
	  <td align="left" valign="top">Keadaan tempat kerja </td>
	  <td align="center" valign="top"><?PHP echo $keadaan;?></td>
	  </tr>
	<tr>
	  <td align="center" valign="top">i.</td>
	  <td align="left" valign="top">Getaran</td>
	  <td align="center" valign="top"><?PHP echo $getaran;?></td>
	  </tr>
</table>
<!-- end Korelasi Jabatan -->	
<table width="100%" border="0">
		  <tr>
			<td width="2%" 		align="left" valign="top">14.</td>
			<td width="30%" 	align="left" valign="top">Risiko Kerja </td>
			<td width="2%"	 	align="left" valign="top">:</td>
			<td width="66%" 	align="left" valign="top"></td>
		  </tr>
		</table>
		<!-- Tabel Korelasi Jabatan -->
		<table width="100%"  id="table">
  	<thead>
    <th width="5%" align="center" valign="top">No.</th>
    <th width="50%" align="left" valign="top">Bahaya Fisik/Mental </th>
    <th width="45%" align="center" valign="top">Penyebab</th>
    </thead>
	 <?php
 			$nnn 					= 1;
			$cek_tupok11			= "SELECT * FROM risiko where id_jabatan='$id_jabatan' ";
			$query_tupok11		= mysqli_query($conn, $cek_tupok11);
			while($data_tupok11	= mysqli_fetch_array($query_tupok11))
					{	
					$bahaya			= $data_tupok11['bahaya'];
					$penyebab		= $data_tupok11['penyebab'];
					
  	?>
  <tr>
    <td align="center" valign="top"><?PHP echo $nnn++;?></td>
    <td align="left" valign="top"><?PHP echo $bahaya;?></td>
    <td align="left" valign="top"><?PHP echo $penyebab;?></td>
  </tr>
   <?php
   }
  ?>
  </table>
  <!-- end tabel Resiko Bahaya -->
<table width="100%" border="0">
		  <tr>
			<td width="2%" 		align="left" valign="top">15.</td>
			<td width="30%" 	align="left" valign="top">Syarat Jabatan </td>
			<td width="2%"	 	align="left" valign="top">:</td>
			<td width="66%" 	align="left" valign="top"></td>
		  </tr>
		  <tr>
		    <td 	align="left" valign="top">&nbsp;</td>
		    <td 	align="left" valign="top">a. Keterampilan Kerja </td>
		    <td	 	align="left" valign="top">:</td>
		    <td 	align="left" valign="top">
			<ol type="1">
			<?php
		  	$cek_syarat1			= "SELECT * FROM keterampilan where id_jabatan='$id_jabatan' ";
			$query_syarat1			= mysqli_query($conn, $cek_syarat1);
			while($data_syarat1		= mysqli_fetch_array($query_syarat1))
					{			
					$keterampilan			= $data_syarat1['keterampilan'];
					$tambahan_				= $data_syarat1['tambahan_'];
					?>
					
					<li>
					<?PHP echo $tanggungjawab;?> <?PHP echo $tambahan_;?>					</li>
					
					<?php
					}
			
		  			?>
			</ol>			</td>
      </tr>
		  <tr>
		    <td 		align="left" valign="top">&nbsp;</td>
		    <td 	align="left" valign="top">b. Bakat Kerja </td>
		    <td	 	align="left" valign="top">:</td>
		    <td 	align="left" valign="top">
			<ol type="1">
			<?php
		  	$cek_syarat11			= "SELECT * FROM bakat where id_jabatan='$id_jabatan' ";
			$query_syarat11			= mysqli_query($conn, $cek_syarat11);
			while($data_syarat11	= mysqli_fetch_array($query_syarat11))
					{			
					$bakat_			= $data_syarat11['bakat_'];
					?>
					
					<li>
					<?PHP echo $bakat_;?>					</li>
					
					<?php
					}
			
		  			?>
			</ol>			</td>
      </tr>
		  <tr>
		    <td 		align="left" valign="top">&nbsp;</td>
		    <td 	align="left" valign="top">c. Temperamen </td>
		    <td	 	align="left" valign="top">:</td>
		    <td 	align="left" valign="top">
			<ol type="1">
			<?php
		  	$cek_syarat111			= "SELECT * FROM temperamen where id_jabatan='$id_jabatan' ";
			$query_syarat111		= mysqli_query($conn, $cek_syarat111);
			while($data_syarat111	= mysqli_fetch_array($query_syarat111))
					{			
					$temperamen		= $data_syarat111['temperamen'];
					?>
					
					<li>
					<?PHP echo $temperamen;?>					</li>
					
					<?php
					}
			
		  			?>
			</ol>			</td>
      </tr>
		  <tr>
		    <td 		align="left" valign="top">&nbsp;</td>
		    <td 	align="left" valign="top">d. Minat Kerja </td>
		    <td	 	align="left" valign="top">:</td>
		    <td 	align="left" valign="top">
			<ol type="1">
			<?php
		  	$cek_syarat1111			= "SELECT * FROM minat where id_jabatan='$id_jabatan' ";
			$query_syarat1111		= mysqli_query($conn, $cek_syarat1111);
			while($data_syarat1111	= mysqli_fetch_array($query_syarat1111))
					{			
					$minat		= $data_syarat1111['minat'];
					?>
					
					<li>
					<?PHP echo $minat;?>					</li>
					
					<?php
					}
			
		  			?>
			</ol>			</td>
      </tr>
		  <tr>
		    <td 		align="left" valign="top">&nbsp;</td>
		    <td 	align="left" valign="top">e. Upaya Fisik </td>
		    <td	 	align="left" valign="top">:</td>
		    <td 	align="left" valign="top">
			<ol type="1">
			  <?php
		  	$cek_syarat11111			= "SELECT * FROM upaya_fisik where id_jabatan='$id_jabatan' ";
			$query_syarat11111			= mysqli_query($conn, $cek_syarat11111);
			while($data_syarat11111		= mysqli_fetch_array($query_syarat11111))
					{			
					$upaya_fisik		= $data_syarat11111['upaya'];
					?>
			  <li>
			  <?PHP echo $upaya_fisik;?>					</li>
					
					<?php
					}
			
		  			?>
			</ol>			</td>
      </tr>
		  <tr>
		    <td 		align="left" valign="top">&nbsp;</td>
		    <td 	align="left" valign="top">f. Kondisi Fisik </td>
		    <td	 	align="left" valign="top">:</td>
		    <td 	align="left" valign="top">&nbsp;</td>
		  </tr>
		  <?php
		  	$cek_lk1		 	= "SELECT * FROM kondisi_fisik where id_jabatan='$id_jabatan' ";
			$query_lk1			= mysqli_query($conn, $cek_lk1);
			$data_lk1			= mysqli_fetch_array($query_lk1);
			$jk					= $data_lk1['jk'];
			$umur				= $data_lk1['umur'];
			$tinngi				= $data_lk1['tinngi'];
			$berat				= $data_lk1['berat'];
			$postur				= $data_lk1['postur'];
			$penampilan			= $data_lk1['penampilan'];
		
		  ?>
		   <tr>
		    <td 		align="left" valign="top">&nbsp;</td>
		    <td 	align="left" valign="top">1) Jenis Kelamin </td>
		    <td	 	align="left" valign="top">:</td>
		    <td 	align="left" valign="top"><?PHP echo $jk;?></td>
		  </tr>
		   <tr>
		    <td 		align="left" valign="top">&nbsp;</td>
		    <td 	align="left" valign="top">2) Umur </td>
		    <td	 	align="left" valign="top">:</td>
		    <td 	align="left" valign="top"><?PHP echo $umur;?></td>
		  </tr>
		   <tr>
		    <td 		align="left" valign="top">&nbsp;</td>
		    <td 	align="left" valign="top">3) Tinggi Badan </td>
		    <td	 	align="left" valign="top">:</td>
		    <td 	align="left" valign="top"><?PHP echo $tinngi;?></td>
		  </tr>
		   <tr>
		    <td 		align="left" valign="top">&nbsp;</td>
		    <td 	align="left" valign="top">4) Berat badan </td>
		    <td	 	align="left" valign="top">:</td>
		    <td 	align="left" valign="top"><?PHP echo $berat;?></td>
		  </tr>
		   <tr>
		    <td 		align="left" valign="top">&nbsp;</td>
		    <td 	align="left" valign="top">5) Postur badan </td>
		    <td	 	align="left" valign="top">:</td>
		    <td 	align="left" valign="top"><?PHP echo $postur;?></td>
		  </tr>
		   <tr>
		    <td 		align="left" valign="top">&nbsp;</td>
		    <td 	align="left" valign="top">6) Penampilan </td>
		    <td	 	align="left" valign="top">:</td>
		    <td 	align="left" valign="top"><?PHP echo $penampilan;?></td>
		  </tr>
		  <tr>
		    <td 		align="left" valign="top">&nbsp;</td>
		    <td 	align="left" valign="top">g. Fungsi Pekerjaan </td>
		    <td	 	align="left" valign="top">:</td>
		    <td 	align="left" valign="top"></td>
      </tr>
	    <?php
		  	$cek_lk12		 	= "SELECT * FROM fungsi_pekerjaan where id_jabatan='$id_jabatan' ";
			$query_lk12			= mysqli_query($conn, $cek_lk12);
			$data_lk12			= mysqli_fetch_array($query_lk12);
			$data_00			= $data_lk12['data'];
			$orang				= $data_lk12['orang'];
			$benda				= $data_lk12['benda'];
	
		  ?>
	   <tr>
		    <td 		align="left" valign="top">&nbsp;</td>
		    <td 	align="left" valign="top">1) Data </td>
		    <td	 	align="left" valign="top">:</td>
		    <td 	align="left" valign="top"><?PHP echo $data_00;?></td>
      </tr>
	
	   <tr>
		    <td 		align="left" valign="top">&nbsp;</td>
		    <td 	align="left" valign="top">2) Orang </td>
		    <td	 	align="left" valign="top">:</td>
		    <td 	align="left" valign="top"><?PHP echo $orang;?></td>
      </tr>
	   <tr>
		    <td 		align="left" valign="top">&nbsp;</td>
		    <td 	align="left" valign="top">3) Benda </td>
		    <td	 	align="left" valign="top">:</td>
		    <td 	align="left" valign="top"><?PHP echo $benda;?></td>
      </tr>
	  <?php
		  	$cek_lk123		 	= "SELECT * FROM kelas_jabatan where id_jabatan='$id_jabatan' ";
			$query_lk123			= mysqli_query($conn, $cek_lk123);
			$data_lk123			= mysqli_fetch_array($query_lk123);
			$kelas			= $data_lk123['kelas'];
			$prestasi				= $data_lk123['prestasi'];
	
		  ?>
		  <tr>
		    <td 		align="left" valign="top">16.</td>
		    <td 	align="left" valign="top">Prestasi kerja yang diharapkan </td>
		    <td	 	align="left" valign="top">:</td>
		    <td 	align="left" valign="top"><?PHP echo $prestasi;?></td>
      </tr>
		  <tr>
		    <td 		align="left" valign="top">17.</td>
		    <td 	align="left" valign="top">Kelas jabatan </td>
		    <td	 	align="left" valign="top">:</td>
		    <td 	align="left" valign="top"><?PHP echo $kelas;?></td>
      </tr>
		</table>
		
	

<br /><br />
Dicetak melalui Sistem Administrasi Umum Kepegawaian (SAMPAi) pada : <?PHP echo $localtime;?>
	  </div>
</div>





</body>
</html>
