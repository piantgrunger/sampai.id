<?PHP
include "assets/include/session-sub-bidang.php";
include "assets/include/koneksi.php";
$yearsnow	= date("Y");

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
<html dir="ltr" lang="en">

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
	<link rel="stylesheet" type="text/css" href="assets/extra-libs/multicheck/multicheck.css">
    <link href="assets/libs/datatables.net-bs4/css/dataTables.bootstrap4.css" rel="stylesheet">
    <link href="dist/css/style.min.css" rel="stylesheet">
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->
</head>

<body>
    <!-- ============================================================== -->
    <!-- Preloader - style you can find in spinners.css -->
    <!-- ============================================================== -->
    <div class="preloader">
        <div class="lds-ripple">
            <div class="lds-pos"></div>
            <div class="lds-pos"></div>
        </div>
    </div>
    <!-- ============================================================== -->
    <!-- Main wrapper - style you can find in pages.scss -->
    <!-- ============================================================== -->
    <div id="main-wrapper">
        <!-- ============================================================== -->
        <!-- Topbar header - style you can find in pages.scss -->
        <!-- ============================================================== -->
       <?php include "pages/header.php";?>
        <!-- ============================================================== -->
        <!-- End Topbar header -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- Left Sidebar - style you can find in sidebar.scss  -->
        <!-- ============================================================== -->
       <?php include "pages/sidebar-admin-sub-bidang.php";?>
        <!-- ============================================================== -->
        <!-- End Left Sidebar - style you can find in sidebar.scss  -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- Page wrapper  -->
        <!-- ============================================================== -->
        <div class="page-wrapper">
            <!-- ============================================================== -->
            <!-- Bread crumb and right sidebar toggle -->
            <!-- ============================================================== -->
             <div class="page-breadcrumb">
                <div class="row">
                    <div class="col-12 d-flex no-block align-items-center">
                        <h4 class="page-title">Data Surat Perintah Kerja</h4>
						
                        <div class="ml-auto text-right">
                            <nav aria-label="breadcrumb">
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="#">Users</a></li>
                                    <li class="breadcrumb-item active" aria-current="page">Data Admin</li>
                                </ol>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
            <!-- ============================================================== -->
            <!-- End Bread crumb and right sidebar toggle -->
            <!-- ============================================================== -->
            <!-- ============================================================== -->
            <!-- Container fluid  -->
            <!-- ============================================================== -->
            <div class="container-fluid">
                <!-- ============================================================== -->
                <!-- Sales Cards  -->
                <!-- ============================================================== -->
                  <div class="card">
                            <div class="card-body">
								<?PHP
									if (isset($_GET['pesan'])){
									$pesan = $_GET['pesan'];
									$isi = $_GET['isi'];
									if ($pesan == 1){
									echo "<div class='alert alert-success'>
									<a class='close' data-dismiss='alert'>×</a>
									<b>Sukses!</b> $isi
									</div>";
									}
									if ($pesan == 2){
									echo "<div class='alert alert-danger'>
									<a class='close' data-dismiss='alert'>×</a>
									<b>Gagal!</b> $isi
									</div>";
									}
									}
								?> 
                                <div class="table-responsive">
                                    <table id="zero_config" class="table table-striped table-bordered">
                                        <thead>
                                            <tr>
                                                <th width="3%">NO</th>
                                                <th width="17%">PPTK</th>
                                                <th width="10%">DISTRIBUTOR </th>
                                                <th width="25%">DISKRIPSI </th>
                                                <th width="17%">TANGGAL</th>
                                                <th width="17%">KET.</th>
                                                <th width="10%">ACT</th>
                                            </tr>
                                        </thead>
                                        <tbody>
										<?php
				 	$i 			= 1;
              	 	$jml_data1 	= "SELECT * FROM spk where id_user='$id_admin' order by tgl_buat, n_bulan, tgl_serah ";
					$query		= mysqli_query($conn, $jml_data1);
		
        			while($data = mysqli_fetch_array($query))
					{
					$id_distributor 	= $data['id_distributor'];
					$id_jabatan		 	= $data['id_pejabat'];
					$nomor_ba		 	= $data['nomor_ba'];
					$id_spk			 	= $data['id_spk'];
					$status			 	= $data['status'];
					
					
					
					
					$query_distributor 	= "SELECT * FROM distributor where id_distributor='$id_distributor' ";
					$mysql_distributor	= mysqli_query($conn, $query_distributor);
					$data_dis			= mysqli_fetch_array($mysql_distributor);
					$nama_dis			= $data_dis['distributor'];
					
					$query_pejabat	 	= "SELECT * FROM pegawai where id_jabatan='$id_jabatan' ";
					$mysql_pejabat		= mysqli_query($conn, $query_pejabat);
					$data_pej			= mysqli_fetch_array($mysql_pejabat);
					$nama_pej			= $data_pej['jabatan'];
					
					$query_distributor_ 	= "SELECT * FROM belanja_barang where id_spk='$id_spk' ";
					$mysql_distributor_		= mysqli_query($conn, $query_distributor_);
					$data_dis_				= mysqli_num_rows($mysql_distributor_);
					if ($data_dis_ == 0)
					{
					$status_	 = 'Anda Belum Belanja';
					}
					else
					{
				
					$sql_00001			= "select SUM(jumlah) as jumlah_total from belanja_barang where id_spk='$id_spk' ";
					$sql_kk001 			= mysqli_query($conn, $sql_00001);
					$data_p1 			= mysqli_fetch_array($sql_kk001);
					$jumlah_total	 	= $data_p1['0'];
												
												//echo $sql_00001;
					
					$status_	= 'Jml. Belanja Rp. ';
					$status_	 .= rupiah_2($jumlah_total); 
	
											//$angka		= terbilang($jumlah_total);
											//$a1 		= ucwords($angka);
										
				
					}
					
					
					
					?>
				 <tr>
                                                <td><?php echo $i ?></td>
                                                <td><strong><?php echo $nama_pej; ?></strong></td>
												<td> <?php echo $nama_dis; ?></a></td>
												    <td> <strong>Untuk :</strong> <?php echo $data['untuk'] ?> <br>
													<strong>Keperluan :</strong> <?php echo $data['keperluan'] ?></td>
												<td><strong>Pembuatan :</strong>  <?php echo $data['tgl_buat'] ?><br>
													<strong>Penyerahan :</strong> <?php echo $data['tgl_serah'] ?></td>
												    <td>
                              <?php
														if ($nomor_ba == '')
														{
														?>
														<button type="button" class="btn btn-warning"><i class='mdi mdi-close-box-outline'></i> Belum BA</button>

														<?php
														}
														else
														{
														$ket_ba ='No BA : ';
														$ket_ba .=$nomor_ba;
														$ket_ba .='-HP';
														?>
														<button type="button" class="btn btn-danger btn-sm"><i class='mdi mdi-file-pdf'></i> <?php echo $ket_ba; ?></button>

														<?php
														}
														?>
													
											
                              <br>
                              <button type="button" class="btn btn-outline-primary btn-sm"><i class='mdi mdi-cart'></i>  <?php echo $status_; ?></button>
                              <br>
													<?php
													if ($status == '1')
													{
													?>
													<button type="button" class="btn btn-outline-dark"><i class='mdi mdi-cart-off'></i> Selesai Belanja</button>
													<?php
													}
													else
													{
													?>
													<?php echo ( "<a button type='button' class='btn btn-outline-success' href=assets/include/update-selesai-belanja.php?id=$data[0] title='Klik Disini jika anda sudah Selesai Belanja'> <i class='mdi mdi-cart-plus'></i>  Masih Shopping </a> </button>")?>	
													<?php
													}
													?>
													
													
													
													
													
													</td>
                                                <td>
												<div class="btn-group">
													<button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Action </button>
													<div class="dropdown-menu">
													  <?php
													  if ($status=='1')
														{
													  												    
														}
														else
														{
														?>
													    <?php echo ( "<a class='dropdown-item' href=Input-SPK-Step-Three.php?KODE=$data[0] title='Edit SPK'> <i class='mdi mdi-cart-plus'></i> Belanja Barang</a>")?> 
                            <?php echo ( "<a class='dropdown-item' href=update-spk.php?kd=$data[0] title='Edit SPK'> <i class='mdi mdi-pencil'></i> Edit SPO/SPK</a>")?> 
														<?php
														}
														?>
														
														 <?php
													  if ($data_dis_==0)
														{
													  												    
														}
														else
														{
														?>
														<?php echo ( "<a class='dropdown-item' href=form-cetak-spk.php?id=$data[0] title='Cetak Surat Perintah Kerja'> <i class='mdi mdi-printer'></i> Cetak SPO/SPK</a>")?> 
														<?php
														}
														?>
														
														 <?php
													  if ($nomor_ba=='')
														{
													  												    
														}
														else
														{
														?>
														<?php echo ( "<a class='dropdown-item' href=form-cetak-berita-acara.php?id=$data[0] title='Cetak Berita Acara'> <i class='mdi mdi-printer-alert'></i> Cetak BA</a>")?>						
														<?php
														}
														?>
												  </div>
												</div><!-- /btn-group -->												</td>
                  </tr>
              
              
				 <?php
       			 $i++;
        			}
    			?>
                                        </tbody>
                                        <tfoot>
                                            <tr>
                                            <tr>
                                               <th width="3%">NO</th>
                                                <th width="17%">PPTK</th>
                                                <th width="10%">DISTRIBUTOR </th>
                                                <th width="25%">DISKRIPSI </th>
                                                <th width="17%">TANGGAL</th>
                                                <th width="17%">KET.</th>
                                                <th width="10%">ACT</th>
                                            </tr>
                                        </tfoot>
                                    </table>
                                </div>
                            </div>
                        </div>
                <!-- ============================================================== -->
                <!-- Sales chart -->
                <!-- ============================================================== -->
               
                <!-- ============================================================== -->
                <!-- Sales chart -->
                <!-- ============================================================== -->
                <!-- ============================================================== -->
                <!-- Recent comment and chats -->
                <!-- ============================================================== -->
                
                <!-- ============================================================== -->
                <!-- Recent comment and chats -->
                <!-- ============================================================== -->
            </div>
            <!-- ============================================================== -->
            <!-- End Container fluid  -->
            <!-- ============================================================== -->
            <!-- ============================================================== -->
            <!-- footer -->
            <!-- ============================================================== -->
            <?php include "pages/footer.php"; ?>
            <!-- ============================================================== -->
            <!-- End footer -->
            <!-- ============================================================== -->
        </div>
        <!-- ============================================================== -->
        <!-- End Page wrapper  -->
        <!-- ============================================================== -->
    </div>
    <!-- ============================================================== -->
    <!-- End Wrapper -->
    <!-- ============================================================== -->
    <!-- ============================================================== -->
    <!-- All Jquery -->
    <!-- ============================================================== -->
    <script src="assets/libs/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap tether Core JavaScript -->
    <script src="assets/libs/popper.js/dist/umd/popper.min.js"></script>
    <script src="assets/libs/bootstrap/dist/js/bootstrap.min.js"></script>
    <!-- slimscrollbar scrollbar JavaScript -->
    <script src="assets/libs/perfect-scrollbar/dist/perfect-scrollbar.jquery.min.js"></script>
    <script src="assets/extra-libs/sparkline/sparkline.js"></script>
    <!--Wave Effects -->
    <script src="dist/js/waves.js"></script>
    <!--Menu sidebar -->
    <script src="dist/js/sidebarmenu.js"></script>
    <!--Custom JavaScript -->
    <script src="dist/js/custom.min.js"></script>
    <!-- this page js -->
    <script src="assets/extra-libs/multicheck/datatable-checkbox-init.js"></script>
    <script src="assets/extra-libs/multicheck/jquery.multicheck.js"></script>
    <script src="assets/extra-libs/DataTables/datatables.min.js"></script>
    <script>
        /****************************************
         *       Basic Table                   *
         ****************************************/
        $('#zero_config').DataTable();
    </script>
</body>
</html>