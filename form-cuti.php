<?php
  	include "assets/include/koneksi.php";
	require_once("dompdf/dompdf_config.inc.php");
	ob_start();
	
	$id_ambil_cuti = $_GET['id']
?>
<?php include "phpqrcode/qrlib.php"; ?>
<?php
	$sql_cuti 					="select * from cuti where id_ambil_cuti='$id_ambil_cuti' ";
	$mysql_cuti 				= mysqli_query ($conn,$sql_cuti);
	$fetch_sql_cuti				= mysqli_fetch_array($mysql_cuti);
	
	$id_cuti					= $fetch_sql_cuti['id_cuti'];
	$id_pegawai					= $fetch_sql_cuti['id_pegawai'];
	$lama_cuti					= $fetch_sql_cuti['lama_cuti'];
	$tgl_awal					= $fetch_sql_cuti['tgl_awal'];
	$tgl_akhir					= $fetch_sql_cuti['tgl_akhir'];
	$alamat_cuti				= $fetch_sql_cuti['alamat_cuti'];
	$telp						= $fetch_sql_cuti['telp'];
	$tahun						= $fetch_sql_cuti['tahun'];
	$status						= $fetch_sql_cuti['status'];
	$id_atasan					= $fetch_sql_cuti['id_atasan'];
	$tgl_pengajuan				= $fetch_sql_cuti['tgl_pengajuan'];
	$alasan						= $fetch_sql_cuti['alasan'];
	$no_cuti					= $fetch_sql_cuti['no_cuti'];

					
					$sql_0011	= "select * from pegawai where id_pegawai='$id_pegawai'";
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
					
					
					$namadokumen = $nama;
					$namadokumen .= ' ';
					$namadokumen .= $tahun;
					
					
					$nip_thn		= substr($nip,8,4);
					$nip_bln		= substr($nip,12,2);
				
					$tgl_pns 		= 01;
					$tgl_pns 		.= '-';
					$tgl_pns 		.= $nip_bln;
					$tgl_pns 		.= '-';
					$tgl_pns 		.= $nip_thn;
					
					
	
?>
<?php
													$sql_000	= "select * from jenis_cuti where id_cuti='$id_cuti'";
													$sql_kk0 	= mysqli_query($conn, $sql_000);
													$data_kk0 	= mysqli_fetch_array($sql_kk0);
													$nama_cuti	= $data_kk0['cuti'];
													$kd_cuti	= $data_kk0['kd_cuti'];
													
													
													
?>
<?php
					$sql_0011a	= "select * from pegawai where id_jabatan='$id_atasan'";
					$sql_kk11a 	= mysqli_query($conn, $sql_0011a);
					$data_kk11a	= mysqli_fetch_array($sql_kk11a);
					$id_pegawai_a	= $data_kk11a['id_pegawai'];
				
?>
<?php
					$sql_0011aa		= "select * from pegawai where id_pegawai='$id_pegawai_a'";
					$sql_kk11aa 	= mysqli_query($conn, $sql_0011aa);
					$data_kk11aa 	= mysqli_fetch_array($sql_kk11aa);
					$gelar_dpnaa	= $data_kk11aa['gelar_dpn'];
					$namaaa			= $data_kk11aa['nama'];
					$gelar_blkaa	= $data_kk11aa['gelar_blk'];
					$nipaa			= $data_kk11aa['nip'];
					$jabatanaa		= $data_kk11aa['jabatan'];
					
												  if ($gelar_blkaa =='')
												  {
												  $namalengkapaa	= $gelar_dpnaa;
												  $namalengkapaa	.= ' ';
												  $namalengkapaa	.= $namaaa;
												 
												  }
												  else
												  {
												  $namalengkapaa	= $gelar_dpnaa;
												  $namalengkapaa	.= ' ';
												  $namalengkapaa	.= $namaaa;
												  $namalengkapaa	.= ', ';
												  $namalengkapaa	.= $gelar_blkaa;
												  }
												  
												
?>
							<?php
							$yearsnow	= date("Y");
							$yearslast	= $yearsnow - 1;
							$yearslast2	= $yearsnow - 2;
							
							$code		= $nama_cuti;
							$code		.= "-";
							$code		.= $yearsnow;
							$code		.= "-";
							$code		.= $nama;
							$code		.= "-";
							$code		.= "BKPP BJB";

							$sql_00001			= "select SUM(lama_cuti) as lama_cuti from cuti where id_pegawai='$id_pegawai' and tahun='$yearslast' and id_cuti='1' and status='Setuju'";
							$sql_kk001 			= mysqli_query($conn, $sql_00001);
							$data_p1 			= mysqli_fetch_array($sql_kk001);
							
							$data_cuti_1_last 	= $data_p1['0'];
							
							$sql_ccuti_1		= "select * from cuti where id_pegawai='$id_pegawai' and tahun='$yearslast' and id_cuti='1' and status='Setuju'";
							$mysql_ccuti_1		= mysqli_query($conn, $sql_ccuti_1);
							$jumlah_cuti_1		 	= mysqli_num_rows($mysql_ccuti_1);
							?>
							<?php
							$sql_00002			= "select SUM(lama_cuti) as lama_cuti from cuti where id_pegawai='$id_pegawai' and tahun='$yearslast' and id_cuti='2' and status='Setuju'";
							$sql_kk002 			= mysqli_query($conn, $sql_00002);
							$data_p2 			= mysqli_fetch_array($sql_kk002);
							$data_cuti_2_last 	= $data_p2['0'];
							
							$sql_ccuti_2		= "select * from cuti where id_pegawai='$id_pegawai' and tahun='$yearslast' and id_cuti='2' and status='Setuju'";
							$mysql_ccuti_2		= mysqli_query($conn, $sql_ccuti_2);
							$jumlah_cuti_2		 	= mysqli_num_rows($mysql_ccuti_2);
							?>
							<?php
							$sql_00003			= "select SUM(lama_cuti) as lama_cuti from cuti where id_pegawai='$id_pegawai' and tahun='$yearslast' and id_cuti='3' and status='Setuju'";
							$sql_kk003 			= mysqli_query($conn, $sql_00003);
							$data_p3 			= mysqli_fetch_array($sql_kk003);
							$data_cuti_3_last 	= $data_p3['0'];
							
							$sql_ccuti_3		= "select * from cuti where id_pegawai='$id_pegawai' and tahun='$yearslast' and id_cuti='3' and status='Setuju'";
							$mysql_ccuti_3		= mysqli_query($conn, $sql_ccuti_3);
							$jumlah_cuti_3		 	= mysqli_num_rows($mysql_ccuti_3);
							?>
							<?php
							$sql_00004			= "select SUM(lama_cuti) as lama_cuti from cuti where id_pegawai='$id_pegawai' and tahun='$yearslast' and id_cuti='4' and status='Setuju'";
							$sql_kk004 			= mysqli_query($conn, $sql_00004);
							$data_p4 			= mysqli_fetch_array($sql_kk004);
							$data_cuti_4_last 	= $data_p4['0'];
							
							$sql_ccuti_4		= "select * from cuti where id_pegawai='$id_pegawai' and tahun='$yearslast' and id_cuti='4' and status='Setuju'";
							$mysql_ccuti_4		= mysqli_query($conn, $sql_ccuti_4);
							$jumlah_cuti_4		= mysqli_num_rows($mysql_ccuti_4);
							?>
							<?php
							$sql_00005			= "select SUM(lama_cuti) as lama_cuti from cuti where id_pegawai='$id_pegawai' and tahun='$yearslast' and id_cuti='5' and status='Setuju'";
							$sql_kk005 			= mysqli_query($conn, $sql_00005);
							$data_p5 			= mysqli_fetch_array($sql_kk005);
							$data_cuti_5_last 	= $data_p5['0'];
							
							$sql_ccuti_5		= "select * from cuti where id_pegawai='$id_pegawai' and tahun='$yearslast' and id_cuti='5' and status='Setuju'";
							$mysql_ccuti_5		= mysqli_query($conn, $sql_ccuti_5);
							$jumlah_cuti_5			= mysqli_num_rows($mysql_ccuti_5);
							?>
							<?php
							$sql_00006			= "select SUM(lama_cuti) as lama_cuti from cuti where id_pegawai='$id_pegawai' and tahun='$yearslast' and id_cuti='6' and status='Setuju'";
							$sql_kk006 			= mysqli_query($conn, $sql_00006);
							$data_p6 			= mysqli_fetch_array($sql_kk006);
							$data_cuti_6_last 	= $data_p6['0'];
							
							$sql_ccuti_6		= "select * from cuti where id_pegawai='$id_pegawai' and tahun='$yearslast' and id_cuti='6' and status='Setuju'";
							$mysql_ccuti_6		= mysqli_query($conn, $sql_ccuti_6);
							$jumlah_cuti_6			= mysqli_num_rows($mysql_ccuti_6);
							?>
							
							<?php
							
							$sql_000011			= "select SUM(lama_cuti) as lama_cuti from cuti where id_pegawai='$id_pegawai' and tahun='$yearslast2' and id_cuti='1' and status='Setuju'";
							$sql_kk0011 		= mysqli_query($conn, $sql_000011);
							$data_p11 			= mysqli_fetch_array($sql_kk0011);
							$data_cuti_1_last1 	= $data_p11['0'];
							
							$sql_cuti_1			= "select * from cuti where id_pegawai='$id_pegawai' and tahun='$yearslast2' and id_cuti='1' and status='Setuju'";
							$mysql_cuti_1		= mysqli_query($conn, $sql_cuti_1);
							$data_p111			= mysqli_num_rows($mysql_cuti_1);
							?>
							<?php
							$sql_000021			= "select SUM(lama_cuti) as lama_cuti from cuti where id_pegawai='$id_pegawai' and tahun='$yearslast2' and id_cuti='2' and status='Setuju'";
							$sql_kk0021 		= mysqli_query($conn, $sql_000021);
							$data_p21 			= mysqli_fetch_array($sql_kk0021);
							$data_cuti_2_last1 	= $data_p21['0'];
							
							$sql_cuti_2			= "select * from cuti where id_pegawai='$id_pegawai' and tahun='$yearslast2' and id_cuti='2' and status='Setuju'";
							$mysql_cuti_2		= mysqli_query($conn, $sql_cuti_2);
							$data_p211			= mysqli_num_rows($mysql_cuti_2);
							
							?>
							<?php
							$sql_000031			= "select SUM(lama_cuti) as lama_cuti from cuti where id_pegawai='$id_pegawai' and tahun='$yearslast2' and id_cuti='3' and status='Setuju'";
							$sql_kk0031 		= mysqli_query($conn, $sql_000031);
							$data_p31 			= mysqli_fetch_array($sql_kk0031);
							$data_cuti_3_last1 	= $data_p31['0'];
							
							$sql_cuti_3			= "select * from cuti where id_pegawai='$id_pegawai' and tahun='$yearslast2' and id_cuti='3' and status='Setuju'";
							$mysql_cuti_3		= mysqli_query($conn, $sql_cuti_3);
							$data_p311			= mysqli_num_rows($mysql_cuti_3);
							
							?>
							<?php
							$sql_000041			= "select SUM(lama_cuti) as lama_cuti from cuti where id_pegawai='$id_pegawai' and tahun='$yearslast2' and id_cuti='4' and status='Setuju'";
							$sql_kk0041 		= mysqli_query($conn, $sql_000041);
							$data_p41 			= mysqli_fetch_array($sql_kk0041);

							$data_cuti_4_last1 	= $data_p41['0'];
							
							$sql_cuti_4			= "select * from cuti where id_pegawai='$id_pegawai' and tahun='$yearslast2' and id_cuti='4' and status='Setuju'";
							$mysql_cuti_4		= mysqli_query($conn, $sql_cuti_4);
							$data_p411			= mysqli_num_rows($mysql_cuti_4);
							?>
							<?php
							$sql_000051			= "select SUM(lama_cuti) as lama_cuti from cuti where id_pegawai='$id_pegawai' and tahun='$yearslast2' and id_cuti='5' and status='Setuju'";
							$sql_kk0051 		= mysqli_query($conn, $sql_000051);
							$data_p51 			= mysqli_fetch_array($sql_kk0051);
							$data_cuti_5_last1 	= $data_p51['0'];
							
							$sql_cuti_5			= "select * from cuti where id_pegawai='$id_pegawai' and tahun='$yearslast2' and id_cuti='5' and status='Setuju'";
							$mysql_cuti_5		= mysqli_query($conn, $sql_cuti_5);
							$data_p511			= mysqli_num_rows($mysql_cuti_5);
							?>
							<?php
							$sql_000061			= "select SUM(lama_cuti) as lama_cuti from cuti where id_pegawai='$id_pegawai' and tahun='$yearslast2' and id_cuti='6' and status='Setuju'";
							$sql_kk0061 		= mysqli_query($conn, $sql_000061);
							$data_p61 			= mysqli_fetch_array($sql_kk0061);
							$data_cuti_6_last1 	= $data_p61['0'];
							
							$sql_cuti_6			= "select * from cuti where id_pegawai='$id_pegawai' and tahun='$yearslast2' and id_cuti='6' and status='Setuju'";
							$mysql_cuti_6		= mysqli_query($conn, $sql_cuti_6);
							$data_p611			= mysqli_num_rows($mysql_cuti_6);
							?>
							
							
							
							 <?php
							$sql_00001n			= "select SUM(lama_cuti) as lama_cuti from cuti where id_pegawai='$id_pegawai' and tahun='$yearsnow' and id_cuti='1' and status='Setuju'";
							$sql_kk001n 		= mysqli_query($conn, $sql_00001n);
							$data_p1n 			= mysqli_fetch_array($sql_kk001n);
							$data_cuti_1_lastn 	= $data_p1n['0'];
							
							$data_now1			= mysqli_num_rows($sql_kk001n);
							$data_pn1 			= $data_now1['0'];
							?>
							<?php
							$sql_00002n			= "select SUM(lama_cuti) as lama_cuti from cuti where id_pegawai='$id_pegawai' and tahun='$yearsnow' and id_cuti='2' and status='Setuju'";
							$sql_kk002n 		= mysqli_query($conn, $sql_00002n);
							$data_p2n 			= mysqli_fetch_array($sql_kk002n);
							$data_cuti_2_lastn 	= $data_p2n['0'];
							$data_now12			= mysqli_num_rows($sql_kk002n);
							$data_pn2 			= $data_now12['0'];
							?>
							<?php
							$sql_00003n			= "select SUM(lama_cuti) as lama_cuti from cuti where id_pegawai='$id_pegawai' and tahun='$yearsnow' and id_cuti='3' and status='Setuju'";
							$sql_kk003n 		= mysqli_query($conn, $sql_00003n);
							$data_p3n 			= mysqli_fetch_array($sql_kk003n);
							$data_cuti_3_lastn 	= $data_p3n['0'];
							$data_now123		= mysqli_num_rows($sql_kk003n);
							$data_pn3 			= $data_now123['0'];
							?>
							<?php
							$sql_00004n			= "select SUM(lama_cuti) as lama_cuti from cuti where id_pegawai='$id_pegawai' and tahun='$yearsnow' and id_cuti='4' and status='Setuju'";
							$sql_kk004n 		= mysqli_query($conn, $sql_00004n);
							$data_p4n 			= mysqli_fetch_array($sql_kk004n);
							$data_cuti_4_lastn 	= $data_p4n['0'];
							$data_now1234		= mysqli_num_rows($sql_kk004n);
							$data_pn4 			= $data_now1234['0'];
							?>
							<?php
							$sql_00005n			= "select SUM(lama_cuti) as lama_cuti from cuti where id_pegawai='$id_pegawai' and tahun='$yearsnow' and id_cuti='5' and status='Setuju'";
							$sql_kk005n 		= mysqli_query($conn, $sql_00005n);
							$data_p5n 			= mysqli_fetch_array($sql_kk005n);
							$data_cuti_5_lastn 	= $data_p5n['0'];
							$data_now12345		= mysqli_num_rows($sql_kk005n);
							$data_pn5 			= $data_now12345['0'];
							?>
							<?php
							$sql_00006n			= "select SUM(lama_cuti) as lama_cuti from cuti where id_pegawai='$id_pegawai' and tahun='$yearsnow' and id_cuti='6' and status='Setuju'";
							$sql_kk006n 		= mysqli_query($conn, $sql_00006n);
							$data_p6n 			= mysqli_fetch_array($sql_kk006n);
							$data_cuti_6_lastn 	= $data_p6n['0'];
							$data_now123456		= mysqli_num_rows($sql_kk006n);
							$data_pn6 			= $data_now123456['0'];
							?>
							
							<?php
							$cutitahunan2t1hun = 12 - $data_cuti_1_last1;
							$cutitahunan1t1hun = 12 - $data_cuti_1_last;
							if ($cutitahunan2t1hun >= 6)
							{
							$cutitahun2		= 6;
							}
							else
							{
							$cutitahun2		= $cutitahunan2t1hun;
							}
							
							if ($cutitahunan1t1hun >= 6)
							{
							$cutitahun1		= 6;
							}
							else
							{
							$cutitahun1		= $cutitahunan1t1hun;
							}
							
							
							if ($data_cuti_1_last <= 12)
							{
							$tahunan_tahunini = 12 - $data_cuti_1_lastn + $cutitahun2 + $cutitahun1 ;
							}
							else
							{
							$tahunan_tahunini = 12 - $data_cuti_1_lastn;
							}
							?>
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

  border-top: none;
  border-left: none;
  border-right: none;
  border-bottom:none;
  font-family:Georgia, "Times New Roman", Times, serif;
  font-size:11px;
 
}
#table th {
 	padding: 5px 5px;
  	border-top: 1px solid #000000;
  	border-bottom: 1px solid #000000;
 	border-left: none;
  	border-right: none;
 	background: #333333  ;
    color:  #fff;
    font-weight: bold;
	text-align:left;
  
}
#table td {
 padding: 3px 3px;
  border-top: none;
  border-bottom: 1px dotted #000000;
  border-left: none;
  border-right: none;
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
		<td width="10%">&nbsp;</td>
		<td width="2%">&nbsp;</td>
		<td width="28%">&nbsp;</td>
		<td width="25%">&nbsp;</td>
		<td width="30%">Banjarbaru, <?php echo $tgl_pengajuan; ?> </td>
	  </tr>
	  <tr>
	    <td>&nbsp;</td>
	    <td>&nbsp;</td>
	    <td>&nbsp;</td>
	    <td>&nbsp;</td>
	    <td>Kepada Yth ;</td>
     </tr>
	  <tr>
	    <td>&nbsp;</td>
	    <td>&nbsp;</td>
	    <td>&nbsp;</td>
	    <td>&nbsp;</td>
	    <td><b>Kepala BKPP Kota Banjarbaru</b></td>
     </tr>
	  <tr>
	    <td>&nbsp;</td>
	    <td>&nbsp;</td>
	    <td>&nbsp;</td>
	    <td>&nbsp;</td>
	    <td>di - </td>
     </tr>
	  <tr>
	    <td>&nbsp;</td>
	    <td>&nbsp;</td>
	    <td>&nbsp;</td>
	    <td>&nbsp;</td>
	    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; BANJARBARU</td>
     </tr>
	 
	  
	  
	  
	  
	  <tr>
	    <td>&nbsp;</td>
	    <td>&nbsp;</td>
	    <td colspan="3"></td>
     </tr>
	     
         <tr>
           <td colspan="5" style="font-size:11px">		  </td>
         </tr>
         <tr>
           <td colspan="5" align="center" style="font-size:16px"><strong>FORMULIR PERMINTAAN DAN PEMBERIAN CUTI </strong></td>
         </tr>
         <tr>
           <td colspan="5" align="center" style="font-size:12px"><strong>NOMOR : <?php echo $kd_cuti;?>/<?php echo $no_cuti;?>-BKPP/<?php echo $tahun;?></strong></td>
         </tr>
         <tr>
           <td colspan="5" align="center" style="font-size:12px"></td>
         </tr>
	</table>
	
   <table width="100%" id="table">
  <tr>
    <th colspan="7" ><strong>I. DATA PEGAWAI </strong></th>
    </tr>
  <tr>
    <td c width="10%">Nama</td>
    <td width="2%">:</td>
    <td width="48%">
												<strong>
												 <?PHP
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
												  
												  ?>
												
												<?php echo $namalengkap;?>
												
												</strong>
	
	
	</td>
    <td width="5%">&nbsp;</td>
    <td width="15%">
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
													<?php echo $nanana ?> 
	
	
	</td>
    <td width="2%">:</td>
    <td width="18%"><?php echo $nipp ?></td>
  </tr>
  <tr>
    <td>Jabatan</td>
    <td>:</td>
    <td><?php echo $data_kk11['jabatan'] ?></td>
    <td>&nbsp;</td>
    <td>Masa Kerja </td>
    <td>:</td>
    <td>
													<?php
													if ($status_p==1)
													{
													findage("$tgl_pns");
													}
													else
													{
													
													}
													?>
	
	</td>
  </tr>
  <tr>
    <td>Unit Kerja </td>
    <td>:</td>
    <td><?php echo $unit_kerja; ?></td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>
<table width="100%" id="table">
  <tr>
    <th ><strong>II. JENIS CUTI YANG DIAMBIL </strong></th>
    </tr>
  <tr>
    <td><strong><?php echo $nama_cuti; ?> </strong></td>
  </tr>
</table>
<table width="100%" id="table">
  <tr>
    <th ><strong>III. ALASAN CUTI </strong></th>
    </tr>
  <tr>
    <td><strong><?php echo $alasan; ?> </strong></td>
  </tr>
</table>

<table width="100%" id="table">
  <tr>
    <th colspan="3" ><strong> IV. LAMANYA CUTI </strong></th>
    </tr>
  <tr>
    <td width="35%"><strong><?php echo $lama_cuti; ?> Hari Kerja</strong></td>
    <td width="30%" align="right">Tanggal Cuti : </td>
    <td width="35%"><strong><?php echo $tgl_awal; ?> </strong> s.d <strong><?php echo $tgl_akhir; ?> </strong></td>
  </tr>
</table>
<table width="100%" id="table">
  <tr>
    <th colspan="4" ><strong>V. CATATAN CUTI</strong></th>
    </tr>
  <tr>
    <td width="38%">Tahun <?php echo $yearsnow; ?> </td>
    <td width="2%">&nbsp;</td>
    <td width="30%">Tahun <?php echo $yearslast; ?> </td>
    <td width="30%">Tahun <?php echo $yearslast2; ?> </td>
  </tr>
  <tr>
    <td valign="top">
	<strong> Sisa Cuti Tahunan sebanyak <?php echo $tahunan_tahunini; ?> Hari Kerja</strong><br>
	<?php
	if ($data_pn1!=0)
	{
	?>
	Cuti Tahunan Sebanyak <strong>
	
	<?php echo $data_cuti_1_lastn; ?> 
	Hari Kerja</strong><br>
	<?php
	}
	else
	{
	}
	?>
	
	
	
	<?php
	if ($data_pn2!=0)
	{
	?>
	Cuti Alasan Penting Sebanyak <strong>
	
	<?php echo $data_cuti_2_lastn; ?> 
	Hari Kerja</strong><br>
	<?php
	}
	else
	{
	}
	?>
	
	<?php
	if ($data_pn3!=0)
	{
	?>
	Cuti  Sakit Sebanyak <strong>
	
	<?php echo $data_cuti_3_lastn; ?> 
	Hari Kerja</strong><br>
	<?php
	}
	else
	{
	}
	?>
	
	<?php
	if ($data_pn4!=0)
	{
	?>
	Cuti Keguguran Sebanyak <strong>
	
	<?php echo $data_cuti_4_lastn; ?> 
	Hari Kerja</strong><br>
	<?php
	}
	else
	{
	}
	?>
	
	<?php
	if ($data_pn5!=0)
	{
	?>
	Cuti Melahirkan Sebanyak <strong>
	
	<?php echo $data_cuti_5_lastn; ?> 
	Hari Kerja</strong><br>
	<?php
	}
	else
	{
	}
	?>
	
	<?php
	if ($data_pn6!=0)
	{
	?>
	Cuti Diluar Tanggungan Negara Sebanyak <strong>
	
	<?php echo $data_cuti_6_lastn; ?> 
	Hari Kerja</strong><br>
	<?php
	}
	else
	{
	}
	?>
	</td>
    <td valign="top">&nbsp;</td>
    <td valign="top">
	
	<?php
	if ($jumlah_cuti_1 != 0)
	{
	?>
	Cuti Tahunan Sebanyak <strong>
	
	<?php echo $data_cuti_1_last; ?> 
	Hari Kerja</strong><br>
	<?php
	}
	else
	{
	}
	?>
	
	
	
	<?php
	if ($jumlah_cuti_2 != 0)
	{
	?>
	Cuti Alasan Penting Sebanyak <strong>
	
	<?php echo $data_cuti_2_last; ?> 
	Hari Kerja</strong><br>
	<?php
	}
	else
	{
	}
	?>
	
	<?php
	if ($jumlah_cuti_3 != 0)
	{
	?>
	Cuti  Sakit Sebanyak <strong>
	
	<?php echo $data_cuti_3_last; ?> 
	Hari Kerja</strong><br>
	<?php
	}
	else
	{
	}
	?>
	
	<?php
	if ($jumlah_cuti_4 != 0)
	{
	?>
	Cuti Keguguran Sebanyak <strong>
	
	<?php echo $data_cuti_4_last; ?> 
	Hari Kerja</strong><br>
	<?php
	}
	else
	{
	}
	?>
	
	<?php
	if ($jumlah_cuti_5 != 0)
	{
	?>
	Cuti Melahirkan Sebanyak <strong>
	
	<?php echo $data_cuti_5_last; ?> 
	Hari Kerja</strong><br>
	<?php
	}
	else
	{
	}
	?>
	
	<?php
	if ($jumlah_cuti_6 != 0)
	{
	?>
	Cuti Diluar Tanggungan Negara Sebanyak <strong>
	
	<?php echo $data_cuti_6_last; ?> 
	Hari Kerja</strong><br>
	<?php
	}
	else
	{
	}
	?>
	 
	</td>
    <td valign="top">
	
	<?php
	if ($data_p111 !=0)
	{
	?>
	Cuti Tahunan Sebanyak <strong>
	
	<?php echo $data_cuti_1_last1; ?> 
	Hari Kerja</strong><br>
	<?php
	}
	else
	{
	}
	?>
	
	
	
	<?php
	if ($data_p211 !=0)
	{
	?>
	Cuti Alasan Penting Sebanyak <strong>
	
	<?php echo $data_cuti_2_last1; ?> 
	Hari Kerja</strong><br>
	<?php
	}
	else
	{
	}
	?>
	
	<?php
	if ($data_p311!=0)
	{
	?>
	Cuti  Sakit Sebanyak <strong>
	
	<?php echo $data_cuti_3_last1; ?> 
	Hari Kerja</strong><br>
	<?php
	}
	else
	{
	}
	?>
	
	<?php
	if ($data_p411!=0)
	{
	?>
	Cuti Keguguran Sebanyak <strong>
	
	<?php echo $data_cuti_4_last1; ?> 
	Hari Kerja</strong><br>
	<?php
	}
	else
	{
	}
	?>
	
	<?php
	if ($data_p511!=0)
	{
	?>
	Cuti Melahirkan Sebanyak <strong>
	
	<?php echo $data_cuti_5_last1; ?> 
	Hari Kerja</strong><br>
	<?php
	}
	else
	{
	}
	?>
	
	<?php
	if ($data_p611 !=0)
	{
	?>
	Cuti Diluar Tanggungan Negara Sebanyak <strong>
	<?php echo $data_cuti_6_last1; ?> 
	Hari Kerja</strong><br>
	<?php
	}
	else
	{
	}
	?>
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	</td>
  </tr>
</table>
<table width="100%" id="table">
  <tr>
    <th colspan="2" ><strong>VI. ALAMAT SELAMA MENJALANKAN CUTI </strong></th>
    </tr>
  <tr>
    <td width="60%" valign="top"><?php echo $alamat_cuti; ?> <br> Telp. <?php echo $telp; ?></td>
    <td width="40%"  align="center">
	Hormat Saya,
	<br>
	<br>
	<br>
	<strong><?php echo $namalengkap;?></strong>
	<br>
	<?php echo $nanana ?> <?php echo $nipp ?>	</td>
  </tr>
</table>
<table width="100%" id="table">
  <tr>
    <th colspan="4" ><strong>VII. PERTIMBANGAN ATASAN LANGSUNG</strong></th>
    </tr>
  <tr>
   <td width="20%" align="center">DISETUJUI</td>
    <td width="20%" align="center">PERUBAHAN</td>
    <td width="20%" align="center">DITANGGUHKAN</td>
    <td width="40%" align="center">TIDAK DISETUJUI</td>
  </tr>
  <tr>
    <td align="center">&nbsp;</td>
    <td align="center">&nbsp;</td>
    <td align="center">&nbsp;</td>
    <td align="center"><BR><BR></td>
  </tr>
  <tr>
    <td align="center">&nbsp;</td>
    <td align="center">&nbsp;</td>
    <td align="center">&nbsp;</td>
    <td align="center">
	<?php echo $jabatanaa; ?>,
	<br>
	<br>
	<br>
	<strong><?php echo $namaaa; ?></strong>
	<br>
	NIP. <?php echo $nipaa; ?>	</td>
  </tr>
</table>
<table width="100%" id="table">
  <tr>
    <th colspan="4" ><strong>VIII. KEPUTUSAN PEJABAT YANG BERWENANG MEMBERIKAN CUTI</strong></th>
    </tr>
  <tr>
    <td width="20%" align="center">DISETUJUI</td>
    <td width="20%" align="center">PERUBAHAN</td>
    <td width="20%" align="center">DITANGGUHKAN</td>
    <td width="40%" align="center">TIDAK DISETUJUI</td>
  </tr>
  <tr>
    <td align="center">&nbsp;</td>
    <td align="center">&nbsp;</td>
    <td align="center">&nbsp;</td>
    <td align="center"><BR><BR></td>
  </tr>
  <tr>
    <td align="left" valign="middle" ><?php QRcode::png("$code", "png/$code.png", "L", 2, 2); ?><?php echo "<img src='png/$code.png' />" ?></td>
    <td align="center">&nbsp;</td>
    <td align="center">&nbsp;</td>
    <td align="center">
	KEPALA BADAN KEPEGAWAIAN,
	<br>PENDIDIKAN DAN PELATIHAN
	<br>
	<br>
	<br>
	<strong>Dra. SRI LAILANA</strong>
	<br>
	NIP. 197304141993022003	</td>
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
$dompdf->stream("Form Cuti ".$namadokumen.".pdf");

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