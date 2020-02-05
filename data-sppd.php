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
                        <h4 class="page-title">Data SPPD </h4>
						
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
                                <h5 class="card-title">Data SPPD Tahun <?php echo $yearsnow; ?> <a href="cetak-data-pegawai.php"><button type="button" class="btn btn-primary btn-sm"><i class='mdi mdi-printer'></i> Cetak Data </button> </a></h5> 
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
                                                <th width="27%">NAMA PEGAWAI / PANGKAT  / NIP / NRTK</th>
                                                <th width="25%">JABATAN / ESSELON </th>
                                                <th width="25%">DESKRIPSI SPPD </th>
                                                <th width="20%">KETERANGAN </th>
                                                <th width="10%">ACT</th>
                                            </tr>
                                        </thead>
                                        <tbody>
										<?php
										$yearsnow	= date("Y");
				 	$i 			= 1;
              	 	$jml_data1 	= "SELECT * FROM sppd where tahun ='$yearsnow' order by tgl_berangkat ";
					$query		= mysqli_query($conn, $jml_data1);
		
        			while($data = mysqli_fetch_array($query))
					{
					$id_sppd			= $data['id_sppd'];
					$id_perjalanan		= $data['id_perjalanan'];
					$id_pegawai			= $data['id_pegawai'];
					$maksud				= $data['maksud'];
					$angkutan			= $data['angkutan'];
					$berangkat			= $data['berangkat'];
					$tujuan				= $data['tujuan'];
					$lama				= $data['lama'];
					$tgl_berangkat		= $data['tgl_berangkat'];
					$tgl_kembali		= $data['tgl_kembali'];
					$tahun				= $data['tahun'];
					$tgl_pengajuan		= $data['tgl_pengajuan'];
					
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
					
					
					
					?>
					<?php
													$sql_000	= "select * from jenis_pd where id_pd='$id_perjalanan'";
													$sql_kk0 	= mysqli_query($conn, $sql_000);
													$data_kk0 	= mysqli_fetch_array($sql_kk0);
													$nama_pd	= $data_kk0['pd'];
					?>
				 	<tr>
                                                <td><?php echo $i ?></td>
                                                <td>
												<strong>
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
												
												<?php echo $namalengkap;?>												</strong>
												<?php
													if ($status_p==1)
													{
													?>
													<br>
													
					 								<a href='#'><?php echo $golongan; ?> <br> <?php echo $tmt; ?></a>
													<?php
													}
													else
													{
													
													}
													?>
												
												
												
												
												
												
													
													<br>
													<?php
												
													if ($status_p==1)
													{
													$nanana = 'NIP.';
													$nipp = $data_kk11['nip'];
													}
													else
													{
													$nanana = 'NRPTT/NRTK.';
													$nipp = $data_kk11['nrtk'];
													}
													?>
													<?php echo $nanana ?> <?php echo $nipp ?>
													<br>
													<?php echo $tempat_lahir;?>, <?php echo $tgl_lahir;?>												</td>
												<td> <?php echo $data_kk11['jabatan'] ?>
													<br>
					 								<a href='#'>( <?php echo $data_kk11['eselon'] ?> )</a>												</td>
                                                <td>
													
					 								<a href='#'><strong><?php echo $nama_pd; ?> </strong></a>
													<br>
													Lama Perjalanan Dinas <strong><?php echo $lama; ?> Hari </strong><br>
													Tanggal Awal <strong> <?php echo $tgl_berangkat; ?> </strong><br>
													Tanggal Akhir <strong> <?php echo $tgl_kembali; ?> </strong>													</td>
                                                <td><a href='#'><strong>Tujuan : <?php echo $tujuan; ?></strong></a>
												<br>
												Maksud <strong> <?php echo $maksud; ?> </strong>
												<br>
												Alat Angkut <strong> <?php echo $angkutan; ?> </strong>												</td>
                                                <td>
												<div class="btn-group">
													<button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Action </button>
													<div class="dropdown-menu">
													  <?= ( "<a class='dropdown-item' href=form-sppd.php?id=$data[0] title='Cetak SPPD'> <i class='mdi mdi-printer'></i> Cetak SPPD</a>")?> 
													  <?= ( "<a class='dropdown-item' href=panjar-sppd.php?id=$data[0] title='Uang Panjar'> <i class='mdi mdi-calculator'></i> Panjar</a>")?>
													  <?= ( "<a class='dropdown-item' href=rampung-sppd.php?id=$data[0] title='SPPD Ranpung'> <i class='mdi mdi-checkbox-marked-outline'></i> SPJ Rampung</a>")?>
													  <?= ( "<a class='dropdown-item' href=riil-sppd.php?id=$data[0] title='SPPD Ranpung'> <i class='mdi mdi-cart-outline'></i> Pengeluaran Riil</a>")?>
													  <?= ( "<a class='dropdown-item' href=form-rampung.php?id=$data[0] title='SPPD Ranpung'> <i class='mdi mdi-printer'></i> Cetak Rampung</a>")?>
													  <?= ( "<a class='dropdown-item' href=form-pengeluaran-riil.php?id=$data[0] title='Pengeluaraan Riil'> <i class='mdi mdi-printer'></i> Cetak Pengeluaran Riil</a>")?>
													  <?= ( "<a class='dropdown-item' href=form-kuitansi.php?id=$data[0] title='Kuitansi'> <i class='mdi mdi-printer'></i> Cetak Kuitansi</a>")?>
													  
													  <?= ( "<a class='dropdown-item' href=update-sppd.php?id=$data[0] title='Edit Data SPPD'> <i class='mdi mdi-pencil'></i> Update SPPD</a>")?> 


													  
													  <?php
													  if ($status=="Proses")
														{
													  ?>
													     <?= ( "<a class='dropdown-item' href=assets/include/Setuju-Cuti.php?id=$id_ambil_cuti title='Form Cuti Disetujui'> <i class='mdi mdi-checkbox-marked-circle-outline'></i> Setuju </a>")?> 
													     <?= ( "<a class='dropdown-item' href=update-cuti.php?id=$id_ambil_cuti title='Edit Data Cuti'> <i class='mdi mdi-pencil'></i> Update Cuti</a>")?> 
													     <div class="dropdown-divider"></div>
													      <?= ( "<a class='dropdown-item' href=assets/include/Hapus-Cuti.php?id=$id_ambil_cuti title='Hapus Data'> <i class='mdi mdi-delete-empty'></i> Hapus Data</a>")?> 
													 <?php
														}
														else
														{
														
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
                                             <th width="3%">NO</th>
                                                <th width="27%">NAMA PEGAWAI / NIP / NRTK</th>
                                                <th width="25%">JABATAN / PANGKAT/GOL</th>
                                                <th width="25%">DESKRIPSI SPPD </th>
                                                <th width="20%">KETERANGAN</th>
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