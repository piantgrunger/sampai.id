<?php
    include 'assets/include/koneksi.php';
    require_once('dompdf/dompdf_config.inc.php');
    ob_start();
    
    $id_spk = $_GET['id'];
?>
<?php include 'phpqrcode/qrlib.php'; ?>
<?php
                    $jml_data1_                 = "SELECT * FROM spk where id_spk='$id_spk' ";
                    $query_                     = mysqli_query($conn, $jml_data1_);
        
                    $data_                      = mysqli_fetch_array($query_);
                    
                    $id_distributor             = $data_['id_distributor'];
                    $id_pejabat                 = $data_['id_pejabat'];
                    $untuk                      = $data_['untuk'];
                    $keperluan                  = $data_['keperluan'];
                    $tgl_serah                  = $data_['tgl_serah'];
                    $tgl_buat                   = $data_['tgl_buat'];
                    $kd_unik                    = $data_['kd_unik'];
                    $nomor_spk                  = $data_['nomor_spk'];
                    $id_klasifikasi             = $data_['id_klasifikasi'];
                    $jenis                  = $data_['jenis'];

                    
                    
if ($jenis ==1) {
    $surt   = 'SURAT PESANAN BARANG/ORDER';
} else {
    $surt = 'SURAT PERINTAH KERJA';
}
                    
                    $query_distributor  = "SELECT * FROM distributor where id_distributor='$id_distributor' ";
                    $mysql_distributor  = mysqli_query($conn, $query_distributor);
                    $data_dis           = mysqli_fetch_array($mysql_distributor);
                    $nama_dis           = $data_dis['distributor'];
                    $alamat_dis         = $data_dis['alamat'];
                    
                    $query_surat        = "SELECT * FROM  tbl_klasifikasi where id_klasifikasi='$id_klasifikasi' ";
                    $mysql_surat        = mysqli_query($conn, $query_surat);
                    $data_surat         = mysqli_fetch_array($mysql_surat);
                    $klasifikasi_surat  = $data_surat['kode'];
                    
                    
                    
                    $sql_0011   = "select * from pegawai where id_jabatan='$id_pejabat'";
                    $sql_kk11   = mysqli_query($conn, $sql_0011);
                    $data_kk11  = mysqli_fetch_array($sql_kk11);
                    $gelar_dpn  = $data_kk11['gelar_dpn'];
                    $nama       = $data_kk11['nama'];
                    $gelar_blk  = $data_kk11['gelar_blk'];
                    $nip        = $data_kk11['nip'];
                    $tempat_lahir   = $data_kk11['tempat_lahir'];
                    $tgl_lahir  = $data_kk11['tgl_lahir'];
                    $id_gol     = $data_kk11['golongan'];
                    $tmt        = $data_kk11['tmt'];
                    $jabatan    = $data_kk11['jabatan'];
                    $eselon     = $data_kk11['eselon'];
                    $status_p   = $data_kk11['status'];
                    $unit_kerja = $data_kk11['unit_kerja'];
                    
                    $sql_00111  = "select * from tb_golongan where id_gol='$id_gol'";
                    $sql_kk111  = mysqli_query($conn, $sql_00111);
                    $data_kk111 = mysqli_fetch_array($sql_kk111);
                    $golongan   = $data_kk111['golongan'];
                    
                    
if ($gelar_blk =='') {
    $namalengkap  = $gelar_dpn;
    $namalengkap  .= ' ';
    $namalengkap  .= $nama;
} else {
    $namalengkap  = $gelar_dpn;
    $namalengkap  .= ' ';
    $namalengkap  .= $nama;
    $namalengkap  .= ', ';
    $namalengkap  .= $gelar_blk;
}
                                                  
                                                  
                                                  
?>
                                                
                    
    <?php
    if ($jabatan =='KEPALA SUB BAGIAN UMUM DAN KEPEGAWAIAN') {
        $singkat ='SET';
    } elseif ($jabatan =='KEPALA SUB BAGIAN PERENCANAAN DAN KEUANGAN') {
        $singkat ='SET';
    } elseif ($jabatan =='KEPALA SUB BIDANG DIKLAT DAN PENGEMBANGAN KOMPETENSI APARATUR') {
        $singkat ='SIBANG';
    } elseif ($jabatan =='KEPALA SUB BIDANG PENILAIAN KINERJA DAN PENGEMBANGAN KARIR APARATUR') {
        $singkat ='SIBANG';
    } elseif ($jabatan =='KEPALA SUB BIDANG MUTASI DAN KEPANGKATAN APARATUR') {
        $singkat ='SIBANG';
    } else {
        $singkat ='RENBIN';
    }
    
    
                                                    $no_srt = $klasifikasi_surat;
                                                  $no_srt   .= '/';
                                                  $no_srt   .= $nomor_spk;
                                                  $no_srt   .= '/';
                                                  $no_srt   .= $singkat;
                                                  $no_srt   .= '-BKPP';
    ?>


                        
                        
                        
                            
                            
                        
                            
                            
                            
                            
                            
                            
<?php
function findage($dob)
{
    $localtime = getdate();
    $today = $localtime['mday'] . '-' . $localtime['mon'] . '-' . $localtime['year'];
    $dob_a = explode('-', $dob);
    $today_a = explode('-', $today);
    $dob_d = $dob_a[0];
    $dob_m = $dob_a[1];
    $dob_y = $dob_a[2];
    $today_d = $today_a[0];
    $today_m = $today_a[1];
    $today_y = $today_a[2];
    $years = $today_y - $dob_y;
    $months = $today_m - $dob_m;
    if ($today_m . $today_d < $dob_m . $dob_d) {
        $years--;
        $months = 12 + $today_m - $dob_m;
    }

    if ($today_d < $dob_d) {
        $months--;
    }

    $firstMonths=[1,3,5,7,8,10,12];
    $secondMonths=[4,6,9,11];
    $thirdMonths=[2];

    if ($today_m - $dob_m == 1) {
        if (in_array($dob_m, $firstMonths)) {
            array_push($firstMonths, 0);
        } elseif (in_array($dob_m, $secondMonths)) {
            array_push($secondMonths, 0);
        } elseif (in_array($dob_m, $thirdMonths)) {
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
       <title><?php include 'pages/tittle.php'; ?></title>
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
padding: 2px;
  
}
#table td {
  border: 1px solid black;
padding: 2px;
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
  <table width="100%" border="0" style=" font-family:Georgia, times new roman, Times, serif">
  <tr>
    <td align="center" style="font-size:24px"><strong><?php echo $surt; ?></strong></td>
  </tr>
  <tr>
    <td align="center">NOMOR : <?php echo $no_srt; ?></td>
  </tr>
</table>

<table width="100%" border="0" style=" font-family:Georgia, times new roman, Times, serif">
  <tr>
    <td width="30%" valign="top">Diberikan Kepada </td>
    <td width="2%" valign="top">:</td>
    <td width="68%" valign="top">&nbsp;</td>
  </tr>
  <tr>
    <td valign="top">Perusahaan / Toko </td>
    <td valign="top">:</td>
    <td valign="top"><?php echo $nama_dis; ?></td>
  </tr>
  <tr>
    <td valign="top">Alamat</td>
    <td valign="top">:</td>
    <td valign="top"><?php echo $alamat_dis; ?></td>
  </tr>
  <tr>
    <td valign="top">Untuk</td>
    <td valign="top">:</td>
    <td valign="top"><?php echo $untuk; ?></td>
  </tr>
  </table><br>
  <table width="100%"  id="table">
  <tr>
    <th width="5%" valign="top" align="center">No.</th>
    <th width="70%" valign="top">Nama dan Spesifikasi Barang </th>
    <th width="25%" valign="top">Banyaknya</th>
  </tr>
  <?php
                    $i          = 1;
                    $jml_data1  = "SELECT * FROM belanja_barang where id_spk='$id_spk' order by id_barang ";
                    $query      = mysqli_query($conn, $jml_data1);
        
                    while($data = mysqli_fetch_array($query))
                    {
                    $id_barang  = $data['id_barang'];
                    $qty        = $data['qty'];
                    $jumlah     = $data['jumlah'];
                    $keterangan         = $data['keterangan'];

                    
                    $query_distributor  = "SELECT * FROM barang where id_barang='$id_barang' ";
                    $mysql_distributor  = mysqli_query($conn, $query_distributor);
                    $data_dis           = mysqli_fetch_array($mysql_distributor);
                    $nama_barang        = $data_dis['nama_barang'];
                    $satuan             = $data_dis['satuan'];
                    $harga              = $data_dis['harga'];
                    
                    
                ?>
  <tr>
    <td valign="top" align="center"><?php echo $i ?></td>
    <td valign="top"><?php echo $nama_barang; ?> <?php echo $keterangan; ?></td>
    <td valign="top"><?php echo $qty;?> <?php  echo $satuan;  ?></td>
  </tr>
    <?php
                 $i++;
                    }
    ?>
</table>
<br>
<table width="100%" border="0" style=" font-family:Georgia, times new roman, Times, serif">

  <tr>
    <td width="30%" valign="top">Keperluan </td>
    <td width="2%" valign="top">:</td>
    <td width="68%" valign="top"><?php echo $keperluan; ?></td>
  </tr>
  <tr>
    <td colspan="3" valign="top">Dengan ketentuan sebagai berikut :</td>
    </tr>
  <tr>
    <td valign="top">1. Tempat Tujuan </td>
    <td valign="top">:</td>
    <td valign="top">Badan Kepegawaian, Pendidikan dan Pelatihan Kota Banjarbaru <br> Jl. Panglima Batur No. 1 Banjarbaru</td>
  </tr>
  <tr>
    <td valign="top">2. Tanggal Penyerahan Barang </td>
    <td valign="top">:</td>
    <td valign="top"><?php echo $tgl_serah; ?></td>
  </tr>
  <tr>
    <td valign="top">3. Keterangan </td>
    <td valign="top">:</td>
    <td valign="top">&nbsp;</td>
  </tr>
  <tr>
    <td colspan="3" valign="top">
<table width="100%" border="0" style=" font-family:Georgia, times new roman, Times, serif">
      <tr>
        <td width="3%">&nbsp;</td>
        <td width="97%">a. Pembayaran akan dilakukan jika barang - barang tersebut telah diterima dengan baik. </td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td>b. Pembayaran akan dibatalkan jika tidak sesuai dengan pesanan. </td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td>c. Kwitansi harga barang - barang tersebut dapat dibayarkan jika melampirkan SPK. </td>
      </tr>
    </table></td>
    </tr>
  <tr>
    <td valign="top"></td>
    <td valign="top"></td>
    <td valign="top"></td>
  </tr>
  
</table>


<table width="100%" border="0" style="font-family:Georgia, times new roman, Times, serif">
  <tr>
    <td align="center" width="50%">&nbsp;</td>
    <td align="center" width="50%">&nbsp;</td>
  </tr>
  <tr>
    <td align="center">&nbsp;</td>
    <td align="center">Banjarbaru, <?php echo $tgl_buat; ?></td>
  </tr>
  <tr>
    <td rowspan="4" align="left"><?php QRcode::png("$kd_unik", "png/$kd_unik.png", 'L', 4, 4); ?><?php echo "<img src='png/$kd_unik.png' />" ?></td>
    <td align="center">Yang Memerintahkan, <br>
    Pejabat Pengelola Teknis Kegiatan </td>
  </tr>
  <tr>
    <td align="center">&nbsp;</td>
  </tr>
  <tr>
    <td align="center">&nbsp;</td>
  </tr>

  <tr>
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
$dompdf->stream('SPK No : ' . $no_srt . '.pdf');

?>



