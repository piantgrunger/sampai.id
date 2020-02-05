<?PHP
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
       <?php include "pages/header-user.php";?>
        <!-- ============================================================== -->
        <!-- End Topbar header -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- Left Sidebar - style you can find in sidebar.scss  -->
        <!-- ============================================================== -->
       <?php include "pages/sidebar-user.php";?>
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
                        <h4 class="page-title">SEBERAPA GREGET PELAYANAN KAMI</h4>
                        <div class="ml-auto text-right">
                            <nav aria-label="breadcrumb">
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="#">Selamat Datang </a></li>
                                    <li class="breadcrumb-item active" aria-current="page">SKM</li>
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
						 <div class="card-body">
             <div class="form-group row">
                     <label for="lname" class="control-label col-lg-6">Bagaimana pendapat Anda tentang kesesuaian persyaratan pelayanan dengan Jenis Pelayanannya di BKPP Kota Banjarbaru</label>
                    <div class="col-lg-6">
					 <select class="select2 form-control custom-select" name="p1" id="p1">
							 <option value="4">SANGAT SESUAI</option> 
							 <option value="3">SESUAI</option>
							 <option value="2">KURANG SESUAI</option>
							 <option value="1">TIDAK SESUAI</option>
							
               		 </select>
                    </div>
                  </div>
				  
				   <div class="form-group row">
                     <label for="lname" class="control-label col-lg-6">Bagaimana Pemahaman Anda tentang kemudahan prosedur pelayanan di BKPP Kota Banjarbaru</label>
                    <div class="col-lg-6">
					 <select class="form-control m-bot15 " name="p2" id="inputSuccess">
							 <option value="4">SANGAT MUDAH</option> 
							 <option value="3">MUDAH</option>
							 <option value="2">KURANG MUDAH</option>
							 <option value="1">TIDAK MUDAH</option>
							
               		 </select>
                    </div>
                  </div>
				   <div class="form-group row">
                    <label class="control-label col-lg-6" for="inputSuccess">Bagaimana pendapat Anda tentang kecepatan waktu dalam memberikan pelayanan di BKPP Kota Banjarbaru</label>
                    <div class="col-lg-6">
					 <select class="form-control m-bot15 " name="p3" id="inputSuccess">
							 <option value="4">SANGAT CEPAT</option> 
							 <option value="3">CEPAT</option>
							 <option value="2">CUKUP CEPAT</option>
							 <option value="1">TIDAK CEPAT</option>
							
               		 </select>
                    </div>
                  </div>
				   <div class="form-group row">
                    <label class="control-label col-lg-6" for="inputSuccess">Bagaimana pendapat Anda tentang kewajaran biaya/tarif dalam pelayanan di BKPP Kota Banjarbaru</label>
                    <div class="col-lg-6">
					 <select class="form-control m-bot15 " name="p4" id="inputSuccess">
							 <option value="4">GRATIS</option> 
							 <option value="3">MURAH</option>
							 <option value="2">CUKUP MAHAL</option>
							 <option value="1">MAHAL</option>
							
               		 </select>
                    </div>
                  </div>
				   <div class="form-group row">
                    <label class="control-label col-lg-6" for="inputSuccess">Bagaimana pendapat Anda tentang kesesuaian persyaratan pelayanan dengan Jenis Pelayanannya di BKPP Kota Banjarbaru</label>
                    <div class="col-lg-6">
					 <select class="form-control m-bot15 " name="p5" id="inputSuccess">
							 <option value="4">SANGAT SESUAI</option> 
							 <option value="3">SESUAI</option>
							 <option value="2">KURANG SESUAI</option>
							 <option value="1">TIDAK SESUAI</option>
							
               		 </select>
                    </div>
                  </div>
				   <div class="form-group row">
                    <label class="control-label col-lg-6" for="inputSuccess">Bagaimana pendapat Anda tentang kompetensi/kemampuan petugas dalam pelayanan di BKPP Kota Banjarbaru</label>
                    <div class="col-lg-6">
					 <select class="form-control m-bot15 " name="p6" id="inputSuccess">
							 <option value="4">SANGAT KOMPETEN</option> 
							 <option value="3">KOMPETEN</option>
							 <option value="2">CUKUP KOMPETEN</option>
							 <option value="1">TIDAK KOMPETEN</option>
							
               		 </select>
                    </div>
            </div>
				   <div class="form-group row">
                    <label class="control-label col-lg-6" for="inputSuccess">Bagaimana pendapat Anda tentang perilaku petugas dalam pelayanan terkait kesopanan dan keramahan di BKPP Kota Banjarbaru</label>
                    <div class="col-lg-6">
					 <select class="form-control m-bot15 " name="p7" id="inputSuccess">
							 <option value="4">SANGAT SOPAN DAN SANGAT RAMAH</option> 
							 <option value="3">SOPAN DAN RAMAH</option>
							 <option value="2">KURANG SOPAN DAN TIDAK RAMAH</option>
							 <option value="1">TIDAK SOPAN DAN TIDAK RAMAH</option>
							
               		 </select>
                    </div>
                  </div>
				   <div class="form-group row">
                    <label class="control-label col-lg-6" for="inputSuccess">Bagaimana pendapat Anda tentang Kualitas Sarana dan Prasarana di BKPP Kota Banjarbaru</label>
                    <div class="col-lg-6">
					 <select class="form-control m-bot15 " name="p8" id="inputSuccess">
							 <option value="4">SANGAT BAIK</option> 
							 <option value="3">BAIK</option>
							 <option value="2">CUKUP</option>
							 <option value="1">BURUK</option>
							
               		 </select>
                    </div>
                  </div>
				   <div class="form-group row">
                    <label class="control-label col-lg-6" for="inputSuccess">Bagaimana pendapat Anda tentang Penanganan pengaduan penggunaan layanan di BKPP Kota Banjarbaru</label>
                    <div class="col-lg-6">
					 <select class="form-control m-bot15 " name="p9" id="inputSuccess">
							 <option value="4">DIKELOLA DENGAN BAIK</option> 
							 <option value="3">BERFUNGSI KURANG MAKSIMAL</option>
							 <option value="2">ADA TETAPI TIDAK BERFUNGSI</option>
							 <option value="1">TIDAK ADA</option>
							
               		 </select>
                    </div>
                  </div>
              <div class="text-center"><button type="reset" class="btn btn-primary btn-lg">Reset</button>  <button type="submit" class="btn btn-primary btn-lg">Klik Disini, Jika Anda telah Selesai. Terima Kasih.</button></div>
                 
               
                 
                </form>
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