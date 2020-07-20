<?PHP
include "assets/include/koneksi.php";
$yearsnow					= date("Y");

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
                        <h4 class="page-title">Pilih Pelayanan yang anda butuhkan</h4>
                       
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
                                    <div class="col-md-6 col-lg-2 col-xlg-3">
                                        <div class="card card-hover">
                                            <a href="https://wa.me/628115127959?text=Assalamualaikum%20Wr.%20Wb.%20BKPP%20Kota%20Banjarbaru%2C%20Nama%20Saya%20">
											<div class="box bg-cyan text-center">
                                                <h1 class="font-light text-white"><i class="mdi mdi-view-dashboard"></i></h1>
                                                <h6 class="text-white">Cuti</h6>
                                            </div>
											</a>
                                        </div>
                                    </div>
                                    <!-- Column -->
                                    <div class="col-md-6 col-lg-2 col-xlg-3">
										<a href="https://wa.me/6281349759628?text=Assalamualaikum%20Wr.%20Wb.%20BKPP%20Kota%20Banjarbaru%2C%20Nama%20Saya%20">
                                        <div class="card card-hover">
                                            <div class="box bg-success text-center">
                                                <h1 class="font-light text-white"><i class="mdi mdi-chart-areaspline"></i></h1>
                                                <h6 class="text-white">Diklat / Pelatihan / Bimtek</h6>
                                            </div>
										</a>
                                        </div>
                                    </div>
                                     <!-- Column -->
                                    <div class="col-md-6 col-lg-2 col-xlg-3">
										<a href="https://wa.me/6281349759628?text=Assalamualaikum%20Wr.%20Wb.%20BKPP%20Kota%20Banjarbaru%2C%20Nama%20Saya%20">
                                        <div class="card card-hover">
                                            <div class="box bg-warning text-center">
                                                <h1 class="font-light text-white"><i class="mdi mdi-collage"></i></h1>
                                                <h6 class="text-white">Ijin Belajar / Tubel</h6>
                                            </div>
										</a>
                                        </div>
                                    </div>
                                    <!-- Column -->
                                    <div class="col-md-6 col-lg-2 col-xlg-3">
                                         <a href="https://wa.me/628115127959?text=Assalamualaikum%20Wr.%20Wb.%20BKPP%20Kota%20Banjarbaru%2C%20Nama%20Saya%20">
										 <div class="card card-hover">
                                            <div class="box bg-danger text-center">
                                                <h1 class="font-light text-white"><i class="mdi mdi-border-outside"></i></h1>
                                                <h6 class="text-white">Gaji Berkala</h6>
                                            </div>
                                        </div>
										</a>
                                    </div>
                                    <!-- Column -->
                                    <div class="col-md-6 col-lg-2 col-xlg-3">
									 	<a href="https://wa.me/628115127959?text=Assalamualaikum%20Wr.%20Wb.%20BKPP%20Kota%20Banjarbaru%2C%20Nama%20Saya%20">
                                        <div class="card card-hover">
                                            <div class="box bg-info text-center">
                                                <h1 class="font-light text-white"><i class="mdi mdi-arrow-all"></i></h1>
                                                <h6 class="text-white">LHKPN</h6>
                                            </div>
                                        </div>
										</a>
                                    </div>
                                    <!-- Column -->
                                    <!-- Column -->
                                    <div class="col-md-6 col-lg-2 col-xlg-3">
									 <a href="https://wa.me/6285248502467?text=Assalamualaikum%20Wr.%20Wb.%20BKPP%20Kota%20Banjarbaru%2C%20Nama%20Saya%20">
                                        <div class="card card-hover">
                                            <div class="box bg-danger text-center">
                                                <h1 class="font-light text-white"><i class="mdi mdi-receipt"></i></h1>
                                                <h6 class="text-white">Pensiun</h6>
                                            </div>
                                        </div>
										</a>
                                    </div>
                                    <!-- Column -->
                                    <div class="col-md-6 col-lg-2 col-xlg-3">
									<a href="https://wa.me/6285248502467?text=Assalamualaikum%20Wr.%20Wb.%20BKPP%20Kota%20Banjarbaru%2C%20Nama%20Saya%20">
                                        <div class="card card-hover">
                                            <div class="box bg-info text-center">
                                                <h1 class="font-light text-white"><i class="mdi mdi-relative-scale"></i></h1>
                                                <h6 class="text-white">Proses CPNS / PNS</h6>
                                            </div>
                                        </div>
										</a>
                                    </div>
                                     <!-- Column -->
                                    <div class="col-md-6 col-lg-2 col-xlg-3">
									<a href="https://wa.me/6281250513312?text=Assalamualaikum%20Wr.%20Wb.%20BKPP%20Kota%20Banjarbaru%2C%20Nama%20Saya%20">
                                        <div class="card card-hover">
                                            <div class="box bg-cyan text-center">
                                                <h1 class="font-light text-white"><i class="mdi mdi-pencil"></i></h1>
                                                <h6 class="text-white">Kenaikan Pangkat</h6>
                                            </div>
                                        </div>
										</a>
                                    </div>
                                    <!-- Column -->
                                    <div class="col-md-6 col-lg-2 col-xlg-3">
									<a href="https://wa.me/6281250513312?text=Assalamualaikum%20Wr.%20Wb.%20BKPP%20Kota%20Banjarbaru%2C%20Nama%20Saya%20">
                                        <div class="card card-hover">
                                            <div class="box bg-success text-center">
                                                <h1 class="font-light text-white"><i class="mdi mdi-calendar-check"></i></h1>
                                                <h6 class="text-white">Mutasi</h6>
                                            </div>
                                        </div>
										</a>
                                    </div>
                                    <!-- Column -->
                                    <div class="col-md-6 col-lg-2 col-xlg-3">
									<a href="https://wa.me/6285248811115?text=Assalamualaikum%20Wr.%20Wb.%20BKPP%20Kota%20Banjarbaru%2C%20Nama%20Saya%20">
                                        <div class="card card-hover">
                                            <div class="box bg-info text-center">
                                                <h1 class="font-light text-white"><i class="mdi mdi-arrow-all"></i></h1>
                                                <h6 class="text-white">Konsultasi SKP</h6>
                                            </div>
                                        </div>
										</a>
                                    </div>
                                    <!-- Column -->
                                     <!-- Column -->
                                    <div class="col-md-6 col-lg-2 col-xlg-3">
									<a href="https://wa.me/6285248811115?text=Assalamualaikum%20Wr.%20Wb.%20BKPP%20Kota%20Banjarbaru%2C%20Nama%20Saya%20">
                                        <div class="card card-hover">
                                            <div class="box bg-danger text-center">
                                                <h1 class="font-light text-white"><i class="mdi mdi-border-outside"></i></h1>
                                                <h6 class="text-white">Penghitungan Angka Kredit</h6>
                                            </div>
                                        </div>
										</a>
                                    </div>
                                    <!-- Column -->
									
                                    <div class="col-md-6 col-lg-2 col-xlg-3">
									<a href="https://wa.me/6285350096919?text=Assalamualaikum%20Wr.%20Wb.%20BKPP%20Kota%20Banjarbaru%2C%20Nama%20Saya%20">

                                        <div class="card card-hover">
                                            <div class="box bg-warning text-center">
                                                <h1 class="font-light text-white"><i class="mdi mdi-alert"></i></h1>
                                                <h6 class="text-white">Simpeg</h6>
                                            </div>
                                        </div>
										</a>
                                    </div>
                                    <!-- Column -->
                                </div>
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