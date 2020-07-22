<?php
	include "assets/include/koneksi.php";
	//include "asset/include/session_admin.php";
	
	//$menu_a ='active';
?>
<?php include "phpqrcode/qrlib.php"; ?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
 <?php include "pages/icon-1.php"; ?>
<?php include "pages/title.php"; ?>
<script>
function Print() {
document.body.offsetHeight;
window.print();
}
</script>
</head>

<body>
<?php
				function randomPrefix($length)
				{
				$random	="";
				srand((double)microtime()*1000000);
				
				$data	=  "AbcDE123IJKLMN67QRSTUVWXYZ";
				$data	.= "aBCdefghijkmn123opq45rs67tuv89xyz";
				$data	.= "0FGH45OP89";
				for ($i = 0; $i < $length; $i++)
				{
				$random	.= substr($data,(rand()%(strlen($data))), 1);
				}
				return $random;
				}



$tahun			= date("Y");
$bulan			= date("m"); 
 	if ($bulan ==1)
	  {
	  $n_bulan ='1';
	  }
	  else if ($bulan ==2)
	  {
	  $n_bulan ='2';
	  }
	   else if ($bulan ==3)
	  {
	  $n_bulan ='3';
	  }
	   else if ($bulan ==4)
	  {
	  $n_bulan ='4';
	  }
	   else if ($bulan ==5)
	  {
	  $n_bulan ='5';
	  }
	   else if ($bulan ==6)
	  {
	  $n_bulan ='6';
	  }
	   else if ($bulan ==7)
	  {
	  $n_bulan ='7';
	  }
	   else if ($bulan ==8)
	  {
	  $n_bulan ='8';
	  }
	   else if ($bulan ==9)
	  {
	  $n_bulan ='9';
	  }
	   else if ($bulan ==10)
	  {
	  $n_bulan ='910';
	  }
	   else if ($bulan ==11)
	  {
	  $n_bulan ='911';
	  }
	   else 
	  {
	  $n_bulan ='912';
	  } 

$tgl_input		= date("d-m-Y, g:i a"); 


$code			= randomPrefix(12);

$nama			= $_POST['nama'];
$instansi		= $_POST['instansi'];
$keperluan_1	= $_POST['keperluan_1'];
$keperluan_2	= $_POST['keperluan'];

$keperluan		= $keperluan_1;
$keperluan		.= " ";
$keperluan		.= $keperluan_2;





$id_petugas		= $_POST['id_petugas'];


					
					$sql_bro 				= "select * from petugas where id_petugas='$id_petugas' ";
					$sql_01					= mysqli_query ($conn,$sql_bro);
			  
			
			  		$data_bro 				=  mysqli_fetch_array($sql_01);
											
					$nama_petugas			= $data_bro['nama'];
					$nip					= $data_bro['nip'];
				
					
					$nama_tamu			= strtoupper($nama);
					$nama_dinas			= strtoupper($instansi);
					$sql = 	" INSERT INTO buku_tamu VALUES(NULL,
								'$nama_tamu', 
								'$nama_dinas', 
								'$keperluan',
								'$tgl_input',
								'$id_petugas',
								'$new_code',
								'$code',
								'$tahun',
								'$n_bulan',
								'$klasifikasi',
								'$dino') ";
					$in3 = mysqli_query($conn, $sql);
					
?>
 <table align="center" width="100%" border="0" style="font-family:Verdana,Georgia, Times New Roman, Times, serif; font-size:10px" >
	  <tr>
	    <td align="center" valign="middle" colspan="3"><a href="#" onclick="Print()" class="link"><img src="assets/images/icon_kota.png"  height="50" /></a></td>
   </tr>
	  <tr>
	    <td colspan="3" align="center"   ><B>PEMERINTAH KOTA BANJARBARU</B></td>
   </tr>
	  <tr>
	    <td colspan="3" align="center" style="border-bottom: solid medium  #000000 "><B>BADAN KEPEGAWAIAN, PENDIDIKAN DAN PELATIHAN DAERAH </B></td>
   </tr>
	  <tr>
	    <td width="15%">&nbsp;</td>
	    <td width="2%">&nbsp;</td>
	    <td>&nbsp;</td>
   </tr>
	  <tr>
		<td colspan="3" valign="top" align="center" style="font-size:11px; font-family:Verdana, Arial, Helvetica, sans-serif; border-bottom: dashed thin #000000">TERIMAKASIH ATAS KEDATANGAN BPK/IBU/SDR/i</td>
	  </tr>
	  <tr>
		<td colspan="3" valign="top" align="center" style="font-size:12px; font-family:Verdana, Arial, Helvetica, sans-serif; border-bottom: dashed thin #000000"><b><?php echo $nama_tamu;?></b></td>
	  </tr>
	  <tr>
		<td colspan="3" valign="top" align="center" style="font-size:11px; font-family:Verdana, Arial, Helvetica, sans-serif; border-bottom: dashed thin #000000"></b>DARI <?php echo $nama_dinas;?></b>
		</td>
	  </tr>
	  <tr>
	    <td colspan="3" valign="top" align="center" style="font-size:11px; font-family:Verdana, Arial, Helvetica, sans-serif; border-bottom: dashed thin #000000">Keperluan : <BR /><strong> <?php echo $keperluan;?> </strong></td>
     </tr>
	  
	
	  
	  
	  <tr>
	    <td colspan="3" valign="top" align="center" style="font-size:10px; font-family:Verdana, Arial, Helvetica, sans-serif; border-bottom:double"></td>
   </tr>
	  <tr>
	    <td colspan="3" valign="top" align="center" style="font-size:10px; font-family:Verdana, Arial, Helvetica, sans-serif; border-bottom:double">
		
		<b>
		NB : Print Out ini juga sebagai tanda terima jika Saudara mengirimkan berkas/dokumen kepada BKPP Kota Banjarbaru
		</b>		</td>
   </tr>
	  <tr>
	    <td colspan="3" valign="top" align="center" style="font-size:10px; font-family:Verdana, Arial, Helvetica, sans-serif; border-bottom:double"><?php echo $tgl_input;?></td>
   </tr>
	  <tr>
	    <td colspan="3" valign="top" align="center" style="font-size:10px; font-family:Verdana, Arial, Helvetica, sans-serif; border-bottom:double"> 
		<table width="100%" border="0" align="center">
  <tr>
    <td width="15%" align="left"><a href="Buku-Tamu.php"><?php QRcode::png("$code", "png/$code.png", "L", 2, 2); ?><?php echo "<img src='png/$code.png' />" ?>      </a></td>
    <td  width="85%" align="right"><b>
		Petugas Untuk Anda :<br />
		<?php 
	
		echo $nama_petugas;?> <br /> <?php echo $nip;?></b>
		
		<?php //echo $jabatanpalingbaru;?></td>
  </tr>
</table>
		</td>
   </tr>
    <tr>
	    <td colspan="3" valign="top" align="center" style="font-size:10px; font-family:Verdana, Arial, Helvetica, sans-serif; border-bottom:double"><a href="Quisioner" style="color:#000000">Klik Disini Jika Anda Bersedia mengisi Quisioner Pelayanan Kami</a></td>
   </tr>
	  <tr>
	    <td colspan="3" valign="top" align="center" style="font-size:10px; font-family:Verdana, Arial, Helvetica, sans-serif; border-bottom:double">BANJARBARU PEMENANG</td>
   </tr>
  
  
	</table>

</body>
</html>
