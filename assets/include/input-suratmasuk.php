<?php include 'koneksi.php'; ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
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
  font-size:12px;
  text-align:center;
 
}
#table_11 {

  border-top: none;
  border-left: 1px dotted #000000;
  border-right: none;
  border-bottom:none;
  font-family:Georgia, "Times New Roman", Times, serif;
  font-size:12px;
  text-align:center;
 
}
#table_11 td {
 padding: 3px 3px;
  border-top: none;
  border-left: none;
  border-bottom: none;
  border-right: none;
}
	  
 #table {

  border-top: 1px solid #000000;
  border-left: 1px solid #000000;
  border-right: 1px solid #000000;
  border-bottom:1px solid #000000;
  font-family:Georgia, "Times New Roman", Times, serif;
  font-size:12px;
 
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

<script>
function Print() {
document.body.offsetHeight;
window.print();
}
</script>


</head>

<body>
<?
if (isset($_POST['asal_surat'])){
				$allowed_ext	= array('doc', 'docx', 'xls', 'xlsx', 'ppt', 'pptx', 'pdf', 'rar', 'zip', 'jpg', 'jpeg', 'gif', 'png');
				$file_name		= $_FILES['file']['name'];
				$file_ext		= strtolower(end(explode('.', $file_name)));
				$file_size		= $_FILES['file']['size'];
				$file_tmp		= $_FILES['file']['tmp_name'];
				
				$allowed_ext1	= array('doc', 'docx', 'xls', 'xlsx', 'ppt', 'pptx', 'pdf', 'rar', 'zip', 'jpg', 'jpeg', 'gif', 'png');
				$file_name1		= $_FILES['file1']['name'];
				$file_ext1		= strtolower(end(explode('.', $file_name1)));
				$file_size1		= $_FILES['file1']['size'];
				$file_tmp1		= $_FILES['file1']['tmp_name'];
				
			
				
				
	//$status			= 1; //untuk pegawai negeri sipil		
	$no_agenda		= $_POST['no_agenda'];
	$asal_surat		= $_POST['asal_surat'];
	$tgl			= $_POST['tgl'];
	$bln			= $_POST['bln'];
	$thn			= $_POST['thn'];
	$kd_surat		= $_POST['kd_surat'];
	$no_surat		= $_POST['no_surat'];
	$sifat			= $_POST['sifat'];
	
	
					$sql_cuti 			="select * from tbl_klasifikasi where id_klasifikasi='$kd_surat' ";
					$mysql_cuti 		= mysqli_query ($conn,$sql_cuti);
					$fetch_sql_cuti		= mysqli_fetch_array($mysql_cuti);
	
					$kode_srt				= $fetch_sql_cuti['kode'];
					$nama				= $fetch_sql_cuti['nama'];


	$perihal		= $_POST['perihal'];
	
	
	$name			=strtolower($perihal);
	$a1 		    = ucwords($name);

	
	$tgl_awal 				= $tgl;
	$tgl_awal 				.= ' ';
	$tgl_awal 				.= $bln;
	$tgl_awal 				.= ' ';
	$tgl_awal 				.= $thn;
	
			
				$tgl			= date("d-m-Y, g:i a"); 
				$year			= date("d-m-Y");
				$year1			= date("Y");
				$tgll			= date("dmY"); 
			
				

				$test_nip 		= md5($tgl_awal);
				$na				= $tgl;
				$na				.=$test_nip;

				$kode_xxx 		= md5($na);
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

				
			

					
				if(in_array($file_ext, $allowed_ext) === true){
					if($file_size < 3044070){
						$lokasi = 'files/'.$kode_xxx.'.'.$file_ext;
						move_uploaded_file($file_tmp, $lokasi); //lamp1
						
					
						
						$in_q ="INSERT INTO surat_masuk VALUES(NULL, 
						'$no_agenda', 
						'$asal_surat', 
						'$tgl_awal', 
						'$kd_surat', 
						'$no_surat',
						'$sifat',
						'$a1', 
						'$tgl_ajuan', 
						'$lokasi',
						'$admin', 
						'$y_now'
						)";
						$in = mysqli_query($conn, $in_q);
						//echo $in_q;
						if($in){
						?>
						 
						<table width="100%" border="0" id="table_1" >
  <tr>
    <td align="center"><a href="#" onclick="Print()" class="link"><img src="../images/kop.jpg" width="725" /></a></td>
  </tr>
  <tr>
    <td align="center" style="font-size:14px"><a href="../../surat-masuk.php"><strong>LEMBAR DISPOSISI</strong></a></td>
  </tr>
  <tr>
    <td></td>
  </tr>
</table>
<table width="100%" border="1" id="table" cellspacing="0">
  <tr>
    <td width="70%" valign="top">
	<table width="100%" border="1" id="table_3">
  <tr>
    <td width="20%">Perihal</td>
    <td width="1%">:</td>
    <td width="79%"><?PHP echo $a1; ?></td>
  </tr>
  <tr>
    <td>Surat Dari </td>
    <td>:</td>
    <td><?PHP echo $asal_surat; ?></td>
  </tr>
  <tr>
    <td>Tanggal Surat </td>
    <td>:</td>
    <td><?PHP echo $tgl_awal; ?></td>
  </tr>
  <tr>
    <td>Nomor Surat </td>
    <td>:</td>
    <td><?PHP echo $no_surat; ?></td>
  </tr>
</table>

	
	</td>
    <td width="30%" valign="middle" align="left">
	<table width="100%" border="0" id="table_11" cellspacing="0">
  <tr>
    <td width="50%" align="center" valign="middle">Kode Surat : <strong><?PHP echo $kode_srt; ?></strong><br /></td>
    <td width="50%" align="center">No Agenda : </td>
  </tr>
  <tr>
   <td width= align="center" valign="middle" style="color:#FFFFFF; background-color:#333333"><strong>Sifat : <?PHP echo $sifat; ?></strong></td>
    <td align="center" valign="middle" style="font-size:20px"><strong><?PHP echo $no_agenda; ?></strong></td>
  </tr>
  
  <tr>
   <td colspan="2" align="center" valign="middle">Tanggal Diterima : <strong><?PHP echo $tgl_ajuan; ?></strong></td>
    </tr>
</table>

	</td>
  </tr>
</table>
<table width="100%" border="1" id="table">
  <tr>
    <td align="center" style="font-size:14px"><strong>ISI DISPOSISI</strong></td>
  </tr>
  <tr>
    <td><BR><BR><BR><BR><BR><BR><BR><BR><BR><BR><BR><BR><BR><BR><BR></td>
  </tr>
</table>
	<p style="font-size:12px" align="center"> Sistem Informasi Umum Kepegawaian BKPP Kota Banjarbaru @2019</p>					
						
						
						
						
						
						<?php
						}else{
						header("location:../../Data-Surat-Masuk.php?pesan=2&isi=Gagal Menambahkan Data Pegawai Baru Dengan Nama $name  ");

							//echo '<div class="error">ERROR: Gagal upload file!</div>';
							//echo $in_q;
						}
					}
					else{
						header("location:../../Data-Pegawai.php?pesan=2&isi=ERROR: Besar ukuran file (file size) maksimal 1 Mb ");
						//echo '<div class="error">ERROR: Besar ukuran file (file size) maksimal 1 Mb!</div>';
					}
				}else{
echo $in_q;
				}
}
?>





</body>
</html>
