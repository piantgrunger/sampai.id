<?PHP
include "assets/include/session-persediaan.php";
include "assets/include/koneksi.php";
$yearsnow	= date("Y");
$tgl_now	= date("d-m-Y");
$tgl_ultah	= date("m-d");


$select_ 			="select * from puas where tahun='$yearsnow' ";
$mysql_select_		= mysqli_query($conn, $select_);
$jumlah_select_		= mysqli_num_rows($mysql_select_);

$select_1 			="select * from puas where puas='P' and tahun='$yearsnow'";
$mysql_select_1		= mysqli_query($conn, $select_1);
$jumlah_select_1	= mysqli_num_rows($mysql_select_1);

$select_2 			="select * from puas where puas='KP' and tahun='$yearsnow'";
$mysql_select_2		= mysqli_query($conn, $select_2);
$jumlah_select_2	= mysqli_num_rows($mysql_select_2);

$select_3 			="select * from puas where puas='TP' and tahun='$yearsnow'";
$mysql_select_3		= mysqli_query($conn, $select_3);
$jumlah_select_3	= mysqli_num_rows($mysql_select_3);


$puas 			= $jumlah_select_1/$jumlah_select_ * 100;

$kurangpuas 	= $jumlah_select_2/$jumlah_select_ * 100;

$tidakpuas 		= $jumlah_select_3/$jumlah_select_ * 100;

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
       <?php include "pages/sidebar-admin-persediaan.php";?>
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
                        <h4 class="page-title">Dashboard</h4>
                        <div class="ml-auto text-right">
                            <nav aria-label="breadcrumb">
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="#">Home</a></li>
                                    <li class="breadcrumb-item active" aria-current="page">Library</li>
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
							                                <h5 class="card-title">Data Agenda Tanggal <?php echo $tgl_now; ?> <?php echo $select_pegawai; ?></h5> 

					<div class="row">
					<?				

				 	$i 			= 1;
              	 	$jml_data1 	= "SELECT * FROM acara where tanggal = '$tgl_now'  and status ='Proses' order by tanggal ";
					$query		= mysqli_query($conn, $jml_data1);
					$jml_agenda = mysqli_num_rows($query);
					
					
					
					if ($jml_agenda == 0)
					{
					?>
					
					<div class="col-md-6 col-lg-12">
                        <div class="card card-hover">
                            <div class="box bg-success text-center">
                                <h1 class="font-light text-white"><i class="mdi mdi-human-handsup"></i></h1>
                                <h6 class="text-white">Tidak Ada Agenda Pada Hari ini</h6>
                            </div>
                        </div>
                    </div>
					<?php
					}
					else
					{
		
        			while($data = mysqli_fetch_array($query))
					{
					$id_acara	= $data['id_acara'];
					$acara		= $data['acara'];
					$hari		= $data['hari'];
					$tanggal	= $data['tanggal'];
					$waktu		= $data['waktu'];
					$tempat		= $data['tempat'];
					$id_pegawai	= $data['id_pegawai'];
					$keterangan	= $data['keterangan'];
					$status		= $data['status'];
					
					
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
					
					$sql_00111	= "select * from tb_golongan where id_gol='$id_gol'";
					$sql_kk111 	= mysqli_query($conn, $sql_00111);
					$data_kk111	= mysqli_fetch_array($sql_kk111);
					$golongan	= $data_kk111['golongan'];
					
					if ($jml_agenda== 1)
					{
					$lg= 12;
					}
					else
					{
					$lg= 6;
					}
					
					
					 		if ($id_acara % 3 == 0) {
                                $bg ='cyan';
							
								
                            } else if ($id_acara % 4 == 0) {
                                 $bg ='success';
								
								
                            } else if ($id_acara % 5 == 0) {
                              $bg ='warning';
								
                            } 
							else if ($id_acara % 2 == 0) {
                               $bg ='danger';
								
                            } 
							else
							 
							{
                               $bg ='success';
                            }
					
					?>
                    <!-- Column -->
                    <div class="col-md-6 col-lg-<?php echo $lg; ?>">
                        <div class="card card-hover">
                            <div class="box bg-<?php echo $bg; ?> text-center">
                                <h1 class="font-light text-white"><i class="mdi mdi-calendar-check"></i></h1>
                                <h6 class="text-white">
								<b><?php echo $hari; ?>, <?php echo $tanggal; ?><br>
								Jam : <?php echo $waktu; ?> WITA</b>
								
								</h6>
								<h6 class="text-white">
								<b><?php echo $tempat; ?></b>
								
								</h6>
								<h6 class="text-white">
								 DI HADIRI OLEH : <strong>
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
												
												</strong><br>
												<?php echo $data_kk11['jabatan'] ?>
								
								</h6>
								</h6>
								<h6 class="text-white">
								<b><?php echo $keterangan; ?></b>
								
								</h6>
                            </div>
                        </div>
                    </div>
					 <?php
					 $i++;
						}
					 }
					 ?>
					 
                   
                </div>
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
                                    <div class="card">
                            
                           
                            
                            <div class="card-body border-top">
                                <h5 class="card-title">Tingkat Kepuasan Pelayanan</h5>
                                <div class="progress m-t-15">
                                    <div class="progress-bar progress-bar-striped progress-bar-animated bg-success" style="width:<?php echo $puas; ?>%">
									</div>
									</div>
								<div class="m-t-15">
                                        PUAS <?php echo $puas; ?>%
                                </div>
                                <div class="progress m-t-15">
                                    <div class="progress-bar progress-bar-striped progress-bar-animated bg-warning" style="width:<?php echo $kurangpuas; ?>%"></div>
                                </div>
								<div class="m-t-15">
                                        KURANG PUAS <?php echo $kurangpuas; ?>%
                                </div>
                                <div class="progress m-t-15">
                                    <div class="progress-bar progress-bar-striped progress-bar-animated bg-danger" style="width:<?php echo $tidakpuas; ?>%"></div>
                                </div>
								<div class="m-t-15">
                                        TIDAK PUAS <?php echo $tidakpuas; ?>%
                                </div>
                              
                            </div>
                        </div>
						</div>
                                </div>
                            </div>
							<div class="card">
                            
                           
                            
                            <div class="card-body border-top">
                                <div class="alert alert-success" role="alert">
								<?php
								$i 			= 1;
								$select_pegawai 		="select * from pegawai where tgl_lahir LIKE '$tgl_ultah%' order by level ";
								$mysql_select_pegawai	= mysqli_query($conn, $select_pegawai);
								
								$jumlah_select_peg		= mysqli_num_rows($mysql_select_pegawai);
								
													
													
													
									
								
								?>
								 <?PHP
								 ?>
                                  <h4 class="alert-heading">
								  <?php 
									if ($jumlah_select_peg != 0) 
									{
									?>
									Ada Yang Ulang Tahun Gaes, Selamat Yaaa....</h4>
									<p>Semoga Sehat selalu, Tambah Sukses, Banyak Rejeki. dan Seluruh Doa Terbaik buat Pian. Aaamiinnn....</p>
									<?php
									
									}
									else
									{
									?>
									
									<?php
									}
									?>
								  
                                  <hr>
                                  <p class="mb-0">
								  <?php
								  while($data_pegawai = mysqli_fetch_array($mysql_select_pegawai))
									{
									$gelar_dpn	= $data_pegawai['gelar_dpn'];
									$nama		= $data_pegawai['nama'];
									$gelar_blk	= $data_pegawai['gelar_blk'];
									
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
												  ?> <h2>
												  <?php
									 echo $namalengkap;
								  ?></h2>
								  <br>
								   <?php
									 $i++;
										}
									?>
								  
								  </p>
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