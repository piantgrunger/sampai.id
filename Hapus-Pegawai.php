<?PHP
include "assets/include/session.php";
include "assets/include/koneksi.php";

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
       <?php include "pages/sidebar.php";?>
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
                        <h4 class="page-title">Hapus Data Pegawai </h4>
                        <div class="ml-auto text-right">
                            <nav aria-label="breadcrumb">
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="#">Pegawai</a></li>
                                    <li class="breadcrumb-item active" aria-current="page">Hapus Data Pegawai</li>
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
                <div class="row">
				 <div class="col-md-12">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="card-title m-b-0">Data Pegawai Yang Akan Dihapus </h4>
                            </div>
                            <div class="comment-widgets scrollable">
				<?
						$KODE			= $_GET['KODE'];
						$sql			= "select * from pegawai where id_pegawai='$KODE'";
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
						
						
				?>
				<?php
													$stts = $data_p['status'];
													
													if ($stts==1)
													{
													$nanana = 'NIP.';
													$nipp = $nip;
													}
													else
													{
													$nanana = 'NRPTT/NRTK.';
													$nipp = $nrtk;
													}
				
													$id_skpd	= $unit_kerja;
													$sql_000	= "select * from skpd where id_skpd='$id_skpd'";
													$sql_kk0 	= mysqli_query($conn, $sql_000);
													$data_kk0 	= mysqli_fetch_array($sql_kk0);
													$nama_skpd	= $data_kk0['nama_skpd'];
			
													$id_gol		= $golongan;
													$sql_00		= "select * from tb_golongan where id_gol='$id_gol'";
													$sql_kk 	= mysqli_query($conn, $sql_00);
													$data_kk 	= mysqli_fetch_array($sql_kk);
													$n_golongan	= $data_kk['golongan'];
				?>
                    <!-- Column -->
                   <div class="d-flex flex-row comment-row m-t-0">
                                    <div class="p-2"><img  src="assets/include/<? echo $lokasi; ?>" alt="<?PHP echo $nama_pegawai; ?>" height="200" width="200" class="rounded-circle" > </div>
                                    <div class="comment-text w-100">
                                        <h6 class="font-medium"><strong><?php echo $nama1 ?>  <?php echo $nama2 ?> <?php echo $nama3 ?> </strong></h6>
                                        <span class="m-b-15 d-block"><?php echo $nanana ?> <?php echo $nipp ?></span>
										<span class="m-b-15 d-block"><?PHP echo $n_golongan; ?></span>
										<span class="m-b-15 d-block"><?PHP echo $jabatan; ?></span>
										<span class="m-b-15 d-block"><?PHP echo $alamat; ?></span>
										<span class="m-b-15 d-block"><?PHP echo $no_telp; ?></span>
                                        <div class="comment-footer">
                                           
											<? echo ( "<a href=assets/include/hapus-pegawai.php?KODE=$KODE title='Hapus Data Pegawai' > ");?><button type="button" class="btn btn-danger btn-sm"> Klik Disini Untuk Menghapus Data</button></a>
                                        </div>
                                    </div>
                                </div>
								</div>
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
    <script src="assets/libs/perfect-scrollbar/dist/perfect-scrollbar.jquery.min.js"></script>
    <script src="assets/extra-libs/sparkline/sparkline.js"></script>
    <!--Wave Effects -->
    <script src="dist/js/waves.js"></script>
    <!--Menu sidebar -->
    <script src="dist/js/sidebarmenu.js"></script>
    <!--Custom JavaScript -->
    <script src="dist/js/custom.min.js"></script>
    <!--This page JavaScript -->
    <!-- <script src="../../dist/js/pages/dashboards/dashboard1.js"></script> -->
    <!-- Charts js Files -->
    <script src="assets/libs/flot/excanvas.js"></script>
    <script src="assets/libs/flot/jquery.flot.js"></script>
    <script src="assets/libs/flot/jquery.flot.pie.js"></script>
    <script src="assets/libs/flot/jquery.flot.time.js"></script>
    <script src="assets/libs/flot/jquery.flot.stack.js"></script>
    <script src="assets/libs/flot/jquery.flot.crosshair.js"></script>
    <script src="assets/libs/flot.tooltip/js/jquery.flot.tooltip.min.js"></script>
    <script src="dist/js/pages/chart/chart-page-init.js"></script>
</body>
</html>