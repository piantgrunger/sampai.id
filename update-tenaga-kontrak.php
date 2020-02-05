<?php
include "assets/include/session.php";
include "assets/include/koneksi.php";

?>

	<?php
		$KODE			= $_GET['KODE'];
		$sql_utama		= "select * from pegawai where id_pegawai='$KODE'";
		$sql_2 			= mysqli_query($conn, $sql_utama);
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
						$jenis_jabatan	= $data_p['jenis_jabatan'];
						$level			= $data_p['level'];
						$nrtk			= $data_p['nrtk'];
						
						
						
													$id_skpd_	= $unit_kerja;
													$sql_000	= "select * from skpd where id_skpd='$id_skpd_'";
													$sql_kk0 	= mysqli_query($conn, $sql_000);
													$data_kk0 	= mysqli_fetch_array($sql_kk0);
													$nama_skpd_	= $data_kk0['nama_skpd'];
			
													$id_gol		= $golongan;
													$sql_00		= "select * from tb_golongan where id_gol='$id_gol'";
													$sql_kk 	= mysqli_query($conn, $sql_00);
													$data_kk 	= mysqli_fetch_array($sql_kk);
													$n_golongan	= $data_kk['golongan'];
													
													$sql_0000		= "select * from esselon where grade='$level'";
													$sql_kkk 	= mysqli_query($conn, $sql_0000);
													$data_kkk 	= mysqli_fetch_array($sql_kkk);
													$id_esselon_		= $data_kkk['id_esselon'];
													$nama_esselon	= $data_kkk['esselon'];
	
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
	<link rel="stylesheet" type="text/css" href="assets/libs/select2/dist/css/select2.min.css">
    <link rel="stylesheet" type="text/css" href="assets/libs/jquery-minicolors/jquery.minicolors.css">
    <link rel="stylesheet" type="text/css" href="assets/libs/bootstrap-datepicker/dist/css/bootstrap-datepicker.min.css">
    <link rel="stylesheet" type="text/css" href="assets/libs/quill/dist/quill.snow.css">
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
                        <h4 class="page-title">Update Data Pegawai Negeri Sipil</h4>
                        <div class="ml-auto text-right">
                            <nav aria-label="breadcrumb">
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="#">Input Pegawai</a></li>
                                    <li class="breadcrumb-item active" aria-current="page">PNS</li>
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
                    <!-- Column -->
                   <div class="col-md-12">
                        <div class="card">
                            <form class="form-horizontal" action='assets/include/update-tenaga-kontrak.php' method='post' enctype='multipart/form-data'>
                                <div class="card-body">
                                    <h4 class="card-title">Pegawai Negeri Sipil</h4>
                                    <div class="form-group row">
                                        <label for="fname" class="col-sm-3 text-right control-label col-form-label">Nama Lengkap</label>
                                        <div class="col-sm-2">
                                            <input type="text" name="nama1" class="form-control" id="fname"  placeholder="Gelar Depan" 					value="<?php echo $nama1; ?>" >
											<input type="hidden" name="id_pegawai" class="form-control" id="fname"  placeholder="Gelar Depan" 					value="<?php echo $KODE; ?>" >

                                        </div>
										<div class="col-sm-5">
                                            <input type="text" name="nama2" class="form-control" id="fname"  required placeholder="Nama Lengkap" 		value="<?php echo $nama2; ?>">
                                        </div>
										<div class="col-sm-2">
                                            <input type="text" name="nama3" class="form-control" id="fname"  placeholder="Gelar Belakang" 				value="<?php echo $nama3; ?>">
                                        </div>
                                    </div>
                                   
                                    <div class="form-group row">
                                        <label for="lname" class="col-sm-3 text-right control-label col-form-label">NRPP/NRTK Pegawai</label>
                                        <div class="col-sm-9">
                                            <input type="text" name="nip" class="form-control" id="lname" maxlength="18" required 						value="<?php echo $nrtk; ?>">
                                        </div>
                                    </div>
									
                                    <div class="form-group row">
                                        <label for="email1" class="col-sm-3 text-right control-label col-form-label">Jabatan</label>
                                        <div class="col-sm-9">
                                            <input name="jabatan" type="text" class="form-control" id="lname" required placeholder="Jabatan Pegawai"		value="<?php echo $jabatan; ?>">
                                        </div>
                                    </div>
									
								
									<div class="form-group row">
                                        <label for="lname" class="col-sm-3 text-right control-label col-form-label">Unit Kerja/Instansi</label>
                                        <div class="col-sm-9">
                                            <select name="unitkerja" class="select2 form-control custom-select" required style="width: 100%; height:36px;">
											<option value="<?php echo $id_skpd_; ?>"><?php echo $nama_skpd_; ?></option>
                                           			<?php
													include "assets/combo/nama_skpd.php";
													for ($i=0;$i<$count;$i++)
													{
													echo "<option value='$id_skpd[$i]'>$nama_skpd[$i]";
													}
													?>
                                        	</select>
                                        </div>
                                    </div>
									<div class="form-group row">
                                        <label for="lname" class="col-sm-3 text-right control-label col-form-label">Jenis Kelamin</label>
                                        <div class="col-sm-9">
                                            <select name="jk" class="select2 form-control custom-select" required style="width: 100%; height:36px;">
											<option value="<?php echo $kelamin; ?>"><?php echo $kelamin; ?></option>
                                           		<option>Laki-Laki</option>
												<option>Perempuan</option>
                                        	</select>
                                        </div>
                                    </div>
									<div class="form-group row">
                                        <label for="lname" class="col-sm-3 text-right control-label col-form-label">Golongan Darah</label>
                                        <div class="col-sm-9">
                                          <select name="goldarah" class="select2 form-control custom-select" required style="width: 100%; height:36px;">
										  <option value="<?php echo $gol_darah; ?>"><?php echo $gol_darah; ?></option>
                                           		<option>A</option>
												<option>B</option>
												<option>AB</option>
												<option>O</option>
												<option>-</option>
                                        </select>
										<input name="telp" type="hidden" class="form-control" id="lname" required placeholder="No Telp/HP Pegawai" value="-">
                                        </div>
                                    </div>
									 <div class="form-group row">
                                        <label for="cono1" class="col-sm-3 text-right control-label col-form-label">Alamat</label>
                                        <div class="col-sm-9">
                                            <textarea name="alamat" class="form-control"><?php echo $alamat; ?></textarea>
                                        </div>
                                    </div>
									
                                    
                                </div>
                                <div class="border-top">
                                    <div class="card-body">
                                        <button type="submit" class="btn btn-primary">Update Data Pegawai</button> <button type="reset" class="btn btn-danger">Batal Update Data Pegawai</button>  
                                    </div>
                                </div>
                            </form>
                        </div>
                        
                    <!-- Column -->
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
    <!-- This Page JS -->
    <script src="assets/libs/inputmask/dist/min/jquery.inputmask.bundle.min.js"></script>
    <script src="dist/js/pages/mask/mask.init.js"></script>
    <script src="assets/libs/select2/dist/js/select2.full.min.js"></script>
    <script src="assets/libs/select2/dist/js/select2.min.js"></script>
    <script src="assets/libs/jquery-asColor/dist/jquery-asColor.min.js"></script>
    <script src="assets/libs/jquery-asGradient/dist/jquery-asGradient.js"></script>
    <script src="assets/libs/jquery-asColorPicker/dist/jquery-asColorPicker.min.js"></script>
    <script src="assets/libs/jquery-minicolors/jquery.minicolors.min.js"></script>
    <script src="assets/libs/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js"></script>
    <script src="assets/libs/quill/dist/quill.min.js"></script>
    <script>
        //***********************************//
        // For select 2
        //***********************************//
        $(".select2").select2();

        /*colorpicker*/
        $('.demo').each(function() {
        //
        // Dear reader, it's actually very easy to initialize MiniColors. For example:
        //
        //  $(selector).minicolors();
        //
        // The way I've done it below is just for the demo, so don't get confused
        // by it. Also, data- attributes aren't supported at this time...they're
        // only used for this demo.
        //
        $(this).minicolors({
                control: $(this).attr('data-control') || 'hue',
                position: $(this).attr('data-position') || 'bottom left',

                change: function(value, opacity) {
                    if (!value) return;
                    if (opacity) value += ', ' + opacity;
                    if (typeof console === 'object') {
                        console.log(value);
                    }
                },
                theme: 'bootstrap'
            });

        });
        /*datwpicker*/
        jQuery('.mydatepicker').datepicker();
        jQuery('#datepicker-autoclose').datepicker({
            autoclose: true,
            todayHighlight: true
        });
        var quill = new Quill('#editor', {
            theme: 'snow'
        });

    </script>
</body>
</html>