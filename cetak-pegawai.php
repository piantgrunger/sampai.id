<?PHP
include "assets/include/session.php";
include "assets/include/koneksi.php";

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
    <link href="assets/libs/flot/css/float-chart.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="dist/css/style.min.css" rel="stylesheet">
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->

<style>
    body {
        padding :0px;
        margin : 0px;
        
    }
    
    #wrapper {
        background-image:url(assets/eselon2.jpg);
        background-repeat:repeat-y;
     
        margin-right:auto;
        margin-left:auto;
    }
#cek {
    -webkit-box-shadow: inset 0 0 1px rgba(0,0,0,.8), inset 0 2px 0 rgba(255,255,255,.5), inset 0 -1px 0 rgba(0,0,0,.4);
    -moz-box-shadow: inset 0 0 1px rgba(0,0,0,.8), inset 0 2px 0 rgba(255,255,255,.5), inset 0 -1px 0 rgba(0,0,0,.4);
    box-shadow: inset 0 0 1px rgba(0,0,0,.8), inset 0 2px 0 rgba(255,255,255,.5), inset 0 -1px 0 rgba(0,0,0,.4);
 
    -webkit-border-radius: 20px;
    -moz-border-radius: 20px;
    border-radius: 5px;
}
#dul { font-family: Georgia, "Times New Roman", Times, serif; font-size:12px; 

}
#dul1 { font-family: Georgia, "Times New Roman", Times, serif; font-size:10px; 

}
</style>
<script>
function Print() {
document.body.offsetHeight;
window.print();
}
</script>
</head>
 
<body id="wrapper" >
      <p>
        <?
	 
	  					$id_pegawai 	= $_GET['KODE'];
	  					$sql			= "select * from pegawai where id_pegawai='$id_pegawai'";
						$sql_2 			= mysqli_query($conn, $sql);
						$data_p 		= mysqli_fetch_array($sql_2);
						$nama1		 	= $data_p['gelar_dpn'];
						$nama2		 	= $data_p['nama'];
						$nama3		 	= $data_p['gelar_blk'];
						$nip 			= $data_p['nip'];
						$nrtk 			= $data_p['nrtk'];
						$golongan 		= $data_p['golongan'];
						$jabatan 		= $data_p['jabatan'];
						$eselon 		= $data_p['eselon'];
						$unit_kerja 	= $data_p['unit_kerja'];
						$kelamin 		= $data_p['kelamin'];
						$no_telp	 	= $data_p['no_telp'];
						$alamat 		= $data_p['alamat'];
						$gol_darah 		= $data_p['gol_darah'];
						
						$lokasi			= $data_p['lokasi'];
						
						
						$sql_00		= "select * from tb_golongan where id_gol='$golongan'";
						$sql_kk 	= mysqli_query($conn, $sql_00);
						$data_kk 	= mysqli_fetch_array($sql_kk);
						$golongan	= $data_kk['golongan'];
						
						
						
						$sql_001	= "select * from ttd_bupati where id_ttd='1'";
						$sql_kk1 	= mysqli_query($conn, $sql_001);
						$data_kk1 	= mysqli_fetch_array($sql_kk1);
						$lokasi_ttd	= $data_kk1['lokasi'];
						
						
						$sql_000	= "select * from skpd where id_skpd='$unit_kerja'";
						$sql_kk0 	= mysqli_query($conn, $sql_000);
						$data_kk0 	= mysqli_fetch_array($sql_kk0);
						$nama_skpd	= $data_kk0['nama_skpd'];
						$singkat	= $data_kk0['singkat'];
						
						if ($singkat == ' ')
						{
						
						$namakantor	= $nama_skpd;
						
						}
						else
						{
						$namakantor	= $singkat;
						}
						
						
						
						if ($nama3 == ' ')
						{
						
						$namalengkap	= $nama1;
						$namalengkap	.=' ';
						$namalengkap	.=$nama2;
						$namalengkap	.=' ';
						$namalengkap	.=$nama3;
						}
						else
						{
						$namalengkap	= $nama1;
						$namalengkap	.=' ';
						$namalengkap	.=$nama2;
						$namalengkap	.=', ';
						$namalengkap	.=$nama3;
						}
	  ?>
      <table width="85%" border="0" id="dul" align="center"  >
  <tr>
    <td  align="center"><a href="#" onclick="Print()" class="link"><img src="assets/images/logo-kotabaru.png"  width="55" height="80" /></a><BR /><BR /><b><? echo $namakantor;?></b><BR /><BR /></td>
  </tr>
  <tr>
    <td align="center"><a href = "javascript:history.back()"> <img src="assets/include/<? echo $lokasi;?>" border="1"  id="cek" width="130" height="165"></a></td>
  </tr>
  <tr>
    <td align="center"></td>
  </tr>

  <tr>
    <td align="center">&nbsp;</td>
  </tr>
</table>
<table  width="60%" border="0" id="dul1" >
  <tr>
    <td width="35%">&nbsp;</td>
    <td width="15%">&nbsp;</td>
    <td width="1%">&nbsp;</td>
	<td>&nbsp;</td>
    <td >&nbsp;</td>
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
    <td valign="top">Nama</td>
    <td valign="top">:</td>
    <td valign="top"><b><? echo $namalengkap; ?></b></td>
    <td>&nbsp;</td>
  </tr>
 
  <tr>
    <td>&nbsp;</td>
    <td valign="top">NIP</td>
    <td valign="top">:</td>
    <td valign="top"><? echo $nip; ?></td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td valign="top">Jabatan</td>
    <td valign="top">:</td>
    <td valign="top"><? echo $jabatan; ?></td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td valign="top">Pangkat</td>
    <td valign="top">:</td>
    <td valign="top"><? echo $golongan; ?></td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td valign="top">Gol.  Darah </td>
    <td valign="top">:</td>
    <td valign="top"><? echo $gol_darah; ?></td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td valign="top">Alamat </td>
    <td valign="top">:</td>
    <td valign="top"><? echo $alamat; ?></td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td valign="top">Pemkab </td>
    <td valign="top">:</td>
    <td valign="top">Kotabaru</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td valign="top">&nbsp;</td>
    <td valign="top">Dikeluarkan</td>
    <td valign="top">:</td>
    <td valign="top"><?PHP

//Array Hari
$array_hari = array(1=>"Senin","Selasa","Rabu","Kamis","Jumat", "Sabtu","Minggu");
$hari = $array_hari[date("N")];

//Format Tanggal
$tanggal = date ("j");

//Array Bulan
$array_bulan = array(1=>"Januari","Februari","Maret", "April", "Mei", "Juni","Juli","Agustus","September","Oktober", "November","Desember");
$bulan = $array_bulan[date("n")];

//Format Tahun
$tahun = date("Y");

//Menampilkan hari dan tanggal
$t_date = $hari;
$t_date .= ",";
$t_date .= " ";
$t_date .= $tanggal;
$t_date .= " ";
$t_date .= $bulan;
$t_date .= " ";
$t_date .= $tahun;

echo $t_date;

?></td>
    <td>&nbsp;</td>
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
    <td colspan="3" align="center"><a href="#" onclick="Print()" class="link"><img src="assets/include/<? echo $lokasi_ttd;?>" width="180"  /></a> <br /><img src="assets/ee.png" width="180" height="10"  /></td>
    <td>&nbsp;</td>
  </tr>
</table>
</body>
</html>