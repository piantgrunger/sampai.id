<?php
  	include "assets/include/koneksi.php";
	require_once("dompdf/dompdf_config.inc.php");
	ob_start();
	
	$id_spk = $_GET['id'];
?>
<?php include "phpqrcode/qrlib.php"; ?>
<?php
					$jml_data1_ 				= "SELECT * FROM spk where id_spk='$id_spk' ";
					$query_						= mysqli_query($conn, $jml_data1_);
		
        			$data_						= mysqli_fetch_array($query_);
					
					$id_distributor				= $data_['id_distributor'];
					$id_pejabat					= $data_['id_pejabat'];
					$untuk						= $data_['untuk'];
					$keperluan					= $data_['keperluan'];
					$tgl_serah					= $data_['tgl_serah'];
					$tgl_buat					= $data_['tgl_buat'];
					$kd_unik					= $data_['kd_unik'];
					$nomor_spk					= $data_['nomor_spk'];
					$id_klasifikasi				= $data_['id_klasifikasi'];
					$hari						= $data_['hari'];
					$nomor_ba					= $data_['nomor_ba'];
					
					
					$dataawal				=  $tgl_serah;									
					$pisah					=  explode(" ",$dataawal);											
																
					$tgl_lantik				= $pisah['0'];
					$bln_lantik				= $pisah['1'];
					$thn_lantik				= $pisah['2'];
					
					
					$query_distributor 	= "SELECT * FROM distributor where id_distributor='$id_distributor' ";
					$mysql_distributor	= mysqli_query($conn, $query_distributor);
					$data_dis			= mysqli_fetch_array($mysql_distributor);
					$nama_dis			= $data_dis['distributor'];
					$nama_pemilik			= $data_dis['nama_pemilik'];
					$alamat_dis			= $data_dis['alamat'];
					
					$query_surat	 	= "SELECT * FROM  tbl_klasifikasi where id_klasifikasi='$id_klasifikasi' ";
					$mysql_surat		= mysqli_query($conn, $query_surat);
					$data_surat			= mysqli_fetch_array($mysql_surat);
					$klasifikasi_surat	= $data_surat['kode'];
					
					
					
					$sql_0011	= "select * from pegawai where id_jabatan='$id_pejabat'";
					$sql_kk11 	= mysqli_query($conn, $sql_0011);
					$data_kk11 	= mysqli_fetch_array($sql_kk11);
					$gelar_dpn	= $data_kk11['gelar_dpn'];
					$nama		= $data_kk11['nama'];
					$gelar_blk	= $data_kk11['gelar_blk'];
					$nip		= $data_kk11['nip'];
					$tempat_lahir	= $data_kk11['tempat_lahir'];
					$tgl_lahir	= $data_kk11['tgl_lahir'];
					$id_gol		= $data_kk11['golongan'];
					$tmt		= $data_kk11['tmt'];
					$jabatan	= $data_kk11['jabatan'];
					$eselon		= $data_kk11['eselon'];
					$status_p	= $data_kk11['status'];
					$unit_kerja	= $data_kk11['unit_kerja'];
					
					$sql_00111	= "select * from tb_golongan where id_gol='$id_gol'";
					$sql_kk111 	= mysqli_query($conn, $sql_00111);
					$data_kk111	= mysqli_fetch_array($sql_kk111);
					$golongan	= $data_kk111['golongan'];
					
					
												  if ($gelar_blk =='')
												  {
												  $namalengkap	= $gelar_dpn;
												  $namalengkap	.= ' ';
												  $namalengkap	.= $nama;
												 
												  }
												  else
												  {
												  $namalengkap	= $gelar_dpn;
												  $namalengkap	.= ' ';
												  $namalengkap	.= $nama;
												  $namalengkap	.= ', ';
												  $namalengkap	.= $gelar_blk;
												  }
												  $aaa		= strtolower($jabatan);
												  $a2 		= ucwords($aaa);

												  
												  
												  ?>
												
					
	<?php
	if ($jabatan =='KEPALA SUB BAGIAN UMUM DAN KEPEGAWAIAN')
	{
	$singkat ='SET';
	}
	else if ($jabatan =='KEPALA SUB BAGIAN PERENCANAAN DAN KEUANGAN')
	{
	$singkat ='SET';
	}
	else if ($jabatan =='KEPALA SUB BIDANG DIKLAT DAN PENGEMBANGAN KOMPETENSI APARATUR')
	{
	$singkat ='SIBANG';
	}
	else if ($jabatan =='KEPALA SUB BIDANG PENILAIAN KINERJA DAN PENGEMBANGAN KARIR APARATUR')
	{
	$singkat ='SIBANG';
	}
	else if ($jabatan =='KEPALA SUB BIDANG MUTASI DAN KEPANGKATAN APARATUR')
	{
	$singkat ='SIBANG';
	}
	else 
	{
	$singkat ='RENBIN';
	}
	
	
												$no_srt	= $klasifikasi_surat;
												  $no_srt	.= '/';
												  $no_srt	.= $nomor_ba;
												  $no_srt	.= '/';
												  $no_srt	.= $singkat;
												  $no_srt	.= '-BKPP';
	?>


						
						
						
							
							
						
							
							
							
							
							
							
<?php
function penyebut($nilai) {
		$nilai = abs($nilai);
		$huruf = array("", "satu", "dua", "tiga", "empat", "lima", "enam", "tujuh", "delapan", "sembilan", "sepuluh", "sebelas");
		$temp = "";
		if ($nilai < 12) {
			$temp = " ". $huruf[$nilai];
		} else if ($nilai <20) {
			$temp = penyebut($nilai - 10). " belas";
		} else if ($nilai < 100) {
			$temp = penyebut($nilai/10)." puluh". penyebut($nilai % 10);
		} else if ($nilai < 200) {
			$temp = " seratus" . penyebut($nilai - 100);
		} else if ($nilai < 1000) {
			$temp = penyebut($nilai/100) . " ratus" . penyebut($nilai % 100);
		} else if ($nilai < 2000) {
			$temp = " seribu" . penyebut($nilai - 1000);
		} else if ($nilai < 1000000) {
			$temp = penyebut($nilai/1000) . " ribu" . penyebut($nilai % 1000);
		} else if ($nilai < 1000000000) {
			$temp = penyebut($nilai/1000000) . " juta" . penyebut($nilai % 1000000);
		} else if ($nilai < 1000000000000) {
			$temp = penyebut($nilai/1000000000) . " milyar" . penyebut(fmod($nilai,1000000000));
		} else if ($nilai < 1000000000000000) {
			$temp = penyebut($nilai/1000000000000) . " trilyun" . penyebut(fmod($nilai,1000000000000));
		}     
		return $temp;
	}

	function terbilang($nilai) {
		if($nilai<0) {
			$hasil = "minus ". trim(penyebut($nilai));
		} else {
			$hasil = trim(penyebut($nilai));
		}     		
		return $hasil;
	}
?>
<?php
function rupiah($angka){
	
	$hasil_rupiah = "Rp " . number_format($angka,2,',','.');
	return $hasil_rupiah;
 
}
?>

<?php
function rupiah_2($angka){
	
	$hasil_rupiah =  number_format($angka,2,',','.');
	return $hasil_rupiah;
 
}
?>


<!DOCTYPE html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="shortcut icon" href="img/fav.ico">
        <link rel="apple-touch-icon" href="img/apple-touch-icon.png">
       <title><?php include "pages/tittle.php"; ?></title>
        <meta name="description" content="Screening is a brand new take on the traditional movie database, fusing social networking and multimedia to provide a clear, concise experience allowing you to share your favourite movies, and discover new classics.">
        <meta name="keywords" content="Movies, Films, Screening, Discover, Watch, Share, experience, database, movie database, film database, share film, share films, discover film, discover films, share movie, share movies, discover movie, discover movies">

        <!-- Bootstrap -->
      
		<style>
  @page {  
	 margin-top: 100px; 
	 margin-bottom: 0px;  
	 margin-left:50px; 
	 margin-right:50px; 
	 size:A4 potrait;
		}
     #header { position: fixed; left: 0px; top: -100px; right: 0px; height: 100px;  text-align: center; padding-top:5px;  }
    
	 #footer {
	
	width:100%;
	height:50px;
	position:fixed;
	bottom:0;
	left:0; }

     #footer .page:after { content: counter(page);  }
	  
 #table {

    border-collapse: collapse;

 
}
#table th {
 	  border: 1px solid black;
padding: 5px;
  
}
#table td {
  border: 1px solid black;
padding: 5px;
}
	
        </style>
		
    </head>

    <body>
    <div id="header">
					<table width="100%" border="0">
					<tr>
					<td  valign="middle" align="center"><img src="assets/images/kop.jpg" width="700"  ></td>
				
					</tr>
					</table>

    </div>
   <br>
   <div id="footer">
     <p style="font-size:12px" align="center"> Sistem Informasi Umum Kepegawaian BKPP Kota Banjarbaru @2019</p>
   </div>
   <div id="content">
  <table width="100%" border="0" style=" font-family:Georgia, "Times New Roman", Times, serif">
  <tr>
    <td align="center" style="font-size:24px"><strong>BERITA ACARA SERAH TERIMA </strong></td>
  </tr>
  <tr>
    <td align="center">NOMOR : <?php echo $no_srt; ?></td>
  </tr>
</table>

<table width="100%" border="0" style=" font-family:Georgia, "Times New Roman", Times, serif">
  <tr>
    <td width="38%" valign="top">&nbsp;</td>
    <td width="2%" valign="top">&nbsp;</td>
    <td width="60%" valign="top">&nbsp;</td>
  </tr>
  <tr>
    <td colspan="3" valign="top" align="justify">Pada hari ini <?php  echo $hari;?>, Tanggal <?php  echo ucwords(terbilang($tgl_lantik));?> Bulan <?php  echo $bln_lantik;?> Tahun  <?php  echo ucwords(terbilang($thn_lantik));?> kami yang bertanda tangan dibawah ini : </td>
    </tr>
  <tr>
    <td valign="top">1. <?php echo $namalengkap;?></td>
    <td valign="top">:</td>
    <td valign="top" align="justify"><?php echo $a2; ?><br> Alamat Jalan Panglima Batur No. 1 Banjarbaru, disebut (PIHAK PERTAMA)</td>
  </tr>
  <tr>
    <td valign="top">2. <?php echo $nama_pemilik;?></td>
    <td valign="top">:</td>
    <td valign="top"><?php echo $nama_dis; ?><br> 
      Alamat <?php echo $alamat_dis; ?>, disebut (PIHAK KEDUA) </td>
  </tr>
  <tr>
    <td colspan="3" valign="top" align="justify">Pihak Kedua telah menyerahkan barang kepada Pihak Pertama dan Pihak Pertama telah menerimanya dengan baik, cukup dan lengkap di Kantor Badan Kepegawaian, Pendidikan dan Pelatihan Kota Banjarbaru sesuai Surat Perintah Kerja (SPK) Nomor : <?php echo $no_srt; ?> tanggal <?php echo $tgl_buat; ?>. Dengan rincian sebagai berikut : </td>
    </tr>
  </table>
<br>
  <table width="100%"  id="table">
  <tr>
    <th width="5%" valign="top" align="center">No.</th>
    <th width="50%" valign="top">Nama dan Spesifikasi Barang </th>
    <th width="10%" valign="top">Banyaknya</th>
    <th width="15%" valign="top">Satuan (Rp.) </th>
    <th width="20%" valign="top">Jumlah (Rp.)</th>
  </tr>
  <?
				 	$i 			= 1;
              	 	$jml_data1 	= "SELECT * FROM belanja_barang where id_spk='$id_spk' order by id_barang ";
					$query		= mysqli_query($conn, $jml_data1);
		
        			while($data = mysqli_fetch_array($query))
					{
					$id_barang	= $data['id_barang'];
					$qty		= $data['qty'];
					$jumlah		= $data['jumlah'];
					$keterangan			= $data['keterangan'];

					
					$query_distributor 	= "SELECT * FROM barang where id_barang='$id_barang' ";
					$mysql_distributor	= mysqli_query($conn, $query_distributor);
					$data_dis			= mysqli_fetch_array($mysql_distributor);
					$nama_barang		= $data_dis['nama_barang'];
					$satuan				= $data_dis['satuan'];
					$harga				= $data_dis['harga'];
					
					
					
					
				?>
  <tr>
    <td valign="top" align="center"><?php echo $i ?></td>
    <td valign="top"><?php echo $nama_barang; ?> <?php echo $keterangan; ?></td>
    <td valign="top"><?php echo $qty;?>
      <?  echo $satuan;  ?></td>
    <td valign="top" align="right"><?php echo rupiah_2($harga); ?></td>
    <td valign="top" align="right"><?php echo rupiah_2($jumlah); ?></td>
  </tr>
  
   <?php
       			 $i++;
        			}
    			?>
				<tr>
    <td colspan="4" align="center" valign="top">T O T A L</td>
    <td valign="top" align="right"><?php 
												
												$sql_00001			= "select SUM(jumlah) as jumlah_total from belanja_barang where id_spk='$id_spk' ";
												$sql_kk001 			= mysqli_query($conn, $sql_00001);
												$data_p1 			= mysqli_fetch_array($sql_kk001);
												$jumlah_total	 	= $data_p1['0'];
												
												//echo $sql_00001;
																			
												
												echo rupiah_2($jumlah_total); ?></td>
  </tr>
				<tr>
				  <td colspan="5" align="center" valign="top"><?php
	
											$angka		= terbilang($jumlah_total);
											$a1 		= ucwords($angka);
										
											 echo  $a1;?> Rupiah</td>
    </tr>
</table>
<br>
<table width="100%" border="0" style=" font-family:Georgia, "Times New Roman", Times, serif">

  <tr>
    <td colspan="3" valign="top">Demikian berita acara serah terima ini dibuat untuk dapat dipergunakan sebagaimana mestinya. </td>
    </tr>
  
  <tr>
    <td valign="top"></td>
    <td valign="top"></td>
    <td valign="top"></td>
  </tr>
</table>
<table width="100%" border="0" style="font-family:Georgia, "Times New Roman", Times, serif">
  <tr>
    <td width="35%" align="center">&nbsp;</td>
    <td width="15%" align="center">&nbsp;</td>
    <td width="50%" align="center">&nbsp;</td>
  </tr>
  <tr>
    <td align="center">&nbsp;</td>
    <td align="center">&nbsp;</td>
    <td align="center">Banjarbaru, <?php echo $tgl_buat; ?></td>
  </tr>
  <tr>
    <td align="center" valign="top">PIHAK KEDUA, </td>
    <td rowspan="4" align="center"><?php QRcode::png("$kd_unik", "png/$kd_unik.png", "L", 2, 2); ?>
      <?php echo "<img src='png/$kd_unik.png' />" ?></td>
    <td align="center">PIHAK PERTAMA , <br>
      <?php echo $a2; ?></td>
  </tr>
  <tr>
    <td align="center">&nbsp;</td>
    <td align="center">&nbsp;</td>
  </tr>
  <tr>
    <td align="center">&nbsp;</td>
    <td align="center">&nbsp;</td>
  </tr>
  <tr>
    <td align="center" valign="top"><?php echo $nama_pemilik;?></td>
    <td align="center"><?php echo $namalengkap;?><br>
      <?php echo $golongan ?><br>
NIP. <?php echo $nip ?> </td>
  </tr>
</table>


   
    </div>
   <script src="assets/js/ie10-viewport-bug-workaround.js"></script>
   </body>
</html>

<?php
$html = ob_get_clean();
$dompdf = new DOMPDF();
$dompdf->load_html($html);
$dompdf->render();
$dompdf->stream("SPK No : ".$no_srt.".pdf");

?>



<?php
include("checklog.php"); 
require_once("watchlist-controller.php");
require_once("dompdf/dompdf_config.inc.php");
ob_start();
?>

<html>...</html>

<?php
$html = ob_get_clean();
$dompdf = new DOMPDF();
$dompdf->load_html($html);
$dompdf->render();
$dompdf->stream("sample.pdf");
?>