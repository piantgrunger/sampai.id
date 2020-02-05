<?php
  	include "asset/include/koneksi.php";
	require_once("dompdf/dompdf_config.inc.php");
	ob_start();
	
	$id_pelantikan = $_GET['id']
?>
<?php include "phpqrcode/qrlib.php"; ?>
<?php
	$sql_tgl_pelantikan 		="select * from tb_tglpelantikan where status='Aktif' ";
	$mysql_tgl_pelantikan 		= mysqli_query ($conn,$sql_tgl_pelantikan);
	$fetch_sql_tgl_pelantikan	= mysqli_fetch_array($mysql_tgl_pelantikan);
	//kode tanggal pelantikan
	$kd_tgl_pelantikan			= $fetch_sql_tgl_pelantikan['kode'];
	
	$hari_pelantikan 			= $fetch_sql_tgl_pelantikan['hari_pelantikan'];
	$tgl_pelantikan				= $fetch_sql_tgl_pelantikan['tgl_pelantikan'];
	$jam_pelantikan 			= $fetch_sql_tgl_pelantikan['jam_pelantikan'];
	$hari_gladi					= $fetch_sql_tgl_pelantikan['hari_gladi'];
	$tgl_gladi 					= $fetch_sql_tgl_pelantikan['tgl_gladi'];
	$jam_gladi					= $fetch_sql_tgl_pelantikan['jam_gladi'];
	$tmt_pelantikan 			= $fetch_sql_tgl_pelantikan['tmt_pelantikan'];
	$tmt_gladi 					= $fetch_sql_tgl_pelantikan['tmt_gladi'];	
?>
<?php
	$dataawal					=  $tgl_pelantikan;									
	$pisah						=  explode("-",$dataawal);											
																
	$tgl_lantik					= $pisah['0'];
	$bln_lantik					= $pisah['1'];
	$thn_lantik					= $pisah['2'];
					
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
					
								$tgl_pelantikan0 = $tgl_lantik;
								$tgl_pelantikan0 .= " ";
								$tgl_pelantikan0 .= $bulan_lantik;
								$tgl_pelantikan0 .= " ";
								$tgl_pelantikan0 .= $thn_lantik;
					
					//echo 	$tgl_pelantikan0;
	$dataawal0					=  $tgl_gladi;									
	$pisah0						=  explode("-",$dataawal0);											
																
	$tgl_gladi					= $pisah0['0'];
	$bln_gladi					= $pisah0['1'];
	$thn_gladi					= $pisah0['2'];
					
								if ($bln_gladi =='01')
								{
								$bulan_gladi	='Januari';
								}
								elseif ($bln_gladi =='02')
								{
								$bulan_gladi	='Februari';
								}
								elseif ($bln_gladi =='03')
								{
								$bulan_gladi	='Maret';
								}
								elseif ($bln_gladi =='04')
								{
								$bulan_gladi	='April';
								}
								elseif ($bln_gladi =='05')
								{
								$bulan_gladi	='Mei';
								}
								elseif ($bln_gladi =='06')
								{
								$bulan_gladi	='Juni';
								}
								elseif ($bln_gladi =='07')
								{
								$bulan_gladi	='Juli';
								}
								elseif ($bln_gladi =='08')
								{
								$bulan_gladi	='Agustus';
								}
								elseif ($bln_gladi =='09')
								{
								$bulan_gladi	='September';
								}
								elseif ($bln_gladi =='10')
								{
								$bulan_gladi	='Oktober';
								}
								elseif ($bln_gladi =='11')
								{
								$bulan_gladi	='November';
								}
								else
								{
								$bulan_gladi	='Desember';
								}
					
								$tgl_pelantikan1 = $tgl_gladi;
								$tgl_pelantikan1 .= " ";
								$tgl_pelantikan1 .= $bulan_gladi;
								$tgl_pelantikan1 .= " ";
								$tgl_pelantikan1 .= $thn_gladi;
?>


<?php
	$sql_undangan		 		="select * from adm_undangan where tgl_pelantikan='$kd_tgl_pelantikan' ";
	$mysql_undangan				= mysqli_query ($conn,$sql_undangan);
	$fetch_undangan				= mysqli_fetch_array($mysql_undangan);
	$id_undangan				= $fetch_undangan['id_undangan'];
	$no_undangan				= $fetch_undangan['no_undangan'];
	$id_pimpinan				= $fetch_undangan['id_pimpinan'];
	$perihal					= $fetch_undangan['perihal'];
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
	 margin-top: 142px; 
	 margin-bottom: 0px;  
	 margin-left:50px; 
	 margin-right:50px; 
	 size:A4 potrait;
		}
     #header { position: fixed; left: 0px; top: -150px; right: 0px; height: 100px;  text-align: center; padding-top:5px;  }
    
	 #footer {
	
	width:100%;
	height:50px;
	position:fixed;
	bottom:0;
	left:0; }

     #footer .page:after { content: counter(page);  }
	  
	
        </style>
		
    </head>

    <body>
    <div id="header">
	<?php
					$sql_pimpinan		= "select * from pimpinan where id_pimpinan='$id_pimpinan'";
					$sql_pimpinan_		= mysqli_query($conn, $sql_pimpinan);
					$data_pimpinan		= mysqli_fetch_array($sql_pimpinan_);
					
					$jab_pimpinan		= $data_pimpinan['jab_pimpinan'];
					$nama_pimpinan		= $data_pimpinan['nama_pimpinan'];
					$nip_pimpinan		= $data_pimpinan['nip_pimpinan'];
					$gol_pim			= $data_pimpinan['gol'];
					if ($jab_pimpinan=='Sekretaris Daerah')
					{
					?>
					<table width="100%" border="0">
					<tr>
					<td  valign="middle" align="center"><img src="images/kop sekda.jpg" width="700"  ></td>
				
					</tr>
					</table>
					
					<?php
					}
					else
					{
					?>
					<table width="100%" border="0">
						<tr>
						<td  valign="middle" align="center"><img src="images/kop walikota.jpg" width="700"  ></td>
						</tr>
					</table>
	<?php
	}
	?>		
    </div>
   <br>
   <div id="footer">
     <p style="font-size:12px" align="center"> Alamat Kantor : Jl. Panglima Batur No. 1 Banjarbaru Provinsi Kalimantan Selatan. Telp. (0511) 477 2569 Faks. 477 4269</p>
   </div>
   <div id="content">
   <?php
   $sql_bro 				= "select * from tb_pelantikan where id_pelantikan='$id_pelantikan' ";
   $sql_01					= mysqli_query ($conn,$sql_bro);
   $data_bro	 			= mysqli_fetch_array($sql_01);
   
   $id_pejabat				= $data_bro['1'];
   $id_jabatan_baru			= $data_bro['2'];
   $id_jabatan_lama			= $data_bro['3'];
   $code					= $data_bro['6'];
					
					$sql_nama			= "select * from tb_pejabat where id_pejabat='$id_pejabat'";
					$sql_nama_ 			= mysqli_query($conn, $sql_nama );
					$data_nama	 		= mysqli_fetch_array($sql_nama_);
					$gelar_depan		= $data_nama['gelar_dpn'];
					$gelar_belakang		= $data_nama['gelar_blk'];		
					$nama_pejabat		= $data_nama['nama_pejabat'];
					$nip				= $data_nama['nip'];
					$ttl				= $data_nama['ttl'];
					$pangkat			= $data_nama['pangkat'];
					$tmt				= $data_nama['tmt'];
					$pendidikan			= $data_nama['pendidikan'];
					$diklat				= $data_nama['diklat'];
					$esselon			= $data_nama['esselon'];
					
					$nama_pejabat_		= strtolower($nama_pejabat);
					$nama_pejabat___	= ucwords($nama_pejabat_);
					
					
					$sql_jabatanlama 		= "select * from jabatan where id_jabatan='$id_jabatan_lama'  ";
					$sql_jabatanlama_		= mysqli_query ($conn,$sql_jabatanlama);
					$data_jabatanlama 		= mysqli_fetch_array($sql_jabatanlama_);
					$jabatanlama_			= $data_jabatanlama['jabatan'];
					$sopdlama_				= $data_jabatanlama['id_skpd'];
					
					$sql_skpd_lama 			= "select * from skpd where id_skpd= '$sopdlama_' ";
					$sql_skpd_lama_1		= mysqli_query ($conn,$sql_skpd_lama);
					$data_skpd_lama			= mysqli_fetch_array($sql_skpd_lama_1);
					$nama_skpd_lama_		= $data_skpd_lama['nama_skpd'];
					$singkat_skpd_lama		= $data_skpd_lama['singkat'];
					
					if($singkat_skpd_lama=='')
					{
					$nama_skpd_lama = $nama_skpd_lama_;
					}
					else
					{
					$nama_skpd_lama = $singkat_skpd_lama;
					}

   ?>
   <?php
  
		if ($gelar_belakang =='')
		{
		$namalengkap	= $gelar_depan;
		$namalengkap	.= ' ';
		$namalengkap	.= $nama_pejabat___;
		}
		else
		{
		$namalengkap	= $gelar_depan;
		$namalengkap	.= ' ';
		$namalengkap	.= $nama_pejabat___;
		$namalengkap	.= ', ';
		$namalengkap	.= $gelar_belakang;
		}
	 
   ?>
  
   
   <table width="100%" border="0" style=" font-size: 15px; font-family:Georgia, "Times New Roman", Times, serif" >
	  <tr>
		<td width="10%">Nomor</td>
		<td width="2%">:</td>
		<td width="28%"><?php echo $no_undangan;?></td>
		<td width="15%">&nbsp;</td>
		<td width="50%">Banjarbaru, 30 April 2019 </td>
	  </tr>
	  <tr>
	    <td>Sifat</td>
	    <td>:</td>
	    <td>PENTING / SEGERA </td>
	    <td>&nbsp;</td>
	    <td>Kepada Yth ;</td>
     </tr>
	  <tr>
	    <td>Perihal</td>
	    <td>:</td>
	    <td rowspan="5" valign="top"><b><?php echo $perihal;?></b></td>
	    <td>&nbsp;</td>
	    <td><b><?php echo $namalengkap;?> </b></td>
     </tr>
	  <tr>
	    <td>&nbsp;</td>
	    <td>&nbsp;</td>
	    <td>&nbsp;</td>
	    <td>NIP.&nbsp;<?php echo $nip;?> </td>
     </tr>
	  <tr>
	    <td>&nbsp;</td>
	    <td>&nbsp;</td>
	    <td>&nbsp;</td>
	    <td>
		 <?php
		 $sql_bro12 	="select * from tb_pelantikan where id_jabatan='$id_jabatan_baru' and tgl_pelantikan='$kd_tgl_pelantikan'   ";
		 $sql_0112		= mysqli_query ($conn,$sql_bro12);
		 $sql_tgl51		= mysqli_fetch_array($sql_0112);
		 $jenis			= $sql_tgl51['jenis'];
		 
			if ($jenis == 'PN')
			 {
			 $sql_bro121 				="select * from tb_nomenklatur where id_jabatan='$id_jabatan_baru' and tgl_pelantikan='$kd_tgl_pelantikan'   ";
			 $sql_01121					= mysqli_query ($conn,$sql_bro121);
			 $sql_tgl511				= mysqli_fetch_array($sql_01121);
			 $jb_lama		 			= $sql_tgl511['nomenklatur_lama'];
			 $esselon_lama_		 		= $sql_tgl511['esselon_lama'];
			 $sopd_lama_		 		= $sql_tgl511['skpd'];
			 $nomenklatur_baru  		= $sql_tgl511['nomenklatur_baru'];
			 }
			 else
			 {
			 $jb_lama		 		= $jabatanlama_;
			 $esselon_lama_		 	= $esselon_lama;
			 $sopd_lama_			 = $nama_skpd_lama;
			 }
			 ?>
		
		<?php echo $jb_lama;?> PADA <?php echo $sopd_lama_;?></td>
     </tr>
	  <tr>
	    <td>&nbsp;</td>
	    <td>&nbsp;</td>
	    <td>&nbsp;</td>
	    <td>di - </td>
     </tr>
	  <tr>
	    <td>&nbsp;</td>
	    <td>&nbsp;</td>
	    <td>&nbsp;</td>
	    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; BANJARBARU</td>
     </tr>
	  <tr>
	    <td>&nbsp;</td>
	    <td>&nbsp;</td>
	    <td>&nbsp;</td>
	    <td>&nbsp;</td>
	    <td>&nbsp;</td>
     </tr>
	 
	  
	  
	  
	  
	  <tr>
	    <td>&nbsp;</td>
	    <td>&nbsp;</td>
	    <td colspan="3">
<table width="100%" border="0">
  <tr>
    <td width="3%" valign="top">1.</td>
    <td colspan="3" valign="top" align="justify">Berdasarkan ketentuan Peraturan Pemerintah Nomor 11 Tahun 2017, setiap Pegawai Negeri Sipil yang diangkat dalam jabatan yang harus dilantik dan mengangkat sumpah/janji jabatan menurut agama atau kepercayaannya kepada Tuhan Yang Maha Esa. </td>
    </tr>
  <tr>
    <td valign="top">2.</td>
    <td colspan="3" align="justify" valign="top">Sehubungan hal tersebut dimohon kehadiran Saudara untuk dilantik dan mengangkat sumpah/janji Jabatan Pegawai Negeri Sipil yang akan dilaksanakan pada : </td>
    </tr>
  <tr>
    <td width="3%">&nbsp;</td>
    <td width="30%">Hari / Tanggal </td>
    <td width="2%">:</td>
    <td><?php echo $hari_pelantikan;?>, <?php echo $tgl_pelantikan0;?> </td>
  </tr>
  
  <tr>
    <td>&nbsp;</td>
    <td>Pukul</td>
    <td>:</td>
    <td><?php echo $jam_pelantikan;?> WITA</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>Tempat</td>
    <td>:</td>
    <td><?php echo ucwords ($tmt_pelantikan);?></td>
  </tr>
  <tr>
    <td valign="top">3.</td>
    <td colspan="3" align="justify" valign="top">Mengingat pentingnya acara dimaksud dimohon kehadiran Saudara tepat pada waktunya. </td>
    </tr>
  <tr>
    <td valign="top">4.</td>
    <td colspan="3" align="justify" valign="top">Demikian disampaikan, atas perhatiannya diucapkan terimakasih. </td>
    </tr>
</table>		</td>
     </tr>
	  <tr>
	    <td>&nbsp;</td>
	    <td>&nbsp;</td>
	    <td colspan="3"><p align="justify">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Demikian disampaikan, untuk diketahui dan dilaksanakan.</p></td>
     </tr>
	 
	  <tr>
	  <td>&nbsp;</td>
	  <td>&nbsp;</td>
	   <td  align="left" valign="middle"  ></center></td>
	    <td>&nbsp;</td>
		
	    <td align="center">
		<?php
					
					if ($jab_pimpinan=='Sekretaris Daerah')
					{
					?>
					<img src="images/ttd sekda.png" width="275"  >
					
					<?php
					}
					else
					{
					?>
					<img src="images/ttd wali.png" width="275"  >
					<?php
					}
					
					?>		</td>
		</tr>
	     
         <tr>
           <td colspan="5" style="font-size:11px">
		   <table width="100%" border="0" style=" font-size:10px; font-family:Georgia, "Times New Roman", Times, serif">
                     <tr>
                       <td colspan="2">&nbsp;</td>
                       <td>&nbsp;</td>
                       <td>&nbsp;</td>
                       <td rowspan="18" align="right" valign="middle" >
                       <?php QRcode::png("$code", "png/$code.png", "L", 6, 6); ?><?php echo "<img src='png/$code.png' />" ?>      </td>
                     </tr>
                   <tr>
                     <td colspan="2">&nbsp;</td>
                     <td>&nbsp;</td>
                     <td>&nbsp;</td>
                   </tr>
                 <tr>
                   <td colspan="2">&nbsp;</td>
                   <td>&nbsp;</td>
                   <td>&nbsp;</td>
                 </tr>
              
                
              
             <tr>
               <td colspan="2">Catatan : </td>
               <td width="2%">&nbsp;</td>
               <td width="50%">&nbsp;</td>
             </tr>
             <tr>
               <td width="2%">1.</td>
               <td colspan="3"> Pakaian Upacara Pelantikan bagi Pejabat yang dilantik :</td>
             </tr>
             <tr>
               <td>&nbsp;</td>
               <td width="10%">- Pria </td>
               <td>:</td>
               <td>PSL + Lencana Korpri + Peci Hitam dan Isteri Pejabat  Memakai Kebaya Nasional;</td>
             </tr>
             <tr>
               <td>&nbsp;</td>
               <td>- Wanita </td>
               <td>:</td>
               <td>PSL +  Bawahan Rok + Lencana Korpri ;</td>
             </tr>
             <tr>
               <td>2. </td>
               <td colspan="3">Gladi Dilaksanakan pada :</td>
             </tr>
             <tr>
               <td>&nbsp;</td>
               <td>Hari /Tgl </td>
               <td>:</td>
               <td><?php echo $hari_gladi;?>, <?php echo $tgl_pelantikan1;?> </td>
             </tr>
             <tr>
               <td>&nbsp;</td>
               <td>Waktu</td>
               <td>:</td>
               <td><?php echo $jam_gladi;?> WITA</td>
             </tr>
             <tr>
               <td>&nbsp;</td>
               <td>Tempat</td>
               <td>:</td>
               <td><?php echo ucwords ($tmt_gladi);?></td>
             </tr>
             <tr>
               <td>3.</td>
               <td colspan="3">Undangan  Harap Wajib dibawa saat upacara pelantikan </td>
             </tr>
             <tr>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
             </tr>
             <tr>
               <td colspan="4" style="font-size:8px"><em> Sistem Administrasi Pelantikan Aparatur (SAPA) Pemerintah Kota Banjarbaru - BKPP Kota Banjarbaru </em></td>
             </tr>
             <tr>
               <td colspan="4" style="font-size:8px">&nbsp;</td>
             </tr>
           </table></td>
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
$dompdf->stream("Surat Undangan Pelantikan ".$nama_pejabat___.".pdf");

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