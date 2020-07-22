<?php
  	include "assets/include/koneksi.php";
	require_once("dompdf/dompdf_config.inc.php");
	ob_start();
	
	$id_spk 			= $_GET['KODE'];
	

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
				
	
	
?>
<?php include "phpqrcode/qrlib.php"; ?>


<?php
function findage($dob)
{
    $localtime = getdate();
    $today = $localtime['mday']."-".$localtime['mon']."-".$localtime['year'];
    $dob_a = explode("-", $dob);
    $today_a = explode("-", $today);
    $dob_d = $dob_a[0];$dob_m = $dob_a[1];$dob_y = $dob_a[2];
    $today_d = $today_a[0];$today_m = $today_a[1];$today_y = $today_a[2];
    $years = $today_y - $dob_y;
    $months = $today_m - $dob_m;
    if ($today_m.$today_d < $dob_m.$dob_d) 
    {
        $years--;
        $months = 12 + $today_m - $dob_m;
    }

    if ($today_d < $dob_d) 
    {
        $months--;
    }

    $firstMonths=array(1,3,5,7,8,10,12);
    $secondMonths=array(4,6,9,11);
    $thirdMonths=array(2);

    if($today_m - $dob_m == 1) 
    {
        if(in_array($dob_m, $firstMonths)) 
        {
            array_push($firstMonths, 0);
        }
        elseif(in_array($dob_m, $secondMonths)) 
        {
            array_push($secondMonths, 0);
        }elseif(in_array($dob_m, $thirdMonths)) 
        {
            array_push($thirdMonths, 0);
        }
    }
	
    echo " $years Tahun $months Bulan $today_m hari.";
}
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
#table_1 {

  border-top: none;
  border-left: none;
  border-right: none;
  border-bottom:none;
  font-family:Georgia, "Times New Roman", Times, serif;
  font-size:11px;
  text-align:center;
 
}
	  
 #table {

  border-top: 1px solid #000000;
  border-left: 1px solid #000000;
  border-right: 1px solid #000000;
  border-bottom:1px solid #000000;
  font-family:Georgia, "Times New Roman", Times, serif;
  font-size:11px;
 
}
#table th {
 	padding: 5px 5px;
  	border-top: 1px solid #000000;
  	border-bottom: 1px solid #000000;
 	border-left: none;
  	border-right: none;
 	background:  #333333;
    color:  #fff;
    font-weight: bold;
  
}
#table td {
 padding: 3px 3px;
  border-top: none;
  border-bottom: 1px dotted #000000;
  border-left: none;
  border-right: none;
}



#table_3 {

  border-top: none;
  border-left: none;
  border-right: none;
  border-bottom:none;
  font-family:Georgia, "Times New Roman", Times, serif;
  font-size:11px;
 
}
#table_3 th {
 	padding: 5px 5px;
  	border-top: none;
  	border-bottom: none;
 	border-left: none;
  	border-right: none;
 	background: #333333;
    color:  #fff;
    font-weight: bold;
  
}
#table_3 td {
 padding: 3px 3px;
  border-top: none;
  border-bottom: 1px dotted #000000;
  border-left: none;
  border-right: none;
}






	#border {
        border-color: #000;
        border-style: solid;

        border-width: 1px;
        
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
  
   
   <table width="100%" border="0" style=" font-size: 12px; font-family:Georgia, "Times New Roman", Times, serif" >
	  <tr>
		<td width="30%"></td>
		<td width="2%"></td>
		<td width="28%"></td>
		<td width="15%"></td>
		<td width="30%"></td>
	  </tr>
	  <tr>
	    <td colspan="5" align="center" style="font-size:24px"><strong>SURAT PERINTAH KERJA </strong></td>
     </tr>
	
	  <tr>
	    <td colspan="5" align="center">NOMOR : </td>
     </tr>
	  <tr>
	    <td>&nbsp;</td>
	    <td>&nbsp;</td>
	    <td>&nbsp;</td>
	    <td>&nbsp;</td>
	    <td>&nbsp;</td>
     </tr>
	  <tr>
	    <td>Diberikan Kepada </td>
	    <td>:</td>
	    <td>&nbsp;</td>
	    <td>&nbsp;</td>
	    <td>&nbsp;</td>
     </tr>
	  <tr>
	    <td valign="top">Perusahaan / Toko </td>
	    <td valign="top">:</td>
	    <td valign="top" colspan="3">&nbsp;</td>
     </tr>
	  <tr>
	    <td valign="top">Alamat</td>
	    <td valign="top">:</td>
	    <td valign="top" colspan="3">&nbsp;</td>
     </tr>
	 <tr>
	    <td valign="top">Untuk</td>
	    <td valign="top">:</td>
	    <td valign="top" colspan="3">&nbsp;</td>
     </tr>
	  <tr>
	    <td>&nbsp;</td>
	    <td>&nbsp;</td>
	    <td>&nbsp;</td>
	    <td>&nbsp;</td>
	    <td>&nbsp;</td>
     </tr>
	 <tr>
	    <td valign="top">Keperluan</td>
	    <td valign="top">:</td>
	    <td valign="top" colspan="3">&nbsp;</td>
     </tr>
	  <tr>
	    <td>Dengan Ketentuan Sebagai Berikut </td>
	    <td>:</td>
	    <td>&nbsp;</td>
	    <td>&nbsp;</td>
	    <td>&nbsp;</td>
     </tr>
	  <tr>
	    <td valign="top">1. Tempat Tujuan </td>
	    <td valign="top">:</td>
	    <td valign="top" colspan="3">Badan Kepegawaian, Pendidikan dan Pelatihan Kota Banjarbaru </td>
     </tr>
	 <tr>
	    <td valign="top">2. Tanggal Penyerahan </td>
	    <td valign="top">:</td>
	    <td valign="top" colspan="3">&nbsp;</td>
     </tr>
	 <tr>
	   <td valign="top">3. Keterangan </td>
	   <td valign="top">:</td>
	   <td valign="top" colspan="3">a. Pembayaran akan dilakukan jika barang - barang tersebut telah kami terima dengan baik. </td>
     </tr>
	 <tr>
	   <td valign="top">&nbsp;</td>
	   <td valign="top">&nbsp;</td>
	   <td valign="top" colspan="3">b. Pembayaran akan dibatalkan jika tidak sesuai dengan pesanan kami. </td>
     </tr>
	 <tr>
	    <td valign="top">&nbsp;</td>
	    <td valign="top">&nbsp;</td>
	    <td valign="top" colspan="3">c. Kwitansi harga barang - barang tersebut diatas bdapat dibayarkan jika melampirkan Surat Perintah Kerja. </td>
     </tr>
	     
        
         <tr>
           <td colspan="5" align="center" style="font-size:12px">&nbsp;</td>
         </tr>
	</table>
	<table width="100%" border="1" id="table" cellspacing="0">
	  <table id="zero_config" class="table table-striped table-bordered">
                                        <thead>
                                            <tr>
                                                <th width="3%">NO</th>
                                                <th width="50%">Nama dan Spesifikasi Barang</th>
                                                <th width="10%">Banyaknya </th>
                                                <th width="15%">Harga Satuan</th>
												<th width="15%">Total</th>
												<th width="5%">Act</th>
                                            </tr>
                                        </thead>
                                        <tbody>
										<?php
				 	$i 			= 1;
              	 	$jml_data1 	= "SELECT * FROM belanja_barang where id_spk='$id_spk' order by id_barang ";
					$query		= mysqli_query($conn, $jml_data1);
		
        			while($data = mysqli_fetch_array($query))
					{
					$id_barang	= $data['id_barang'];
					$qty		= $data['qty'];
					$jumlah		= $data['jumlah'];

					
					$query_distributor 	= "SELECT * FROM barang where id_barang='$id_barang' ";
					$mysql_distributor	= mysqli_query($conn, $query_distributor);
					$data_dis			= mysqli_fetch_array($mysql_distributor);
					$nama_barang		= $data_dis['nama_barang'];
					$satuan				= $data_dis['satuan'];
					$harga				= $data_dis['harga'];
					
					
					
				?>
				 <tr>
                                                <td><?php echo $i ?></td>
                                                <td><strong><?php echo $nama_barang; ?></strong></td>
												<td> <?php echo $qty;?> <?php  echo $satuan;  ?></a></td>
												<td align="right"> <?php echo rupiah_2($harga); ?></a></td>
												<td align="right"> <?php echo rupiah_2($jumlah); ?></a></td>
												<td> <?php echo ( "<a href=Assets/Include/Hapus-Belanja.php?KODE=$data[0] title='Hapus Data Belanja'> <i class='mdi mdi-delete-empty'></i> </a>")?>				</td>
                  </tr>
              
              
				 <?php
       			 $i++;
        			}
    			?>
                                        </tbody>
                                        <tfoot>
                                            <tr>
                                                <td colspan="6" align="center" > TOTAL Rp. 
												<?php 
												
												$sql_00001			= "select SUM(jumlah) as jumlah_total from belanja_barang where id_spk='$id_spk' ";
												$sql_kk001 			= mysqli_query($conn, $sql_00001);
												$data_p1 			= mysqli_fetch_array($sql_kk001);
												$jumlah_total	 	= $data_p1['0'];
												
												//echo $sql_00001;
																			
												
												echo rupiah_2($jumlah_total); ?>												
												 ( <?php
	
											$angka		= terbilang($jumlah_total);
											$a1 		= ucwords($angka);
										
											 echo  $a1;?> Rupiah )
												</td>
                                            </tr>
                                         
                                        </tfoot>
                                    </table>
<table width="100%" border="0" id="table_1">
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td width="40%">&nbsp;</td>
    <td width="20%">&nbsp;</td>
    <td width="40%">Banjarbaru, <?php echo $tgl_rampung; ?></td>
  </tr>
  <tr>
    <td>Telah dibayar sejumlah<br>
	<?php echo rupiah($jumlah_total); ?>
	<br>
	Bendahara Pengeluaran
	<br><br><br><br><br>
	
	KARTINI, A.Md<BR>
	NIP. 19850409 200803 2 003</td>
    <td>&nbsp;</td>
    <td>
	Telah menerima jumlah uang sebesar<br>
	<?php echo rupiah($jumlah_total); ?>
	<br>
	Yang Menerima
	<br><br><br><br><br>
	
	<?php echo $namalengkap; ?><BR>
	<?php
												
													if ($status_p==1)
													{
													$nanana = 'NIP.';
													$nipp = $data_kk11['nip'];
													}
													else
													{
													$nanana = 'NRPTT/NRTK.';
													$nipp = $data_kk11['nrtk'];
													}
													?>
													<?php echo $nanana ?> <?php echo $nipp ?>	</td>
  </tr>
</table>

<hr id="border">

   <table width="100%" border="1" id="table_3">
  <tr>
    <th colspan="5">PERHITUNGAN SPD RAMPUNG</th>
    </tr>
  <tr>
    <td width="33%">&nbsp;</td>
    <td width="2%">&nbsp;</td>
    <td width="5%">&nbsp;</td>
    <td width="20%">&nbsp;</td>
    <td width="40%">&nbsp;</td>
  </tr>
  <tr>
    <td>Ditetapkan sejumlah </td>
    <td>:</td>
    <td align="left">Rp.</td>
    <td align="right"><?php echo rupiah_2($jumlah_total); ?></td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>Yang telah dibayarkan semula </td>
    <td>:</td>
    <td align="left">Rp.</td>
    <td align="right"><?php echo rupiah_2($panjar_total); ?></td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td><strong>Sisa Kurang </strong></td>
    <td ><strong>:</strong></td>
    <td align="left"><strong>Rp.</strong></td>
    <td align="right"><strong><?php echo rupiah_2($selisih_panjar); ?>&nbsp;</strong></td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td align="center" colspan="5">Terbilang : <strong>
      <?php
	
	$angka1		= terbilang($selisih_panjar);
	$a11 					= strtoupper($angka1);

	 echo  $a11;?> RUPIAH</strong> </td>
    </tr>
</table>
<BR> <BR> <BR>
<table width="100%" border="1" id="table_3">
  <tr>
    <td width=" 60%"><?php QRcode::png("$code", "png/$code.png", "L", 2, 2); ?><?php echo "<img src='png/$code.png' />" ?></td>
    <td width="40%" align="center">
	Mengetahui / Menyetujui, <br>
	Pengguna Anggaran <br>
	Kepala Badan Kepegawaian, <br>
	Pendidikan dan Pelatihan
	<br><br><br><br><br>
	Dra. SRI LAILANA <BR>
	NIP. 19730414 199302 2 003
	
	</td>
    
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
$dompdf->stream("SPD Rampung ".$namadokumen.".pdf");

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