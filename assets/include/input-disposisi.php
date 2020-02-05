<?php include 'koneksi.php'; 

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


?>
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
  font-size:14px;
 
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
 padding: 10px 10px;
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
<?php

	$id_suratmasuk	= $_POST['id_suratmasuk'];
	$unitkerja		= $_POST['unitkerja'];
	$tgl			= $_POST['tgl'];
	$bln			= $_POST['bln'];
	$thn			= $_POST['thn'];
	$disposisi		= $_POST['disposisi'];


	$name			=strtolower($disposisi);
	$a1 		    = ucwords($name);

	
	$tgl_awal 				= $tgl;
	$tgl_awal 				.= ' ';
	$tgl_awal 				.= $bln;
	$tgl_awal 				.= ' ';
	$tgl_awal 				.= $thn;
	$yearsnow				= date("Y");
	
	$jml_data1 	= "SELECT * FROM surat_masuk where id_suratmasuk ='$id_suratmasuk' ";
	$query		= mysqli_query($conn, $jml_data1);
	$data = mysqli_fetch_array($query);
				
					$no_agenda		= $data['no_agenda'];
					$asal_surat		= $data['asal_surat'];
					$tgl_surat		= $data['tgl_surat'];
					$kd_surat		= $data['kd_surat'];
					$no_surat		= $data['no_surat'];
					$sifat			= $data['sifat'];
					$perihal		= $data['perihal'];
					$tgl_terima		= $data['tgl_terima'];
					$lokasi			= $data['lokasi'];
					$admin			= $data['admin'];
					$tahun			= $data['tahun'];
					
					$sql_00111	= "select * from unit_kerja where id_unitkerja='$unitkerja'";
					$sql_kk111 	= mysqli_query($conn, $sql_00111);
					$data_kk111	= mysqli_fetch_array($sql_kk111);
					$nama_unit		= $data_kk111['nama'];
					
					
					$sql_000	= "select * from tbl_klasifikasi where id_klasifikasi='$kd_surat'";
					$sql_kk0 	= mysqli_query($conn, $sql_000);
					$data_kk0 	= mysqli_fetch_array($sql_kk0);
					$kode_srt		= $data_kk0['kode'];
			
			
						$in_q ="INSERT INTO disposisi VALUES(NULL, 
						'$id_suratmasuk', 
						'$unitkerja', 
						'$a1', 
						'$tgl_awal',
						'$admin', 
						'$yearsnow','$tgl_ajuan'
						)";
						$in = mysqli_query($conn, $in_q);
						//echo $in_q;
						if($in){
						?>

<table width="100%" border="1" id="table">
  <tr>
    <td width="5%"><a href="#" onclick="Print()" class="link"><img src="../images/kop_1.jpg"  height="300" /></a></td>
    <td width="95%" valign="top"><table width="100%" border="1" id="table" cellspacing="0">
      <tr>
        <td width="30%">Index : </td>
        <td width="40%">Kode : <strong><?php echo $kode_srt; ?></strong></td>
        <td width="40%">Nomor Agenda : <strong><?php echo $no_agenda; ?></strong></td>
      </tr>
      <tr>
        <td colspan="3">Isi Ringkas : <strong><?php echo $perihal; ?></strong></td>
        </tr>
      <tr>
        <td colspan="3">Dari : <strong><?php echo $asal_surat; ?></strong></td>
        </tr>
      <tr>
        <td valign="top">Tanggal Surat : <br /><strong><?php echo $tgl_awal; ?></strong></td>
        <td valign="top">Nomor Surat : <br /><strong><?php echo $no_surat; ?></strong></td>
        <td valign="top">Lampiran : </td>
      </tr>
      <tr>
        <td valign="top">Diteruskan Kepada : <strong><?php echo $nama_unit; ?></strong></td>
        <td valign="top">Tanggal Diteruskan : <strong><?php echo $tgl_awal; ?></strong></td>
        <td valign="top">Tanda Terima : <br /><br /><br /></td>
      </tr>
      <tr>
        <td valign="top">D i s p o s i s i :</td>
        <td colspan="2" valign="top"><strong><?php echo $a1; ?></strong></td>
        </tr>
		 <tr>
        <td valign="top">&nbsp;</td>
        <td colspan="2" valign="top" align="right">Dicetak pada <?php echo $tgl_ajuan;?></td>
      </tr>
    </table>	</td>
  </tr>
</table>
					 



	
	

	<p style="font-size:12px" align="center"> <a href="../../surat-masuk.php">Sistem Informasi Umum Kepegawaian BKPP Kota Banjarbaru @2019</a></p>					
						
						
						
						
						
						<?php
						}
						else
						{
						//header("location:../../Data-Surat-Masuk.php?pesan=2&isi=Gagal Menambahkan Data Pegawai Baru Dengan Nama $name  ");

							//echo '<div class="error">ERROR: Gagal upload file!</div>';
							echo $in_q;
						}
					
?>





</body>
</html>
