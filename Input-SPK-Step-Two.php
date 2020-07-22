<?php
include "assets/include/session-sub-bidang.php";
include "assets/include/koneksi.php";
$id_distributor 			= $_POST['id_distributor'];
$jenis			 			= $_POST['jenis'];

$yearsnow					= date("Y");

?>
						<?php
						  $query_ 	= "SELECT MAX(nomor_spk) as max_id FROM spk where tahun ='$yearsnow' ORDER BY nomor_spk";
						  $result_ 	= mysqli_query($conn, $query_);
						  $data_ 	= mysqli_fetch_array($result_);
						  $id_max 	= $data_['max_id'];
						  if ($id_max==0)
						  {
						  $id_awal = 0;
						  $nourut = substr($id_awal, 0, 4); // contoh JRD0004, angka 3 adalah awal pengambilan angka, dan 4 jumlah angka yang diambil
						  $nourut++; 
						  $new_code = sprintf("%04s", $nourut);
						  }
						  else
						  {
						  $id_awal = $id_max;
						  $nourut = substr($id_awal, 0, 4); // contoh JRD0004, angka 3 adalah awal pengambilan angka, dan 4 jumlah angka yang diambil
						  $nourut++; 
						  $new_code = sprintf("%04s", $nourut);
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
                        <h4 class="page-title">Input Surat Perintah Kerja</h4>
                        <div class="ml-auto text-right">
                            <nav aria-label="breadcrumb">
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="#">SPK </a></li>
                                    <li class="breadcrumb-item active" aria-current="page">Input SPK Tahap 2</li>
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
                   <div class="col-md-6">
                        <div class="card">
                            <form class="form-horizontal" action='assets/include/input-spk-step-one.php' method='post' enctype='multipart/form-data'>
                                <div class="card-body">
								
                               <div class="form-group row">
                                        <label for="lname" class="col-sm-3 text-right control-label col-form-label">Klasifikasi</label>
                                        <div class="col-sm-9">
                                           <select class="select2 form-control custom-select" name="id_klasifikasi">
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
                                        <label for="fname" class="col-sm-3 text-right control-label col-form-label">No SPK</label>
                               <div class="col-sm-9">
                                            <input type="text" name="#" class="form-control" id="fname" value="<?php echo $new_code; ?>" disabled="disabled">
											<input type="hidden" name="nomor_spk" class="form-control" id="fname" value="<?php echo $new_code; ?>" >
																						<input type="hidden" name="jenis" class="form-control" id="fname" value="<?php echo $jenis; ?>" >


                                        </div>
										
                                    </div>
									<div class="form-group row">
                                        <label for="cono1" class="col-sm-3 text-right control-label col-form-label">Untuk</label>
                                        <div class="col-sm-9">
                                           	<select name="untuk" class="select2 form-control custom-select" required style="width: 100%; height:36px;">
                                                                                         		<option selected="selected">Pilih Salah Satu</option>

												<option>Belanja Cetak</option>
												<option>Belanja Peralatan dan Perlengkapan Komputer</option>
												<option>Belanja Alat Tulis Kantor (ATK)</option>
												<option>Belanja Perangko, Materai dan Benda Pos Lainnya </option>
												<option>Belanja Obat-Obatan </option>
											
                                        	</select>
                                        </div>
                                    </div>
									<div class="form-group row">
                                        <label for="cono1" class="col-sm-3 text-right control-label col-form-label">Keperluan</label>
                                        <div class="col-sm-9">
                                            <textarea required name="keperluan" rows="5" data-rule="required" data-msg="Please write something for us" placeholder="Keperluan" class="form-control"></textarea>
											<input name="id_distributor" type="hidden" value="<?php echo $id_distributor; ?>">
											<input name="id_admin" type="hidden" value="<?php echo $id_admin; ?>">
											<input name="id_jabatan" type="hidden" value="<?php echo $id_jabatan; ?>">
											
                                        </div>
                                    </div>
									<div class="form-group row">
                                        <label for="lname" class="col-sm-3 text-right control-label col-form-label">Hari Penyerahan</label>
                                        <div class="col-sm-9">
                                            <select name="hari" class="select2 form-control custom-select" required style="width: 100%; height:36px;">
                                           		<option selected="selected">Hari Penyerahan Barang</option>
												<option>Senin</option>
												<option>Selasa</option>
												<option>Rabu</option>
												<option>Kamis</option>
												<option>Jumat</option>
                                        	</select>
                                        </div>
										</div>
                                    <div class="form-group row">
                                        <label for="lname" class="col-sm-3 text-right control-label col-form-label">Tanggal Penyerahan</label>
                                        <div class="col-sm-3">
                                            <select name="tgl" class="select2 form-control custom-select" required style="width: 100%; height:36px;">
                                           		<option selected="selected">Tanggal</option>
												<?php
												for($a=1; $a<=31; $a+=1){
													echo"<option value=$a> $a </option>";
												}
												?>
                                        	</select>
                                        </div>
										<div class="col-sm-3">
                                            <select name="bln" class="select2 form-control custom-select" required style="width: 100%; height:36px;">
                                           		<option selected="selected">Bulan</option>
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
                                           		<option selected="selected">Tahun</option>
												<?php
												for($i=$yearsnow; $i>=2000; $i-=1){
												echo"<option value=$i> $i </option>";
												}
												?>
                                        	</select>
                                        </div>
                                    </div>
								
								
									
									
									 
                                </div>
                                <div class="border-top">
                                    <div class="card-body">
                                        <button type="submit" class="btn btn-primary">Lanjutkan Untuk Memilih Barang</button> <button type="reset" class="btn btn-danger">Cancel</button>  
                                    </div>
                                </div>
                            </form>
                        </div>
                        
                    <!-- Column -->
                </div>
				<div class="col-md-6">
                        <div class="card">
						 <div class="card-body">
                           <h3>Wahai Kisanak, </h3>
              <p><strong>Klasifikasi </strong>sesuai dengan klasifikasi kegiatan anda ya</p>
			  <p><strong>Tanggal Pembuatan SPO/SPK </strong> sesuai dengan anda membuat SPO/SPK yak</p>

           
                        
                    <!-- Column -->
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