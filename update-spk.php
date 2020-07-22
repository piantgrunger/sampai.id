<?PHP
include "assets/include/session-sub-bidang.php";

include "assets/include/koneksi.php";
$id_spk 					= $_GET['kd'];
$yearsnow					= date("Y");

					$jml_data1_1 				= "SELECT * FROM spk where id_spk='$id_spk' ";
					$query_1					= mysqli_query($conn, $jml_data1_1);
		
        			$data_1						= mysqli_fetch_array($query_1);
					
					$id_distributor_			= $data_1['id_distributor'];
					$id_pejabat_1				= $data_1['id_pejabat'];
					$untuk						= $data_1['untuk'];
					$keperluan					= $data_1['keperluan'];
					$tgl_serah					= $data_1['tgl_serah'];
					$tgl_buat					= $data_1['tgl_buat'];
					$kd_unik					= $data_1['kd_unik'];
					$nomor_spk					= $data_1['nomor_spk'];
					$id_klasifikasi				= $data_1['id_klasifikasi'];
					$hari						= $data_1['hari'];
					
					
					$dataawal				=  $tgl_serah;									
					$pisah					=  explode(" ",$dataawal);											
																
					$tgl_1			= $pisah['0'];
					$bln_1			= $pisah['1'];
					$thn_1			= $pisah['2'];
					
					$dataawal2				=  $tgl_buat;									
					$pisah2					=  explode(" ",$dataawal2);											
																
					$tgl_12			= $pisah2['0'];
					$bln_12			= $pisah2['1'];
					$thn_12			= $pisah2['2'];
					
					//if ($id_pejabat = )
					
					
					$query_distributor 	= "SELECT * FROM distributor where id_distributor='$id_distributor_' ";
					$mysql_distributor	= mysqli_query($conn, $query_distributor);
					$data_dis			= mysqli_fetch_array($mysql_distributor);
					$nama_dis			= $data_dis['distributor'];
					
					$query_surat	 	= "SELECT * FROM  tbl_klasifikasi where id_klasifikasi='$id_klasifikasi' ";
					$mysql_surat		= mysqli_query($conn, $query_surat);
					$data_surat			= mysqli_fetch_array($mysql_surat);
					$klasifikasi_surat	= $data_surat['kode'];
					$nama_klasifikasi	= $data_surat['nama'];
					
					$query_pejabat	 	= "SELECT * FROM pegawai where id_jabatan='$id_pejabat_1' ";
					$mysql_pejabat		= mysqli_query($conn, $query_pejabat);
					$data_pej			= mysqli_fetch_array($mysql_pejabat);
					$nama_pej			= $data_pej['jabatan'];
										
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
                        <h4 class="page-title">Update Surat Perintah Kerja</h4>
                        <div class="ml-auto text-right">
                            <nav aria-label="breadcrumb">
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="#">SPK </a></li>
                                    <li class="breadcrumb-item active" aria-current="page">Update SPK </li>
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
                            <form class="form-horizontal" action='assets/include/update-spk.php' method='post' enctype='multipart/form-data'>
                                <div class="card-body">
								<div class="form-group row">
                                        <label for="fname" class="col-sm-3 text-right control-label col-form-label">Pilih Distributor </label>
                                         <div class="col-sm-9">
                                            <select class="col-sm-9 select2 form-control custom-select" name="id_distributor">
											<option value="<?php echo $id_distributor_; ?>"> <?php  echo $nama_dis;?></option>
														 <?PHP
															include "assets/combo/distributor.php";
															for ($i=0;$i<$count;$i++)
															{
															echo "<option value='$id_distributor[$i]'>$distributor[$i]";
															}
														?>
											</select>  
                                        </div>
                                    </div>
                               <div class="form-group row">
                                        <label for="lname" class="col-sm-3 text-right control-label col-form-label">Klasifikasi</label>
                                        <div class="col-sm-9">
                                           <select class="select2 form-control custom-select" name="id_klasifikasi">
										   <option value="<?php echo $klasifikasi_surat; ?>"> <?php echo $klasifikasi_surat; ?> ---> <?php  echo $nama_klasifikasi;?></option>
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
                                            <input type="text" name="#" class="form-control" id="fname" value="<?php echo $nomor_spk; ?>" disabled="disabled">
											<input type="hidden" name="id_spk" class="form-control" id="fname" value="<?php echo $id_spk; ?>" >

                                        </div>
										
                                    </div>
									<div class="form-group row">
                                        <label for="cono1" class="col-sm-3 text-right control-label col-form-label">Untuk</label>
                                        <div class="col-sm-9">
                                            <textarea required name="untuk" rows="5" data-rule="required" data-msg="Please write something for us" placeholder="Untuk" class="form-control"><?php echo $untuk; ?></textarea>
                                        </div>
                                    </div>
									<div class="form-group row">
                                        <label for="cono1" class="col-sm-3 text-right control-label col-form-label">Keperluan</label>
                                        <div class="col-sm-9">
                                            <textarea required name="keperluan" rows="5" data-rule="required" data-msg="Please write something for us" placeholder="Keperluan" class="form-control"><?php echo $keperluan;?></textarea>
                                        </div>
                                    </div>
									<div class="form-group row">
                                        <label for="lname" class="col-sm-3 text-right control-label col-form-label">Hari Penyerahan</label>
                                        <div class="col-sm-9">
                                            <select name="hari" class="select2 form-control custom-select" required style="width: 100%; height:36px;">
												<option value="<?php echo $hari; ?>"> <?php  echo $hari;?></option>
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
                                           		<option value="<?php echo $tgl_1; ?>" ><?php  echo $tgl_1;?></option>
												<?php
												for($a=1; $a<=31; $a+=1){
													echo"<option value=$a> $a </option>";
												}
												?>
                                        	</select>
                                        </div>
										<div class="col-sm-3">
                                            <select name="bln" class="select2 form-control custom-select" required style="width: 100%; height:36px;">
                                           		<option value="<?php echo $bln_1; ?>" ><?php  echo $bln_1;?></option>
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
                                           		<option value="<?php echo $thn_1; ?>" ><?php  echo $thn_1;?></option>
												<?php
												for($i=$yearsnow; $i>=2000; $i-=1){
												echo"<option value=$i> $i </option>";
												}
												?>
                                        	</select>
                                        </div>
                                    </div>
									 <div class="form-group row">
                                        <label for="lname" class="col-sm-3 text-right control-label col-form-label">Tanggal SPK</label>
                                        <div class="col-sm-3">
                                            <select name="tgl1" class="select2 form-control custom-select" required style="width: 100%; height:36px;">
                                           		<option value="<?php echo $tgl_12;?>" ><?php  echo $tgl_12;?></option>
												<?php
												for($a=1; $a<=31; $a+=1){
													echo"<option value=$a> $a </option>";
												}
												?>
                                        	</select>
                                        </div>
										<div class="col-sm-3">
                                            <select name="bln1" class="select2 form-control custom-select" required style="width: 100%; height:36px;">
                                           		<option value="<?php echo $bln_12; ?>" ><?php  echo $bln_12;?></option>
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
                                            <select name="thn1" class="select2 form-control custom-select" required style="width: 100%; height:36px;">
                                           		<option value="<?php echo $thn_12; ?>" ><?php  echo $thn_12;?></option>
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
                                        <button type="submit" class="btn btn-primary">Update SPK</button> <button type="reset" class="btn btn-danger">Cancel</button>  
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
              <h4><b>Jika Pelayanan Front Office Kami Mengecewakan Anda, Silahkan Hub : </h4> <h4>0822 4478 4747  </b></h4> 
                        
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