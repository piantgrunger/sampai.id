<?php
  	include "assets/include/koneksi.php";
	require_once("dompdf/dompdf_config.inc.php");
	ob_start();
	
	$id_sppd = $_GET['id']
?>
<?php include "phpqrcode/qrlib.php"; ?>
<?php
					$sql_cuti 			="select * from sppd where id_sppd='$id_sppd' ";
					$mysql_cuti 		= mysqli_query ($conn,$sql_cuti);
					$fetch_sql_cuti		= mysqli_fetch_array($mysql_cuti);
	
					$id_perjalanan		= $fetch_sql_cuti['id_perjalanan'];
					$id_pegawai			= $fetch_sql_cuti['id_pegawai'];
					$maksud				= $fetch_sql_cuti['maksud'];
					$angkutan			= $fetch_sql_cuti['angkutan'];
					$berangkat			= $fetch_sql_cuti['berangkat'];
					$tujuan				= $fetch_sql_cuti['tujuan'];
					$lama				= $fetch_sql_cuti['lama'];
					$tgl_berangkat		= $fetch_sql_cuti['tgl_berangkat'];
					$tgl_kembali		= $fetch_sql_cuti['tgl_kembali'];
					$tahun				= $fetch_sql_cuti['tahun'];
					$tgl_pengajuan		= $fetch_sql_cuti['tgl_pengajuan'];
					$anggaran			= $fetch_sql_cuti['anggaran'];
					$keterangan			= $fetch_sql_cuti['keterangan'];
					$no_sppd			= $fetch_sql_cuti['no_sppd'];
					
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
					$namadokumen .= $tgl_berangkat;
					
					
					$nip_thn		= substr($nip,8,4);
					$nip_bln		= substr($nip,12,2);
				
					$tgl_pns 		= 01;
					$tgl_pns 		.= '-';
					$tgl_pns 		.= $nip_bln;
					$tgl_pns 		.= '-';
					$tgl_pns 		.= $nip_thn;
					
					
	
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
					
												  if ($gelar_blk =='')
												  {
												  $namalengkapaa	= $gelar_dpn;
												  $namalengkapaa	.= ' ';
												  $namalengkapaa	.= $nama;
												 
												  }
												  else
												  {
												  $namalengkapaa	= $gelar_dpn;
												  $namalengkapaa	.= ' ';
												  $namalengkapaa	.= $nama;
												  $namalengkapaa	.= ', ';
												  $namalengkapaa	.= $gelar_blk;
												  }
												  
												
?>
					<?php
													$sql_000	= "select * from jenis_pd where id_pd='$id_perjalanan'";
													$sql_kk0 	= mysqli_query($conn, $sql_000);
													$data_kk0 	= mysqli_fetch_array($sql_kk0);
													$nama_pd	= $data_kk0['pd'];
					?>


							<?php
							$yearsnow	= date("Y");
							$yearslast	= $yearsnow - 1;
							$yearslast2	= $yearsnow - 2;
							
							$code		= $nama_pd;
							$code		.= "-";
							$code		.= $yearsnow;
							$code		.= "-";
							$code		.= $nama;
							$code		.= "-";
							$code		.= $tgl_berangkat;
							$code		.= "-";
							$code		.= $tujuan;
							$code		.= "-";
							$code		.= "BKPP BJB";

							?>
							
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
	 margin-top: 10px; 
	 margin-bottom: 0px;  
	 margin-left:10px; 
	 margin-right:10px; 
	 size:A4 landscape;
		}
     #header { position: fixed; left: 0px; top: -100px; right: 0px; height: 100px;  text-align: center; padding-top:5px;  }
    
	 #footer {
	
	width:100%;
	height:35px;
	position:fixed;
	bottom:0;
	left:0; font-family:Georgia, "Times New Roman", Times, serif; font-size:8px; }

     #footer .page:after { content: counter(page);  }
	  


#tablel {

  border-top: none;
  border-left: none;
  border-right: none;
  font-family:Georgia, "Times New Roman", Times, serif;
  font-size:11px;
 
}
#tablel td {
 padding: 2px 2px; margin: 0 0 0 0;
  border-top: 1px solid #000000;
  border-bottom: 1px solid #000000;
  border-left: 1px solid #000000;
  border-right: 1px solid #000000;
}

 #table {

  border-top: none;
  border-left: none;
  border-right: none;
   border-bottom: none;
  font-family:Georgia, "Times New Roman", Times, serif;
  font-size:9px;  
 
}


#table th {
 	padding: 5px 5px;
  	border-top: 1px solid #000000;
  	border-bottom: 1px solid #000000;
 	border-left: none;
  	border-right: none;
 	background:  #35A9DB;
    color:  #fff;
    font-weight: bold;
	text-align:left;
  
}
#table td {
 padding: 2px 2px;
  border-top: none;
  border-bottom: 1px dotted #000000;
  border-left: none;
  border-right: none;
}




 #table2 {

  border-top: none;
  border-left: none;
  border-right: none;
 border-bottom: none;

  font-family:Georgia, "Times New Roman", Times, serif;
  font-size:11px;
 
}


#table2 th {
 	padding: 5px 5px;
  	border-top: 1px solid #000000;
  	border-bottom: 1px solid #000000;
 	border-left: none;
  	border-right: none;
 	background:  #35A9DB;
    color:  #fff;
    font-weight: bold;
	text-align:left;
  
}
#table2 td {
 padding: 3px 3px;
  border-top: none;
  border-bottom: 1px dotted #000000;
  border-left: none;
  border-right: none;
}
	
        </style>
		
    </head>

    <body>
   
   <div id="footer">
     <p style="font-size:12px" align="center"> Sistem Informasi Umum Kepegawaian BKPP Kota Banjarbaru @2019</p>
   </div>
   <div id="content">
  <table width="100%" border="0"  >
  <tr>
    <td width="48%" rowspan="5" align="center" valign="top">
	<img src="assets/images/kop_2.jpg" width="550"  >
	<br>
	<span style="font-size: 14px"><strong>SURAT PERINTAH PERJALANAN DINAS (SPD) </strong></span><br>
	<span style="font-size:12px">Nomor : 090/<?php echo $no_sppd;?>/SPD/UM/<?php echo $tahun; ?> </span><br><br>
	
	<table width="100%" border="1" id="table2" >
	  <tr>
	    <td width="2%" 	align="center" valign="top">1.</td>
          <td width="46%" align="left" valign="top">Pengguna Anggaran </td>
          <td width="2%" 	align="center" valign="top">:</td>
          <td width="50%" align="justify"  valign="top">Kepala Badan Kepegawaian, Pendidikan dan Pelatihan Kota Banjarbaru </td>
        </tr>
	  <tr>
	    <td 	align="center" valign="top">2.</td>
          <td align="left" valign="top">Nama/<?php echo $nanana ?> Pegawai Yang di perintahkan</td>
          <td 	align="center" valign="top">:</td>
          <td align="left" valign="top">
		  <strong><?php echo $namalengkapaa ?></strong>
		  <br>
		  <?php echo $nanana ?> <?php echo $nipp ?></td>
        </tr>
	  <tr>
	    <td 	align="center" valign="top">3.</td>
          <td align="left" valign="top">a. Pangkat </td>
          <td 	align="center" valign="top">:</td>
          <td align="left" valign="top"><?php echo $golongan ?></td>
        </tr>
	  <tr>
	    <td 	align="center" valign="top">&nbsp;</td>
          <td align="left" valign="top">b. Jabatan </td>
          <td 	align="center" valign="top">:</td>
          <td valign="top" align="justify">
            <?php
	
			$a21  = strtolower($jabatan);
			$a31  = ucwords($a21);
		
			 echo  $a31;?></td>
        </tr>
	  <tr>
	    <td 	align="center" valign="top">&nbsp;</td>
          <td align="left" valign="top">c. Gaji Pokok </td>
          <td 	align="center" valign="top">:</td>
          <td align="left" valign="top">&nbsp;</td>
        </tr>
	  <tr>
	    <td 	align="center" valign="top">&nbsp;</td>
          <td align="left" valign="top">d. Tingkat Menurut Peraturan Perjalanan Dinas </td>
          <td 	align="center" valign="top">:</td>
          <td align="left" valign="top">&nbsp;</td>
        </tr>
	  <tr>
	    <td 	align="center" valign="top">4.</td>
          <td align="left" valign="top">Maksud Perjalanan Dinas </td>
          <td 	align="center" valign="top">:</td>
          <td align="justify"  valign="top"><?php
	
			$a2  = strtolower($maksud);
			$a3  = ucwords($a2);
		
			 echo  $a3;?></td>
        </tr>
	  <tr>
	    <td 	align="center" valign="top">5.</td>
          <td align="left" valign="top">Alat angkut yang digunakan </td>
          <td 	align="center" valign="top">:</td>
          <td align="left" valign="top"><?php echo $angkutan ?></td>
        </tr>
	  <tr>
	    <td 	align="center" valign="top">6.</td>
          <td align="left" valign="top">a. Tempat Berangkat </td>
          <td 	align="center" valign="top">:</td>
          <td align="left" valign="top"><?php
	
			$a22  = strtolower($berangkat);
			$a222  = strtolower($tujuan);
			?>
            <?php echo ucwords($a22); ?></td>
        </tr>
	  <tr>
	    <td 	align="center" valign="top">&nbsp;</td>
          <td align="left" valign="top">b. Tempat Tujuan </td>
          <td 	align="center" valign="top">:</td>
          <td align="left" valign="top"><?php echo ucwords($a222); ?></td>
        </tr>
	  <tr>
	    <td 	align="center" valign="top">7.</td>
          <td align="left" valign="top">a. Lamanya Perjalanan Dinas </td>
          <td 	align="center" valign="top">:</td>
          <td align="left" valign="top"><?php echo $lama ?>   (<?php
	
	$angka		= terbilang($lama);
	$a1 		= ucwords($angka);

	 echo  $a1;?>
          ) Hari</td>
        </tr>
	  <tr>
	    <td 	align="center" valign="top">&nbsp;</td>
          <td align="left" valign="top">b. Tanggal Berangkat </td>
          <td 	align="center" valign="top">:</td>
          <td align="left" valign="top"><?php echo $tgl_berangkat ?></td>
        </tr>
	  <tr>
	    <td 	align="center" valign="top">&nbsp;</td>
          <td align="left" valign="top">c. Tanggal Kembali </td>
          <td 	align="center" valign="top">:</td>
          <td align="left" valign="top"><?php echo $tgl_kembali ?></td>
        </tr>
	  <tr>
	    <td 	align="center" valign="top">8.</td>
          <td align="left" valign="top">Pengikut</td>
          <td 	align="center" valign="top">:</td>
          <td align="left" valign="top">&nbsp;</td>
        </tr>
	  <tr>
	    <td 	align="center" valign="top">9.</td>
          <td align="left" valign="top">Pembebanan Anggaran </td>
          <td 	align="center" valign="top">:</td>
          <td align="left" valign="top"><?php echo $anggaran ?></td>
        </tr>
	  <tr>
	    <td 	align="center" valign="top">10.</td>
          <td align="left" valign="top">Keterangan</td>
          <td 	align="center" valign="top">:</td>
          <td align="left" valign="top"><?php echo $keterangan ?></td>
        </tr>
	  <tr>
	    <td 	align="center" valign="top">&nbsp;</td>
          <td align="left" valign="top">&nbsp;</td>
          <td 	align="center" valign="top">&nbsp;</td>
          <td align="left" valign="top">&nbsp;</td>
        </tr>
	  <tr>
	    <td 	align="center" valign="top">&nbsp;</td>
          <td align="left" valign="top">&nbsp;</td>
          <td 	align="center" valign="top">&nbsp;</td>
          <td align="left" valign="top">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Di Keluarkan di Banjarbaru </td>
        </tr>
	  <tr>
	    <td 	align="center" valign="top">&nbsp;</td>
          <td align="left" valign="top">&nbsp;</td>
          <td 	align="center" valign="top">&nbsp;</td>
          <td align="left" valign="top">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Tanggal <?php echo $tgl_pengajuan ?></td>
        </tr>
	  <tr>
	    <td 	align="center" valign="top">&nbsp;</td>
          <td align="left" valign="middle"><?php QRcode::png("$code", "png/$code.png", "L", 2, 2); ?><?php echo "<img src='png/$code.png' />" ?></td>
          <td 	align="center" valign="top">&nbsp;</td>
          <td align="center" valign="top"><strong>KEPALA BADAN KEPEGAWAIAN, <BR> PENDIDIKAN DAN PELATIHAN </strong><BR><BR><BR>
            
            <strong>Dra. SRI LAILANA</strong><BR>Pembina<br>
            NIP. 19730411 199302 2 003</td>
        </tr>
	  </table></td>
    <td width="4%">&nbsp;</td>
    <td width="48%" rowspan="5" valign="top">
	<table width="100%" border="0" id="tablel" cellspacing="0" >
      <tr>
        <td width="50%">&nbsp;</td>
        <td width="50%">
		<table width="100%" border="1" id="table" >
  <tr>
    <td width="2%">I.</td>
    <td width="36%">Berangkat dari </td>
    <td width="2%">:</td>
    <td width="60%"><?php echo ucwords($a22); ?></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td colspan="3">(Tempat Kedudukan)</td>
    </tr>
  <tr>
    <td>&nbsp;</td>
    <td>Ke</td>
    <td>:</td>
    <td><?php echo ucwords($a222); ?></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>Pada Tanggal </td>
    <td>:</td>
    <td><?php echo $tgl_berangkat ?></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td colspan="3" align="center">
	Kepala Sub Bagian Umum dan Kepegawaian <br><br><br><br>
	<strong>LUKI DWI JANARKO, S.Kom</strong><BR>
	Penata <br>
	NIP. 19850521 201001 1 009	</td>
    </tr>
</table></td>
      </tr>
      <tr>
        <td valign="top">
		<table width="100%" border="1" id="table" >
		  <tr>
			<td width="2%">II.</td>
			<td width="36%">Tiba  di </td>
			<td width="2%">:</td>
			<td width="60%"><?php echo ucwords($a222); ?></td>
		  <tr>
		    <td>&nbsp;</td>
		    <td>&nbsp;</td>
		    <td>&nbsp;</td>
		    <td>&nbsp;</td>
		    </tr>
		  <tr>
			<td>&nbsp;</td>
			<td>Pada Tanggal </td>
			<td>:</td>
			<td><?php echo $tgl_berangkat ?></td>
		  </tr>
		  <tr>
			<td>&nbsp;</td>
			<td colspan="3" align="center">
			Kepala <br>
			<br><br>
			
			( ____________________________________ )</td>
			</tr>
		</table>		</td>
        <td valign="top">
		<table width="100%" border="1" id="table" >
		  <tr>
			<td width="2%"></td>
			<td width="36%">Berangkat dari </td>
			<td width="2%">:</td>
			<td width="60%"><?php echo ucwords($a222); ?></td>
		  <tr>
		    <td>&nbsp;</td>
		    <td>Ke</td>
		    <td>:</td>
		    <td><?php echo ucwords($a22); ?></td>
		    </tr>
		  <tr>
			<td>&nbsp;</td>
			<td>Pada Tanggal </td>
			<td>:</td>
			<td><?php echo $tgl_kembali ?></td>
		  </tr>
		  <tr>
			<td>&nbsp;</td>
			<td colspan="3" align="center">
				Kepala <br>
			<br><br>
			
			( ____________________________________ )</td>
			</tr>
		</table>		</td>
      </tr>
	  
	  <tr>
        <td valign="top">
		<table width="100%" border="1" id="table" >
		  <tr>
			<td width="2%">III.</td>
			<td width="36%">Tiba  di </td>
			<td width="2%">:</td>
			<td width="60%"></td>
		  <tr>
		    <td>&nbsp;</td>
		    <td>&nbsp;</td>
		    <td>&nbsp;</td>
		    <td>&nbsp;</td>
		    </tr>
		  <tr>
			<td>&nbsp;</td>
			<td>Pada Tanggal </td>
			<td>:</td>
			<td>&nbsp;</td>
		  </tr>
		  <tr>
			<td>&nbsp;</td>
			<td colspan="3" align="center">
			Kepala <br>
			<br>
	
			( ____________________________________ )</td>
			</tr>
		</table>		</td>
        <td valign="top">
		<table width="100%" border="1" id="table" >
		  <tr>
			<td width="2%"></td>
			<td width="36%">Berangkat dari </td>
			<td width="2%">:</td>
			<td width="60%"></td>
		  <tr>
		    <td>&nbsp;</td>
		    <td>Ke</td>
		    <td>:</td>
		    <td>&nbsp;</td>
		    </tr>
		  <tr>
			<td>&nbsp;</td>
			<td>Pada Tanggal </td>
			<td>:</td>
			<td>&nbsp;</td>
		  </tr>
		  <tr>
			<td>&nbsp;</td>
			<td colspan="3" align="center">
			Kepala <br><br>
			
	
			( ____________________________________ )</td>
			</tr>
		</table>		</td>
      </tr>
	  <tr>
        <td valign="top">
		<table width="100%" border="1" id="table" >
		  <tr>
			<td width="2%">IV.</td>
			<td width="36%">Tiba  di </td>
			<td width="2%">:</td>
			<td width="60%"></td>
		  <tr>
		    <td>&nbsp;</td>
		    <td>&nbsp;</td>
		    <td>&nbsp;</td>
		    <td>&nbsp;</td>
		    </tr>
		  <tr>
			<td>&nbsp;</td>
			<td>Pada Tanggal </td>
			<td>:</td>
			<td>&nbsp;</td>
		  </tr>
		  <tr>
			<td>&nbsp;</td>
			<td colspan="3" align="center">
			Kepala <br>
			<br>
		
			( ____________________________________ )</td>
			</tr>
		</table>		</td>
        <td valign="top">
		<table width="100%" border="1" id="table" >
		  <tr>
			<td width="2%"></td>
			<td width="36%">Berangkat dari </td>
			<td width="2%">:</td>
			<td width="60%"></td>
		  <tr>
		    <td>&nbsp;</td>
		    <td>Ke</td>
		    <td>:</td>
		    <td>&nbsp;</td>
		    </tr>
		  <tr>
			<td>&nbsp;</td>
			<td>Pada Tanggal </td>
			<td>:</td>
			<td>&nbsp;</td>
		  </tr>
		  <tr>
			<td>&nbsp;</td>
			<td colspan="3" align="center">
			Kepala <br>
			<br>
		
			( ____________________________________ )</td>
			</tr>
		</table>		</td>
      </tr>
      <tr>
        <td colspan="2">
		<table width="100%" border="1" id="table" >
		  <tr>
			<td width="2%">V.</td>
			<td width="36%">Tiba  di </td>
			<td width="2%">:</td>
			<td width="60%">(Tempat Kedudukan) </td>
		  <tr>
		    <td>&nbsp;</td>
		    <td> Pada Tanggal</td>
		    <td>:</td>
		    <td><?php echo $tgl_kembali ?></td>
		    </tr>
		  <tr>
		    <td>&nbsp;</td>
		    <td>Pejabat yang memberikan Perintah</td>
		    <td>:</td>
		    <td>&nbsp;</td>
		    </tr>
		  <tr>
			<td>&nbsp;</td>
			<td colspan="3">Telah diperiksa dengan keterangan bahwa perjalanan dinas tersebut diatas benar-benar dilakukan atas perintahnya dan semata-mata untuk kepentingan jabatan dalam waktu yang sesingkat-singkatnya</td>
			</tr>
		  <tr>
			<td>&nbsp;</td>
			<td colspan="3" align="center">
			<strong>KEPALA BADAN KEPEGAWAIAN, PENDIDIKAN DAN PELATIHAN </strong><BR><BR><BR><br>
		
		<strong>Dra. SRI LAILANA</strong><BR>Pembina<br>
		NIP. 19730411 199302 2 003</td>
			</tr>
		</table>		</td>
        </tr>
      <tr>
        <td colspan="2">
		<table width="100%" border="1" id="table" >
		  <tr>
			<td width="2%">V.</td>
			<td width="36%">Catatan Lain-Lain </td>
			<td width="2%">:</td>
			<td width="60%"></td>
		  <tr>
		    <td valign="top">VI.</td>
		    <td colspan="3">Pejabat yang berwenang menerbitkan SPD, pegawai yang melakukan perjalanan dinas, para pejabat yang mengesahkan tanggal berangkat/ tiba, serta bendaharawan bertanggung jawab berdasarkan peraturan pemerintah apabila daerah menderita rugi akibat kesalahan, kealpaan. </td>
		    </tr>
		</table>		</td>
        </tr>
     
    </table></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    </tr>
  <tr>
    <td>&nbsp;</td>
    </tr>
  <tr>
    <td>&nbsp;</td>
    </tr>
  <tr>
    <td>&nbsp;</td>
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
$dompdf->stream("Form SPPD ".$namadokumen.".pdf");

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