<?PHP
include "assets/include/session-anjab.php";
include "assets/include/koneksi.php";

$yearsnow	= date("Y");
$tgl_now	= date("d-m-Y");



?><!DOCTYPE html>
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
       <?php include "pages/sidebar-admin-anjab.php";?>
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
                        <h4 class="page-title">Data Jabatan pada BKPP Kota Banjarbaru </h4>
						
                        <div class="ml-auto text-right">
                            <nav aria-label="breadcrumb">
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="#">Jabatan</a></li>
                                    <li class="breadcrumb-item active" aria-current="page">Data Jabatan</li>
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
                                                <th width="67%">NAMA JABATAN</th>
												<th width="5%">IKHTISAR</th>
                                                <th width="5%">KUALIFIKASI</th>
												<th width="5%">TUGAS POKOK</th>
												<th width="5%">TANGGUNG JAWAB - RESIKO</th>
                                                <th width="5%">SYARAT JABATAN</th>
												<th width="5%">KELAS JABATAN</th>
												<th width="5%">LAINNYA</th>
                                            </tr>
                                        </thead>
                                        <tbody>
										<?PHP
										$i 			= 1;
										$jml_data1 	= "SELECT * FROM jabatan order by id_esselon ";
										$query		= mysqli_query($conn, $jml_data1);
							
										while($data = mysqli_fetch_array($query))
										{
										$id_jabatan	= $data['id_jabatan'];
										$jabatan	= $data['jabatan'];
										
										?>
					
				 	<tr>
                                                <td><?php echo $i ?></td>
                                                <td> <strong><?php echo $jabatan; ?></strong></td>
												
                                                <td><div class="btn-group">
                                                  <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Action </button>
                                                  <div class="dropdown-menu">
												  <?php echo ( "<a class='dropdown-item' href=anjab-iktisar.php?id=$id_jabatan title='Iktisar Jabatan'> <i class='mdi mdi-pencil'></i> Iktisar Jabatan</a>")?>
												  </div>
                                                </div>
                                                <!-- /btn-group --></td>
												<td>
												<div class="btn-group">
													<button type="button" class="btn btn-secondary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Action </button>
													<div class="dropdown-menu">
													     <?php echo ( "<a class='dropdown-item' href=anjab-pendidikan-formal.php?id=$id_jabatan title='Pendidikan Formal'> <i class='mdi mdi-pencil'></i> Pendidikan Formal</a>")?>
														 <?php echo ( "<a class='dropdown-item' href=anjab-diklat-perjenjangan.php?id=$id_jabatan title='Diklat Perjenjangan'> <i class='mdi mdi-pencil'></i> Diklat Perjenjangan</a>")?>
														 <?php echo ( "<a class='dropdown-item' href=anjab-diklat-teknis.php?id=$id_jabatan title='Diklat Teknis'> <i class='mdi mdi-pencil'></i> Diklat Teknis</a>")?>
														 <?php echo ( "<a class='dropdown-item' href=anjab-pengalaman-kerja.php?id=$id_jabatan title='Pengalaman Kerja'> <i class='mdi mdi-pencil'></i> Pengalaman Kerja</a>")?>													</div>
												</div><!-- /btn-group -->												</td>
												<td>
												<div class="btn-group">
													<button type="button" class="btn btn-success dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Action </button>
													<div class="dropdown-menu">
													<?php echo ( "<a class='dropdown-item' href=anjab-tugas-pokok.php?id=$id_jabatan title='Tugas Pokok'> <i class='mdi mdi-pencil'></i> Tugas Pokok</a>")?>													</div>
												</div><!-- /btn-group -->												</td>
												<td>
												<div class="btn-group">
													<button type="button" class="btn btn-danger dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Action </button>
													<div class="dropdown-menu">
													<?php echo ( "<a class='dropdown-item' href=anjab-tanggung-jawab.php?id=$id_jabatan title='Tanggung Jawab'> <i class='mdi mdi-pencil'></i> Tanggung Jawab</a>")?>
													<?php echo ( "<a class='dropdown-item' href=anjab-wewenang.php?id=$id_jabatan title='Wewenang'> <i class='mdi mdi-pencil'></i> Wewenang</a>")?>
													<?php echo ( "<a class='dropdown-item' href=anjab-korelasi.php?id=$id_jabatan title='Korelasi Jabatan'> <i class='mdi mdi-pencil'></i> Korelasi Jabatan</a>")?>
													<?php echo ( "<a class='dropdown-item' href=anjab-lingkungan-kerja.php?id=$id_jabatan title='Kondisi Lingkungan Kerja'> <i class='mdi mdi-pencil'></i> Kondisi Lingkungan Kerja</a>")?>
													<?php echo ( "<a class='dropdown-item' href=anjab-risiko.php?id=$id_jabatan title='Resiko Bahaya'> <i class='mdi mdi-pencil'></i> Risiko Bahaya</a>")?>													</div>
												</div><!-- /btn-group -->												</td>
												<td>
												<div class="btn-group">
													<button type="button" class="btn btn-warning dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Action </button>
													<div class="dropdown-menu">
													 <?php echo ( "<a class='dropdown-item' href=anjab-ketrampilan.php?id=$id_jabatan title='Keterampilan Kerja'> <i class='mdi mdi-pencil'></i> Keterampilan Kerja</a>")?>
													 <?php echo ( "<a class='dropdown-item' href=anjab-bakat.php?id=$id_jabatan title='Bakat Kerja'> <i class='mdi mdi-pencil'></i> Bakat Kerja</a>")?>
													 <?php echo ( "<a class='dropdown-item' href=anjab-temperamen.php?id=$id_jabatan title='Temperamen'> <i class='mdi mdi-pencil'></i> Temperamen</a>")?>
													 <?php echo ( "<a class='dropdown-item' href=anjab-minat.php?id=$id_jabatan title='Minat Kerja'> <i class='mdi mdi-pencil'></i> Minat Kerja</a>")?>
													 <?php echo ( "<a class='dropdown-item' href=anjab-upaya-fisik.php?id=$id_jabatan title='Upaya Fisik'> <i class='mdi mdi-pencil'></i> Upaya Fisik</a>")?>
													 <?php echo ( "<a class='dropdown-item' href=anjab-kondisi-fisik.php?id=$id_jabatan title='Kondisi Fisik'> <i class='mdi mdi-pencil'></i> Kondisi Fisik</a>")?>
													 <?php echo ( "<a class='dropdown-item' href=anjab-fungsi-pekerjaan.php?id=$id_jabatan title='Fungsi Pekerjaan'> <i class='mdi mdi-pencil'></i> Fungsi Pekerjaan</a>")?>													</div>
												</div><!-- /btn-group -->												</td>
												<td>
												<div class="btn-group">
													<button type="button" class="btn btn-info dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Action </button>
													<div class="dropdown-menu">
													 <?php echo ( "<a class='dropdown-item' href=anjab-kelas-jabatan.php?id=$id_jabatan title='Prestasi Kerja'> <i class='mdi mdi-pencil'></i> Kelas Jabatan</a>")?>
													 <?php echo ( "<a class='dropdown-item' href=anjab-unit-kerja.php?id=$id_jabatan title='Kelas Jabatan'> <i class='mdi mdi-pencil'></i> Unit Kerja</a>")?>													</div>
												</div><!-- /btn-group -->												</td>
												<td>
												<div class="btn-group">
													<button type="button" class="btn btn-dark dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Action </button>
													<div class="dropdown-menu">
													 <?php echo ( "<a class='dropdown-item' href=cetak-anjab.php?id=$id_jabatan title='Cetak Anjab'> <i class='mdi mdi-pencil'></i> Cetak Anjab</a>")?>
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
                                           		<th width="3%">NO</th>
                                                <th width="67%">NAMA JABATAN</th>
												<th width="5%">IKHTISAR</th>
                                                <th width="5%">KUALIFIKASI</th>
												<th width="5%">TUGAS POKOK</th>
												<th width="5%">TANGGUNG JAWAB - RESIKO</th>
                                                <th width="5%">SYARAT JABATAN</th>
												<th width="5%">KELAS JABATAN</th>
												<th width="5%">LAINNYA</th>
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