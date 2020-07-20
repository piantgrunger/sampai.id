<?PHP
include "assets/include/session-anjab.php";
include "assets/include/koneksi.php";
$id_jabatan = $_GET['id'];


					$cek_data 	= "SELECT * FROM jabatan where id_jabatan='$id_jabatan' ";
					$query_cek	= mysqli_query($conn, $cek_data);
		
        			$data_cek	= mysqli_fetch_array($query_cek);
				
					$jabatan	= $data_cek['jabatan'];

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
                        <h4 class="page-title"><?php echo $jabatan; ?> </h4> &nbsp;&nbsp;<ol class="breadcrumb"> <li class="breadcrumb-item"> <?php echo ( "<a href=anjab-pengalaman-kerja.php?id=$id_jabatan title='Pengalaman Kerja'> <i class='mdi mdi-pencil'> </i> Pengalaman Kerja </a>")?> | <?php echo ( "<a href=anjab-tanggung-jawab.php?id=$id_jabatan title='Input Tanggung Jawab'> <i class='mdi mdi-pencil'> </i> Input Tanggung Jawab</a>")?></li></ol>
                        <div class="ml-auto text-right">
                            <nav aria-label="breadcrumb">
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="#">Jabatan </a></li>
                                    <li class="breadcrumb-item active" aria-current="page">Tugas Pokok</li>
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
                       <?php
                        $sql_00001		= "select SUM(kebutuhan) as jumlah_total from tugas_pokok where id_jabatan='$id_jabatan' ";
                      $sql_kk001 			= mysqli_query($conn, $sql_00001);
                      $data_p1 			  = mysqli_fetch_array($sql_kk001);
                      $jumlah_total	 	= $data_p1['0'];
                      $hasil_bulat    = round($jumlah_total,4);
                       ?>
				   <div class="card card-hover">
                            <div class="box bg-success text-center">
                                <h1 class="font-light text-white"><i class="mdi mdi-human-handsup"></i></h1>
                                <h6 class="text-white">Kebutuhan Pegawai</h6>
								<h4 class="text-white"><?PHP echo $hasil_bulat;?></h4>
                            </div>
                        </div>
                        <div class="card">
                            <form class="form-horizontal" action='assets/include/anjab-input-tugas-pokok.php' method='post' enctype='multipart/form-data'>
                                <div class="card-body">
                               
                             
									
									 <div class="form-group row">
                                        <label for="fname" class="col-sm-3 text-right control-label col-form-label">Uraian Tugas</label>
                                        <div class="col-sm-9">
                                            <textarea required name="uraian" rows="3" data-rule="required" data-msg="Please write something for us" placeholder="Uraian Tugas" class="form-control"></textarea>
											<input name="id_jabatan" type="hidden" value="<?php echo $id_jabatan; ?>">

                                        </div>
										
                                    </div>
									 <div class="form-group row">
                                        <label for="fname" class="col-sm-3 text-right control-label col-form-label">Satuan Hasil Kerja</label>
                                        <div class="col-sm-9">
										    <input type="text" name="satuan" class="form-control" id="fname"  required placeholder="Satuan Hasil Kerja">
                                        </div>
										
                                    </div>
									 <div class="form-group row">
                                        <label for="fname" class="col-sm-3 text-right control-label col-form-label">Jumlah Beban Kerja</label>
                                        <div class="col-sm-9">
										    <input type="text" name="beban" class="form-control" id="fname"  required placeholder="Jumlah Beban Kerja">
                                        </div>
										
                                    </div>
									 <div class="form-group row">
                                        <label for="fname" class="col-sm-3 text-right control-label col-form-label">Waktu Penyelesaian</label>
                                        <div class="col-sm-9">
										    <input type="text" name="waktu" class="form-control" id="fname"  placeholder="Waktu (Dalam Menit)">
                                        </div>
										
                                    </div>
								
									 
                                </div>
								 <div class="border-top">
								
                                    <div class="card-body">
									
									<div class="form-group row">
                                        <label for="fname" class="col-sm-3 text-right control-label col-form-label">Hasil Kerja</label>
                                        <div class="col-sm-9">
                                            <textarea required name="hasil" rows="3" data-rule="required" data-msg="Please write something for us" placeholder="Hasil Kerja" class="form-control"></textarea>
                                        </div>
										
                                    </div>
									
                                    </div>
                                </div>
								
								 <div class="border-top">
								
                                    <div class="card-body">
									
									<div class="form-group row">
                                        <label for="fname" class="col-sm-3 text-right control-label col-form-label">Bahan Kerja</label>
                                        <div class="col-sm-9">
                                            <textarea required name="bahan" rows="2" data-rule="required" data-msg="Please write something for us" placeholder="Bahan Kerja" class="form-control"></textarea>
                                        </div>
										
                                    </div>
									<div class="form-group row">
                                        <label for="fname" class="col-sm-3 text-right control-label col-form-label">Digunakan dalam tugas</label>
                                        <div class="col-sm-9">
                                            <textarea required name="digunakan_1" rows="3" data-rule="required" data-msg="Please write something for us" placeholder="Digunakan dalam tugas" class="form-control"></textarea>
                                        </div>
										
                                    </div>
									
                                    </div>
                                </div>
								
								<div class="border-top">
								
                                    <div class="card-body">
									
									<div class="form-group row">
                                        <label for="fname" class="col-sm-3 text-right control-label col-form-label">Perangkat Kerja</label>
                                        <div class="col-sm-9">
                                            <textarea required name="perangkat" rows="2" data-rule="required" data-msg="Please write something for us" placeholder="Perangkat Kerja" class="form-control"></textarea>
                                        </div>
										
                                    </div>
									<div class="form-group row">
                                        <label for="fname" class="col-sm-3 text-right control-label col-form-label">Digunakan dalam tugas</label>
                                        <div class="col-sm-9">
                                            <textarea required name="digunakan_2" rows="3" data-rule="required" data-msg="Please write something for us" placeholder="Digunakan dalam tugas" class="form-control"></textarea>
                                        </div>
										
                                    </div>
									
                                    </div>
                                </div>
								
								
								
								
								
								
								
								
								
                                <div class="border-top">
								
                                    <div class="card-body">
									
								       <button type="submit" class="btn btn-primary">Input Data</button> 
							
                                       <button type="reset" class="btn btn-danger">Cancel</button>  
                                    </div>
                                </div>
                            </form>
                        </div>
                        
                    <!-- Column -->
                </div>
				<div class="col-md-6">
                        <div class="card">
						 <div class="card-body">
                         <div class="table-responsive">
                         <table id="zero_config" class="table table-striped table-bordered">
                                        <thead>
                                            <tr>
                                                <th width="3%">NO</th>
                                                <th width="42%">URAIAN TUGAS</th>
												<th width="10%">HASIL KERJA</th>
												<th width="10%">BEBAN KERJA</th>
												<th width="10%">WAKTU PENYELESAIAN</th>
												<th width="10%">WAKTU EFEKTIF</th>
												<th width="10%">KEBUTUHAN PEGAWAI</th>

												<th width="5%">Act</th>
                                            </tr>
                                        </thead>
                                        <tbody>
										<?php
				 	$i 			= 1;
              	 	$jml_data1 	= "SELECT * FROM tugas_pokok where id_jabatan='$id_jabatan' ";
					$query		= mysqli_query($conn, $jml_data1);
		
        			while($data = mysqli_fetch_array($query))
					{
					$id_tugas	= $data['id_tugas'];
					$uraian		= $data['uraian'];
					$satuan		= $data['satuan'];	
					$beban		= $data['beban'];	
					$waktu		= $data['waktu'];	
					$kebutuhan	= $data['kebutuhan'];
					?>
				 <tr>
                                                <td><?php echo $i ?></td>
                                                <td><strong><?php echo $uraian; ?></strong></td>
												  <td><strong><?php echo $satuan; ?></strong></td>
												   <td><strong><?php echo $beban; ?></strong></td>
												    <td><strong><?php echo $waktu; ?></strong></td>
													 <td><strong>75.000</strong></td>
													  <td><strong><?php echo $kebutuhan; ?></strong></td>
												<td>
                          												<?php echo ( "<a href=anjab-tugas-pokok-edit.php?id_tugas=$data[0] title='Edit Data'> <i class='mdi mdi-pencil'></i> </a>")?>

												<?php echo ( "<a href=assets/include/anjab-hapus-tugas-pokok.php?id=$data[0] title='Hapus Data'> <i class='mdi mdi-delete-empty'></i> </a>")?>														
												</td>
                  </tr>
              
              
				 <?php
       			 $i++;
        			}
    			?>
                                        </tbody>
                                        <tfoot>
                                            <tr>
                                                <td colspan="8" align="center" > jika ada kesalahan silahkan Edit data atau hapus data dan input kembali.
												
												</td>
                                            </tr>
                                         
                                        </tfoot>
                                    </table>
                           </div>
						   
						     <div class="table-responsive">
                         <table id="zero_config" class="table table-striped table-bordered">
                                        <thead>
                                            <tr>
                                                <th width="3%">NO</th>
												<th width="75%">HASIL KERJA</th>
												<th width="22%">SATUAN KERJA</th>
											
                                            </tr>
                                        </thead>
                                        <tbody>
										<?php
				 	$ii 			= 1;
              	 	$jml_data11 	= "SELECT * FROM tugas_pokok where id_jabatan='$id_jabatan' ";
					$query1		= mysqli_query($conn, $jml_data11);
		
        			while($data1 = mysqli_fetch_array($query1))
					{
					$hasil_		= $data1['hasil'];
					$satuan_	= $data1['satuan'];	
				
					?>
				 <tr>
                                                <td><?php echo $ii++ ?></td>
                                                <td><strong><?php echo $hasil_; ?></strong></td>
												  <td><strong><?php echo $satuan_; ?></strong></td>
												   
                  </tr>
              
              
				 <?php
        			}
    			?>
                                        </tbody>
                                      
                                    </table>
                           </div>
						   
						   <div class="table-responsive">
                         <table id="zero_config" class="table table-striped table-bordered">
                                        <thead>
                                            <tr>
                                                <th width="3%">NO</th>
												<th width="50%">BAHAN KERJA</th>
												<th width="50%">DIGUNAKAN</th>
											
                                            </tr>
                                        </thead>
                                        <tbody>
										<?php
				 	$p 			= 1;
              	 	$jml_data111 	= "SELECT * FROM tugas_pokok where id_jabatan='$id_jabatan' ";
					$query11		= mysqli_query($conn, $jml_data111);
		
        			while($data11 = mysqli_fetch_array($query11))
					{
					$bahan		= $data11['bahan'];
					$digunakan_1	= $data11['digunakan_1'];	
				
					?>
				 <tr>
                                                <td><?php echo $p++ ?></td>
                                                <td><strong><?php echo $bahan; ?></strong></td>
												  <td><strong><?php echo $digunakan_1; ?></strong></td>
												   
                  </tr>
              
              
				 <?php
        			}
    			?>
                                        </tbody>
                                      
                                    </table>
                           </div>
						   
						      <div class="table-responsive">
                         <table id="zero_config" class="table table-striped table-bordered">
                                        <thead>
                                            <tr>
                                                <th width="3%">NO</th>
												<th width="50%">PERANGKAT KERJA</th>
												<th width="50%">DIGUNAKAN</th>
											
                                            </tr>
                                        </thead>
                                        <tbody>
										<?php
				 	$q 			= 1;
              	 	$jml_data1111 	= "SELECT * FROM tugas_pokok where id_jabatan='$id_jabatan' ";
					$query111		= mysqli_query($conn, $jml_data1111);
		
        			while($data111 = mysqli_fetch_array($query111))
					{
					$perangkat		= $data111['perangkat'];
					$digunakan_2	= $data111['digunakan_2'];	
				
					?>
				 <tr>
                                                <td><?php echo $q++ ?></td>
                                                <td><strong><?php echo $perangkat; ?></strong></td>
												  <td><strong><?php echo $digunakan_2; ?></strong></td>
												   
                  </tr>
              
              
				 <?php
        			}
    			?>
                                        </tbody>
                                      
                                    </table>
                           </div>
						   
                        
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