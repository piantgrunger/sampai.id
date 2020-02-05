<?PHP
include "assets/include/session.php";
include "assets/include/koneksi.php";
$yearsnow	= date("Y");
$yearslast	= $yearsnow - 1;
$yearslast2	= $yearsnow - 2;
$id_sppd		= $_GET['id'];

$jml_data1_ 			= "SELECT * FROM sppd where id_sppd ='$id_sppd' ";
$query_					= mysqli_query($conn, $jml_data1_);
$data__ 				= mysqli_fetch_array($query_);
$id_perjalanan			= $data__['id_perjalanan'];
$id_pegawai				= $data__['id_pegawai'];
$maksud					= $data__['maksud'];
$angkutan				= $data__['angkutan'];
$berangkat				= $data__['berangkat'];
$tujuan					= $data__['tujuan'];
$lama					= $data__['lama'];
$tgl_berangkat			= $data__['tgl_berangkat'];
$tgl_kembali			= $data__['tgl_kembali'];
$pengikut				= $data__['pengikut'];
$anggaran				= $data__['anggaran'];
$keterangan				= $data__['keterangan'];
$id_beban_unit			= $data__['id_beban_unit'];
$no_sppd				= $data__['no_sppd'];
$tahun					= $data__['tahun'];

$pecah	= explode(" ", $tgl_berangkat)	;
$hasil_1	= $pecah[0];
$hasil_2	= $pecah[1];
$hasil_3	= $pecah[2];

$pecah1	= explode(" ", $tgl_kembali)	;
$hasil_11	= $pecah1[0];
$hasil_21	= $pecah1[1];
$hasil_31	= $pecah1[2];

													$sql_00_pd		= "select * from jenis_pd where id_pd='$id_perjalanan'";
													$sql_kk_pd		= mysqli_query($conn, $sql_00_pd);
													$data_kk_pd 	= mysqli_fetch_array($sql_kk_pd);
													$pd_jenis		= $data_kk_pd['pd'];
													
													$sql_00		= "select * from unit_sppd where id_unit_sppd='$id_beban_unit'";
													$sql_kk 	= mysqli_query($conn, $sql_00);
													$data_kk 	= mysqli_fetch_array($sql_kk);
													$n_golongan	= $data_kk['nama'];
?>
	<?
						//$KODE			= $_GET['KODE'];
						$sql			= "select * from pegawai where id_pegawai='$id_pegawai'";
						$sql_2 			= mysqli_query($conn, $sql);
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
						$id_atasan 		= $data_p['id_atasan'];
						
						$lokasi			= $data_p['lokasi'];
						
						
				?>
						<?php
						  $query_ 	= "SELECT MAX(no_sppd) as max_id FROM sppd where tahun ='$yearsnow' ORDER BY no_sppd";
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
				<?php
													$stts = $data_p['status'];
													
													if ($stts==1)
													{
													$nanana = 'NIP.';
													$nipp = $nip;
													}
													else
													{
													$nanana = 'NRPTT/NRTK.';
													$nipp = $nrtk;
													}
				
													//$id_skpd	= $unit_kerja;
													//$sql_000	= "select * from skpd where id_skpd='$id_skpd'";
													//$sql_kk0 	= mysqli_query($conn, $sql_000);
													//$data_kk0 	= mysqli_fetch_array($sql_kk0);
													//$nama_skpd	= $data_kk0['nama_skpd'];
			
												
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
                        <h4 class="page-title">Input SPPD A.n <strong><?php echo $nama1 ?>  <?php echo $nama2 ?> <?php echo $nama3 ?> </strong> <?php echo $nanana ?> <?php echo $nipp ?></h4>
                        <div class="ml-auto text-right">
                            <nav aria-label="breadcrumb">
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="#">Instansi</a></li>
                                    <li class="breadcrumb-item active" aria-current="page">Input Data Instansi</li>
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
                            <form class="form-horizontal" action='assets/include/update-perjalanan-dinas.php' method='post' enctype='multipart/form-data'>
                                <div class="card-body">
                                    <h4 class="card-title">Pengajuan Surat Perintah Perjalanan Dinas (SPPD) </h4>
                                   <div class="form-group row">
                                        <label for="lname" class="col-sm-3 text-right control-label col-form-label">Nomor SPD</label>
                                        <div class="col-sm-9">
                                            <input type="text" name="-" class="form-control" id="lname" maxlength="2" value="090/<?php echo  $no_sppd;?>/SPD/UM/<?php echo $tahun;?>" disabled="disabled">
                                        </div>
                                  </div>
									<div class="form-group row">
                                        <label for="lname" class="col-sm-3 text-right control-label col-form-label">Jenis Perjalanan Dinas </label>
                                        <div class="col-sm-9">
										<input type="hidden" name="id_sppd" class="form-control" id="lname" value="<?php echo $id_sppd; ?>">										
									
										<select name="id_perjalanan" class="select2 form-control custom-select" required style="width: 100%; height:36px;">
										<option value="<?php echo $pd_jenis;?>"><?php echo $pd_jenis;?></option>
                                           			<?
													include "assets/combo/jenis-pd.php";
													for ($i=0;$i<$count;$i++)
													{
													echo "<option value='$id_pd[$i]'>$kategori[$i]";
													}
													?>
                                       	  </select>
                                        </div>
                                    </div>
									<div class="form-group row">
                                        <label for="cono1" class="col-sm-3 text-right control-label col-form-label">Maksud Perjalanan Dinas</label>
                                        <div class="col-sm-9">
                                            <textarea name="maksud" class="form-control"><?php echo  $maksud;?></textarea>
                                        </div>
                                    </div>
									
									<div class="form-group row">
                                        <label for="lname" class="col-sm-3 text-right control-label col-form-label">Angkutan Yang Digunakan</label>
                                        <div class="col-sm-9">
										
										<select name="angkutan" class="select2 form-control custom-select" required style="width: 100%; height:36px;">
                                           			<option value="<?php echo  $angkutan;?>"><?php echo  $angkutan;?></option>
													<option>Pesawat Udara</option>
													<option>Mobil Dinas</option>
													<option>Mobil Pribadi</option>
													<option>Kendaraan Dinas</option>
													<option>Kendaraan Pribadi</option>
													<option>Sepeda Motor</option>
													<option>Angkutan Umum</option>
                                       	  </select>
                                        </div>
                                    </div>
									 <div class="form-group row">
                                        <label for="lname" class="col-sm-3 text-right control-label col-form-label">Tujuan Perjalanan Dinas</label>
                                        <div class="col-sm-9">
                                            <input type="text" name="tujuan" class="form-control" id="lname" value="<?php echo  $tujuan;?>">
                                        </div>
                                    </div>
									<div class="form-group row">
                                        <label for="lname" class="col-sm-3 text-right control-label col-form-label">Lama Perjalanan Dinas</label>
                                        <div class="col-sm-9">
                                            <input type="text" name="lama_pd" class="form-control" id="lname" maxlength="2" placeholder="Lama Perjalanan Dinas" value="<?php echo  $lama;?>">
                                        </div>
                                    </div>
									 <div class="form-group row">
                                        <label for="lname" class="col-sm-3 text-right control-label col-form-label">Tanggal Mulai</label>
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
                                        <label for="lname" class="col-sm-3 text-right control-label col-form-label">Tanggal Akhir</label>
                                        <div class="col-sm-3">
                                            <select name="tgl1" class="select2 form-control custom-select" required style="width: 100%; height:36px;">
                                           		<option value="<?php echo $hasil_11; ?>"><?php echo $hasil_11; ?></option>
												<?php
												for($a=1; $a<=31; $a+=1){
													echo"<option value=$a> $a </option>";
												}
												?>
                                        	</select>
                                        </div>
										<div class="col-sm-3">
                                            <select name="bln1" class="select2 form-control custom-select" required style="width: 100%; height:36px;">
                                           		<option value="<?php echo $hasil_21; ?>"><?php echo $hasil_21; ?></option>
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
                                           		<option value="<?php echo $hasil_31; ?>"><?php echo $hasil_31; ?></option>
												<?php
												for($i=$yearsnow; $i>=2000; $i-=1){
												echo"<option value=$i> $i </option>";
												}
												?>
                                        	</select>
                                        </div>
                                    </div>
									<div class="form-group row">
                                        <label for="cono1" class="col-sm-3 text-right control-label col-form-label">Pengikut</label>
                                        <div class="col-sm-9">
                                            <textarea name="pengikut" class="form-control"><?php echo  $pengikut;?></textarea>
                                        </div>
                                    </div>
									<div class="form-group row">
                                        <label for="cono1" class="col-sm-3 text-right control-label col-form-label">Pembebanan Anggaran</label>
                                        <div class="col-sm-9">
                                            <textarea name="pembebanan" class="form-control"><?php echo  $anggaran;?></textarea>
                                        </div>
                                    </div>
									<div class="form-group row">
                                        <label for="cono1" class="col-sm-3 text-right control-label col-form-label">Keterangan</label>
                                        <div class="col-sm-9">
                                            <textarea name="keterangan" class="form-control"><?php echo  $keterangan;?></textarea>
                                        </div>
                                    </div>
									
									<div class="form-group row">
                                        <label for="cono1" class="col-sm-3 text-right control-label col-form-label">Pagu SPPD</label>
                                        <div class="col-sm-9">
                                            <select name="id_unit_org_sppd" class="select2 form-control custom-select" required style="width: 100%; height:36px;">
											<option value="<?php echo $n_golongan; ?>"><?php echo $n_golongan; ?></option>
                                           			<?
													include "assets/combo/unit_org_sppd.php";
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
                                        <button type="submit" class="btn btn-primary">Simpan Data</button> <button type="reset" class="btn btn-danger">Batal Simpan Data</button>  
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