<?php
include "assets/include/session.php";
include "assets/include/koneksi.php";
$yearsnow				= date("Y");
$id_suratkeluar			= $_GET['id'];

$jml_data1_ 			= "SELECT * FROM surat_keluar where id_suratkeluar ='$id_suratkeluar' ";
$query_					= mysqli_query($conn, $jml_data1_);
$data__ 				= mysqli_fetch_array($query_);
$no_agenda				= $data__['no_agenda'];
$id_unitkerja			= $data__['id_unitkerja'];
$id_klasifikasi			= $data__['id_klasifikasi'];
$no_surat				= $data__['no_surat'];
$tgl_surat				= $data__['tgl_surat'];
$perihal				= $data__['perihal'];
$tujuan					= $data__['tujuan'];
$sifat					= $data__['sifat'];



$pecah	= explode(" ", $tgl_surat)	;
$hasil_1	= $pecah[0];
$hasil_2	= $pecah[1];
$hasil_3	= $pecah[2];

					$sql_000	= "select * from tbl_klasifikasi where id_klasifikasi='$id_klasifikasi'";
					$sql_kk0 	= mysqli_query($conn, $sql_000);
					$data_kk0 	= mysqli_fetch_array($sql_kk0);
					$kode_srt		= $data_kk0['kode'];
					
					
					$sql_0001	= "select * from unit_kerja where id_unitkerja='$id_unitkerja'";
					$sql_kk01 	= mysqli_query($conn, $sql_0001);
					$data_kk01 	= mysqli_fetch_array($sql_kk01);
					$nama_unit		= $data_kk01['nama'];
			
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
                        <h4 class="page-title">Input Surat Keluar </h4>
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
                            <form class="form-horizontal" action='assets/include/update-suratkeluar.php' method='post' enctype='multipart/form-data'>
                                <div class="card-body">
                                    <h4 class="card-title">Surat Keluar </h4>
									
									<div class="form-group row">
                                        <label for="fname" class="col-sm-3 text-right control-label col-form-label">No Agenda</label>
                                        <div class="col-sm-9">
                                            <input type="text" name="#" class="form-control" id="fname" value="<?php echo $no_agenda; ?>" disabled="disabled">

											<input type="hidden" name="id_suratkeluar" class="form-control" id="fname" value="<?php echo $id_suratkeluar; ?>" >
											<input type="hidden" name="no_agenda" class="form-control" id="fname" value="<?php echo $no_agenda; ?>" >

                                        </div>
										
                                    </div>
									 <div class="form-group row">
                                        <label for="email1" class="col-sm-3 text-right control-label col-form-label">Kode Surat</label>
                                        <div class="col-sm-9">
                                             <select name="id_klasifikasi" class="select2 form-control custom-select" style="width: 100%; height:36px;">
											  <option value="<?php echo $kode_srt; ?>"><?php echo $kode_srt; ?></option>
                                           			<?php
													include "assets/combo/kode-surat.php";
													for ($i=0;$i<$count;$i++)
													{
													echo "<option value='$id[$i]'>$kode[$i] ---> $kategori[$i]";
													}
													?>
                                        	</select>
                                        </div>
                                    </div>
									<div class="form-group row">
                                        <label for="cono1" class="col-sm-3 text-right control-label col-form-label">Nomor Surat</label>
                                        <div class="col-sm-9">
                                            <input type="text" name="no_surat" class="form-control" id="fname"  value="<?php echo $no_surat; ?>">
                                        </div>
                                    </div>
									
									 <div class="form-group row">
                                        <label for="lname" class="col-sm-3 text-right control-label col-form-label">Tanggal Surat</label>
                                        <div class="col-sm-3">
                                            <select name="tgl" class="select2 form-control custom-select" required style="width: 100%; height:36px;">
                                           		<option value="<?php echo $hasil_1; ?>"><?php echo $hasil_1; ?></option>
												<?php
												for($a=1; $a<=31; $a+=1){
													echo"<option value=$a> $a </option>";
												}
												?>
                                        	</select>
                                        </div>
										<div class="col-sm-3">
                                            <select name="bln" class="select2 form-control custom-select" required style="width: 100%; height:36px;">
											<option value="<?php echo $hasil_2; ?>"><?php echo $hasil_2; ?></option>
                                           		
												<?php
												$bulan=array("Januari","Februari","Maret","April","Mei","Juni","Juli","Agustus","September","Oktober","November","Desember");
												$jlh_bln=count($bulan);
												for($c=0; $c<$jlh_bln; $c+=1){
													echo"<option value=$bulan[$c]> $bulan[$c] </option>";
												}
												?>
                                        	</select>
                                        </div>
										<div class="col-sm-3">
                                            <select name="thn" class="select2 form-control custom-select" required style="width: 100%; height:36px;">
                                           		<option value="<?php echo $hasil_3; ?>"><?php echo $hasil_3; ?></option>
												<?php
												for($i=$yearsnow; $i>=2000; $i-=1){
												echo"<option value=$i> $i </option>";
												}
												?>
                                        	</select>
                                        </div>
                                    </div>
									<div class="form-group row">
                                        <label for="fname" class="col-sm-3 text-right control-label col-form-label">Unit Pengolah</label>
                                        <div class="col-sm-9">
                                            <select name="id_unitkerja" class="select2 form-control custom-select" style="width: 100%; height:36px;">
											<option value="<?php echo $id_unitkerja; ?>"><?php echo $nama_unit; ?></option>
                                           			<?php
													include "assets/combo/unit_org.php";
													for ($i=0;$i<$count;$i++)
													{
													echo "<option value='$id[$i]'>$kategori[$i]";
													}
													?>
                                        	</select>
                                        </div>
										
                                    </div>
									
                                    <div class="form-group row">
                                        <label for="fname" class="col-sm-3 text-right control-label col-form-label">Sifat</label>
                                        <div class="col-sm-9">
                                            <select name="sifat" class="select2 form-control custom-select" required style="width: 100%; height:36px;">
											<option value="<?php echo $sifat; ?>"><?php echo $sifat; ?></option>
                                           		<option>Biasa</option>
												<option>Penting</option>
												<option>Segera</option>
												<option>Rahasia</option>
												<option>-</option>
                                        	</select>
                                        </div>
										
                                    </div>
                                   <div class="form-group row">
                                        <label for="cono1" class="col-sm-3 text-right control-label col-form-label">Perihal</label>
                                        <div class="col-sm-9">
                                            <textarea name="perihal" class="form-control"><?php echo $perihal; ?></textarea>
                                        </div>
                                    </div>
									 <div class="form-group row">
                                        <label for="cono1" class="col-sm-3 text-right control-label col-form-label">Tujuan Surat</label>
                                        <div class="col-sm-9">
                                            <textarea name="tujuan" class="form-control"><?php echo $tujuan; ?></textarea>
                                        </div>
                                    </div>
									
                                  
								
                                    
                                </div>
                                <div class="border-top">
                                    <div class="card-body">
                                        <button type="submit" class="btn btn-primary">Simpan Data Surat Masuk</button> <button type="reset" class="btn btn-danger">Batal Simpan Data</button>  
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