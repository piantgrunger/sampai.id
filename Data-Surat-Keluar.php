<?PHP
include "assets/include/session.php";
include "assets/include/koneksi.php";

$yearsnow	= date("Y");


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
        <?php echo $kode_srt;?></div>
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
                        <h4 class="page-title"> Surat Keluar Tahun <span class="card-title"><?php echo $yearsnow; ?></span></h4>
						
                        <div class="ml-auto text-right">
                            <nav aria-label="breadcrumb">
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="#">Home</a></li>
                                    <li class="breadcrumb-item active" aria-current="page">Data Cuti Tahun <?php echo $yearsnow; ?></li>
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
                                <h5 class="card-title">Data Surat Keluar Tahun <?php echo $yearsnow; ?> <a href="cetak-data-pegawai.php">
                                <button type="button" class="btn btn-primary btn-sm"><i class='mdi mdi-printer'></i> Cetak Data </button> </a></h5> 
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
                                                <th width="5%">KODE SURAT</th>
                                                <th width="15%">NO SURAT - TANGGAL</th>
                                                <th width="20%">UNIT KERJA / PENGOLAH</th>
												<th width="20%">ISI SURAT</th>
                                                <th width="20%">TUJUAN SURAT </th>
                                                <th width="5%">ACT</th>
                                            </tr>
                                        </thead>
                                        <tbody>
										<?
										$yearsnow	= date("Y");
				 	$i 			= 1;
              	 	$jml_data1 	= "SELECT * FROM surat_keluar where tahun ='$yearsnow' order by no_agenda ";
					$query		= mysqli_query($conn, $jml_data1);
		
        			while($data = mysqli_fetch_array($query))
					{
					$id_suratkeluar	= $data['id_suratkeluar'];
					$no_agenda		= $data['no_agenda'];
					$id_unitkerja	= $data['id_unitkerja'];
					$id_klasifikasi		= $data['id_klasifikasi'];
					$no_surat		= $data['no_surat'];
					$tgl_surat		= $data['tgl_surat'];
					$sifat			= $data['sifat'];
					$perihal		= $data['perihal'];
					$tujuan		= $data['tujuan'];
					$lokasi			= $data['lokasi'];
					$admin			= $data['admin'];
					$sifat			= $data['sifat'];
					
				
				
					
					$sql_00111	= "select * from unit_kerja where id_unitkerja='$id_unitkerja'";
					$sql_kk111 	= mysqli_query($conn, $sql_00111);
					$data_kk111	= mysqli_fetch_array($sql_kk111);
					$nama_unit		= $data_kk111['nama'];
					
					
					
					?>
					<?php
													$sql_000	= "select * from tbl_klasifikasi where id_klasifikasi='$id_klasifikasi'";
													$sql_kk0 	= mysqli_query($conn, $sql_000);
													$data_kk0 	= mysqli_fetch_array($sql_kk0);
													$kode_srt		= $data_kk0['kode'];
													$kd_cuti	= $data_kk0['kd_cuti'];
					?>
				 	<tr>
                                                <td><?php echo $no_agenda; ?></td>
                                                <td><?php echo $kode_srt; ?></td>
												<td> <?php echo $no_surat; ?>
													<br>
													<?php echo $tgl_surat; ?>
					 								
												</td>
												<td>
												 	<?php echo $nama_unit; ?>
													
												</td>
                                                <td>
													<?php echo $perihal; ?>
													
				
					  							</td>
                                                <td><?php echo $tujuan; ?>
												
												
												
												</td>
                                                <td>
												<div class="btn-group">
													<button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Action </button>
													<div class="dropdown-menu">
													  <? echo ( "<a class='dropdown-item' href=surat-keluar-update.php?id=$id_suratkeluar title='Update Surat Keluar'> <i class='mdi mdi-email-variant'></i> Update Surat</a>")?> 
													 
													 
													</div>
												</div><!-- /btn-group -->
												
												
												
												</td>
                  </tr>
              
              
				 <?php
       			 $i++;
        			}
    			?>
                                           
                                        </tbody>
                                        <tfoot>
                                            <tr>
                                             <th width="3%">NO</th>
                                                <th width="5%">KODE SURAT</th>
                                                <th width="15%">NO SURAT - TANGGAL</th>
                                                <th width="20%">UNIT KERJA / PENGOLAH</th>
												<th width="20%">ISI SURAT</th>
                                                <th width="20%">TUJUAN SURAT </th>
                                                <th width="5%">ACT</th>
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