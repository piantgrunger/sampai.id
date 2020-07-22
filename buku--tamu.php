<?php
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
                        <h4 class="page-title">Selamat Datang</h4>
                        <div class="ml-auto text-right">
                            <nav aria-label="breadcrumb">
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="#">Selamat Datang </a></li>
                                    <li class="breadcrumb-item active" aria-current="page">Buku Tamu</li>
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
                            <form class="form-horizontal" action='bukutamu-bkpp.php' method='post' enctype='multipart/form-data'>
                                <div class="card-body">
                                    <h4 class="card-title">Buku Tamu BKPP Kota Banjarbaru</h4>
                                    <div class="form-group row">
                                        <label for="fname" class="col-sm-3 text-right control-label col-form-label">Nama </label>
                                        <div class="col-sm-9">
                                            <input type="text" name="nama" class="form-control" id="fname" maxlength="24" required placeholder="Nama Tamu">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label for="lname" class="col-sm-3 text-right control-label col-form-label">Instansi</label>
                                        <div class="col-sm-9">
                                            <input type="text" name="instansi" class="form-control" id="lname"  required placeholder="Instansi Anda">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label for="lname" class="col-sm-3 text-right control-label col-form-label">Jenis Pelayanan</label>
                                        <div class="col-sm-9">
                                            	<select name="keperluan_1" class="select2 form-control custom-select" required style="width: 100%; height:36px;">
                                           			<option value="">Jenis Pelayanan Yang Anda Butuhkan :</option>
													 <option value="">KEPERLUAN LAINNYA</option>
													 <option>ALIH STATUS KEPEGAWAIAN</option>
													 <option>CUTI</option>
													 <option>DIKLAT / PELATIHAN / BIMBINGAN TEKNIS</option>
													 <option>IJIN BELAJAR / TUGAS BELAJAR</option>
													 <option>KARIS / KARSU / KARPEG</option>
													 <option>KENAIKAN GAJI BERKALA</option>
													 <option>KENAIKAN PANGKAT</option>
													 <option>KONSULTASI DOKUMEN PRESTASI KERJA / SKP</option>
													 <option>MUTASI DAN PENEMPATAN PELAKSANA</option>
													 <option>PENAMBAHAN MASA KERJA</option>
													 <option>PENCANTUMAN GELAR</option>
													 <option>PENEMPATAN, PENGANGKATAN DAN PEMBERHENTIAN DALAM JABATAN ASN</option>
													 <option>PENETAPAN DAN PENGHITUNGAN ANGKA KREDIT</option>
													 <option>PENGANGKATAN KEPALA SEKOLAH</option>
													 <option>PENSIUN / PEMBERHENTIAN</option>
													 <option>PROSES CPNS KE PNS</option>
													 <option>PELAKSANA HARIAN (PLH) / PELAKSANA TUGAS (PLT)</option>
													 <option>TABUNGAN PERUMAHAN (TAPERUM)</option>
													 <option>TASPEN</option>
													 <option>KORPRI</option>
													</select>
                                        </div>
                                    </div>
									<div class="form-group row">
                                        <label for="cono1" class="col-sm-3 text-right control-label col-form-label">Keperluan</label>
                                        <div class="col-sm-9">
                                            <textarea required name="keperluan" rows="5" data-rule="required" data-msg="Please write something for us" placeholder="Keperluan" class="form-control"></textarea>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label for="email1" class="col-sm-3 text-right control-label col-form-label">Petugas</label>
                                        <div class="col-sm-9">
                                            <select class="select2 form-control custom-select" name="id_petugas">
														 <option>Saat ini anda di layani oleh :</option>
														 <?php
															include "assets/combo/petugas.php";
															for ($i=0;$i<$count;$i++)
															{
															echo "<option value='$id[$i]'>$kategori[$i]";
															}
														?>
											</select>  
                                        </div>
                                    </div>
								
									
									
									 
                                </div>
                                <div class="border-top">
                                    <div class="card-body">
                                         <button type="reset" class="btn btn-danger">Batal</button>  <button type="submit" class="btn btn-primary">Terima Kasih Atas Kunjungan Anda</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                        
                    <!-- Column -->
                </div>
				<div class="col-md-6">
                        <div class="card">
						 <div class="card-body">
                           <h3>BKPP Kota Banjarbaru </h3>
              <p>Selamat Datang di Badan Kepegawaian, Pendidikan dan Pelatihan Pemerintah Kota Banjarbaru </p>
              <p>Mohon dapat memberikan data diri anda sebagai salah satu tolak ukur pelayanan kami terhadap anda, semoga pelayanan kami dapat memberikan kenyamanan dan mempermudah proses yang sedang Anda butuhkan. Terimakasih </p>

              <h4>Alamat :</h4>
              Jl. Panglima Batur No. 1 Banjarbaru - Kalimantan Selatan <br>
              <h4>Telephone/Fax : </h4>(0511) 4772495</br>
                        
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