<?php
  include "assets/include/koneksi.php";
	require_once("dompdf/dompdf_config.inc.php");
	ob_start();
	
	
	$kd_unik	= 'KWITANSI BARANG - BKPP BJB';
	$beban		= $_POST['beban'];
	$kegiatan	= $_POST['kegiatan'];
	$uang		= $_POST['uang'];
	$untuk		= $_POST['untuk'];
	$npwp		= $_POST['npwp'];
	$penerima	= $_POST['penerima'];
	
	if ($uang >= 2000000 and $npwp =='1')
	{
	$ppn_barang = $uang/11;
	$pph_barang	= $ppn_barang * 15/100;
	}
	else if ($uang >= 2000000 and $npwp =='0')
	{
	$ppn_barang = $uang/11;
	$pph_barang	= $ppn_barang * 15/100 * 2;
	}
	else if ($uang < 2000000 and $uang >= 1000000 and $npwp =='1')
	{
	$ppn_barang = $uang/11;
	$pph_barang	= 0;
	}
	else if ($uang < 2000000 and $uang >= 1000000 and $npwp =='0')
	{
	$ppn_barang = $uang/11;
	$pph_barang	= 0;
	}
	else if ($uang < 1000000 )
	{
	$ppn_barang = 0;
	$pph_barang	= 0;
	}
	

?>
<?php include "phpqrcode/qrlib.php"; ?>

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
	 margin-top: 105px; 
	 margin-bottom: 20px;  
	 margin-left:30px; 
	 margin-right:20px; 
	 size:A4 potrait;
		}
     #header { position: fixed; left: 0px; top: -105px; right: 0px; height: 105px;  text-align: center; text padding-top:5px;  }
    
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
padding: 1px;
  
}
#table td {
  border: 1px solid black;
}	


#table1 {

    border-collapse: collapse;

 
}
#table1 th {
 	  border: 1px solid black;
padding: 10px;
  
}
#table1 td {
  border: 1px solid black;
padding: 10px 5px;
}	

#table2 {

    border-collapse: collapse;

 
}
#table2 th {
 	  border: 1px solid black;
padding: 6px;
  
}
#table2 td {
  border: 1px solid black;
padding: 6px 5px;
}	

#table3 {

    border-collapse: collapse;

 
}
#table3 th {
 	  border: 1px solid black;
padding: 2px;
  
}
#table3 td {
  border: 1px solid black;
padding: 2px 5px;
}	
.tebal_001 { font-family: Georgia, "Times New Roman", Times, serif; font-size:20px; color:#000000; font-weight:bold;}	


        </style>
		
    </head>

    <body>
    <div id="header">
					<table width="100%" border="0">
					<tr>
					<td  valign="middle" align="center"><img src="assets/images/kop.jpg" width="700" height="100"  > </td>
					</tr>
					</table>

    </div>
	
   <div id="content">
     
  <table width="100%" border="0" style=" font-family:Georgia, Times New Roman, Times, serif">
  <tr>
    <td align="center" style=" font-family:Georgia, 'Times New Roman', Times, serif; font-size: 24px"><strong>K W I T A N S I</strong></td>
  </tr>
  <tr>
    <td align="center"></td>
  </tr>
  <tr>
    <td align="center">
	<table width="100%" border="0" style="font-family:Georgia, 'Times New Roman', Times, serif; font-size:14px">
  <tr>
    <td width="20%"></td>
    <td width="1%"></td>
    <td width="20%"></td>
	<td width="1%"></td>
    <td width="58%"></td>
  </tr>
  <tr>
    <td>Nomor BKU </td>
    <td>:</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>Referensi</td>
    <td>:</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td align="left" valign="top">Pembebanan R/K </td>
    <td align="left" valign="top">:</td>
    <td align="left" valign="top"><?php echo $beban;?></td>
    <td align="left" valign="top">&nbsp;</td>
    <td align="left" valign="top">&nbsp;</td>
  </tr>
  <tr>
    <td align="left" valign="top">Kegiatan</td>
    <td align="left" valign="top">:</td>
    <td colspan="3" align="left" valign="top"><?php echo $kegiatan;?></td>
    </tr>
  <tr>
    <td align="left" valign="top">&nbsp;</td>
    <td align="left" valign="top">&nbsp;</td>
    <td align="left" valign="top">Sudah Terima Dari </td>
    <td align="left" valign="top">:</td>
    <td align="left" valign="top">BENDAHARA PENGELUARAN <BR> BADAN KEPEGAWAIAN, PENDIDIKAN DAN PELATIHAN </td>
  </tr>
  <tr>
    <td align="left" valign="top">&nbsp;</td>
    <td align="left" valign="top">&nbsp;</td>
    <td align="left" valign="top">Uang Sejumlah </td>
    <td align="left" valign="top">:</td>
    <td align="left" valign="top"><?php
	
											$angka		= terbilang($uang);
											$a1 		= ucwords($angka);
										
											 echo  $a1;?> Rupiah</td>
  </tr>
  <tr>
    <td align="left" valign="top">&nbsp;</td>
    <td align="left" valign="top">&nbsp;</td>
    <td align="left" valign="top">Untuk Pembayaran </td>
    <td align="left" valign="top">:</td>
    <td align="left" valign="top"><?php echo $untuk;?></td>
  </tr>
  <tr>
    <td align="left" valign="top"></td>
    <td align="left" valign="top"></td>
    <td align="left" valign="top"></td>
    <td align="left" valign="top"></td>
    <td align="left" valign="top"></td>
  </tr>
  <tr>
    <td align="left" valign="top">Pajak - Pajak </td>
    <td align="left" valign="top">:</td>
    <td align="left" valign="top">&nbsp;</td>
    <td align="left" valign="top">&nbsp;</td>
    <td rowspan="5" align="left" valign="top"><table width="100%" border="0">
      <tr>
        <td width="45%">&nbsp;</td>
        <td width="40%"><table width="100%" border="0" id="table">
          <tr>
            <td align="center" valign="top">Lunas Dibayar Tanggal : <br> <br> </td>
          </tr>
          <tr>
            <td align="center" valign="top">Dibukukan Tanggal : <br> <br></td>
          </tr>
        </table></td>
        <td width="15%" align="right" valign="middle" ><?php QRcode::png("$kd_unik", "png/$kd_unik.png", "L", 2, 2); ?>
      <?php echo "<img src='png/$kd_unik.png' />" ?></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td align="left" valign="top">PPN</td>
    <td align="left" valign="top">:</td>
    <td align="left" valign="top">
      <?php $pjk_brg =round($ppn_barang,0,PHP_ROUND_HALF_EVEN); ?>
      
      Rp. <?php echo rupiah_2($pjk_brg); ?></td>
    <td align="left" valign="top">&nbsp;</td>
    </tr>
  <tr>
    <td align="left" valign="top">PPh Psl 21 </td>
    <td align="left" valign="top">:</td>
    <td align="left" valign="top">
      <?php $pjk_psl21 =round($pph,0,PHP_ROUND_HALF_EVEN); ?>
      Rp. <?php echo rupiah_2($pjk_psl21); ?> </td>
    <td align="left" valign="top">&nbsp;</td>
    </tr>
  <tr>
    <td align="left" valign="top">PPh Psl 22 </td>
    <td align="left" valign="top">:</td>
    <td align="left" valign="top">
       <?php $pjk_pph =round($pph_barang,0,PHP_ROUND_HALF_EVEN); ?>
      Rp. <?php echo rupiah_2($pjk_pph); ?></td>
    <td align="left" valign="top">&nbsp;</td>
    </tr>

  <tr>
    <td colspan="4" align="left" valign="top">
	<table width="100%" border="0" style="border-top:solid; border-bottom:solid; ">
                <tr>
                  <td align="center" class="tebal_001">Jumlah Rp. <?php echo rupiah_2($uang); ?>                  </span></td>
                </tr>
              </table>	</td>
    </tr>
  <tr>
    <td align="left" valign="top"></td>
    <td align="left" valign="top"></td>
    <td align="left" valign="top"></td>
    <td align="left" valign="top"></td>
    <td align="left" valign="top"></td>
  </tr>
 
  <tr>
    <td colspan="5" align="left" valign="top">
	<table width="100%" border="0">
          <tr align="center">
            <td  width="30%">Mengetahui/Menyetujui,</td>
            <td>Dibayar</td>
            <td width="30%">Banjarbaru, .................. 20....... </td>
          </tr>
          <tr align="center">
            <td>Pengguna Anggaran, </td>
            <td>Bendahara Pengeluaran </td>
            <td>Tanda Terima </td>
          </tr>
          <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
          </tr>
          <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
          </tr>
          <tr align="center" class="tebal">
            <td>Dra. SRI LAILANA <BR>
			NIP. 19730414 199302 2 003 </td>
            <td>KARTINI, A.Md <br> NIP. 19850409 200803 2 003</td>
            <td valign="top"><?php echo $penerima;?></td>
          </tr>
        </table>	</td>
    </tr>
</table>

	
	
	
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
$dompdf->stream("Kwitansi : ".$kegiatan.".pdf");

?>
