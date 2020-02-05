<?PHP
include "assets/include/session.php";
include "assets/include/koneksi.php";
$yearsnow	= date("Y");
$yearslast	= $yearsnow - 1;
$yearslast2	= $yearsnow - 2;
$id_sppd 			= $_GET['id'];

$jml_data1_ 			= "SELECT * FROM sppd where id_sppd ='$id_sppd' ";
$query_					= mysqli_query($conn, $jml_data1_);
$data__ 				= mysqli_fetch_array($query_);
$id_unit_sppd			= $data__['id_beban_unit'];
$no_sppd_				= $data__['no_sppd'];
$tahun_					= $data__['tahun'];


?>
<?php
function penyebut($nilai) {
		$nilai = abs($nilai);
		$huruf = array("", "satu", "dua", "tiga", "empat", "lima", "enam", "tujuh", "delapan", "sembilan", "sepuluh", "sebelas");
		$temp = "";
		if ($nilai < 12) {
			$temp = " ". $huruf[$nilai];
		} else if ($nilai <20) {
			$temp = penyebut($nilai - 10). " belas";
		} else if ($nilai < 100) {
			$temp = penyebut($nilai/10)." puluh". penyebut($nilai % 10);
		} else if ($nilai < 200) {
			$temp = " seratus" . penyebut($nilai - 100);
		} else if ($nilai < 1000) {
			$temp = penyebut($nilai/100) . " ratus" . penyebut($nilai % 100);
		} else if ($nilai < 2000) {
			$temp = " seribu" . penyebut($nilai - 1000);
		} else if ($nilai < 1000000) {
			$temp = penyebut($nilai/1000) . " ribu" . penyebut($nilai % 1000);
		} else if ($nilai < 1000000000) {
			$temp = penyebut($nilai/1000000) . " juta" . penyebut($nilai % 1000000);
		} else if ($nilai < 1000000000000) {
			$temp = penyebut($nilai/1000000000) . " milyar" . penyebut(fmod($nilai,1000000000));
		} else if ($nilai < 1000000000000000) {
			$temp = penyebut($nilai/1000000000000) . " trilyun" . penyebut(fmod($nilai,1000000000000));
		}     
		return $temp;
	}

	function terbilang($nilai) {
		if($nilai<0) {
			$hasil = "minus ". trim(penyebut($nilai));
		} else {
			$hasil = trim(penyebut($nilai));
		}     		
		return $hasil;
	}
?>
<?php
function rupiah($angka){
	
	$hasil_rupiah = "Rp " . number_format($angka,2,',','.');
	return $hasil_rupiah;
 
}
?>

<?php
function rupiah_2($angka){
	
	$hasil_rupiah =  number_format($angka,2,',','.');
	return $hasil_rupiah;
 
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
                        <h4 class="page-title">Pengeluaran Riil SPPD Nomor : 090/<?php echo $no_sppd_;?>/SPD/UM/<?php echo $tahun_; ?></h4>
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
                            <form class="form-horizontal" action='assets/include/input-riil.php' method='post' enctype='multipart/form-data'>
                                <div class="card-body">
                                    <h4 class="card-title">Pengeluaran Riil Surat Perintah Perjalanan Dinas (SPPD) </h4>
                                   
									
									<div class="form-group row">
                                        <label for="lname" class="col-sm-3 text-right control-label col-form-label">Klasifikasi </label>
                                        <div class="col-sm-9">
										
										 <select name="klasifikasi" class="select2 form-control custom-select" required style="width: 100%; height:36px;">
                                           			<option>Transportasi</option>
													<option>Uang Harian</option>
													<option>Uang Representatif</option>
													<option>Uang Penginapan</option>
                                       	  </select>
										  <input type="hidden" name="id_sppd" class="form-control" id="lname" value="<?php echo $id_sppd; ?>" >

                                        </div>
                                    </div>
									<div class="form-group row">
                                        <label for="cono1" class="col-sm-3 text-right control-label col-form-label">Rincian Biaya</label>
                                        <div class="col-sm-9">
                                            <textarea name="rincian" class="form-control"></textarea>
                                        </div>
                                    </div>
									 <div class="form-group row">
                                        <label for="lname" class="col-sm-3 text-right control-label col-form-label">  Qty</label>
                                        <div class="col-sm-9">
                                            <input type="text" name="qty" class="form-control" maxlength="2" id="lname" placeholder="Qty">
                                        </div>
                                    </div>
									<div class="form-group row">
                                        <label for="lname" class="col-sm-3 text-right control-label col-form-label">Satuan </label>
                                        <div class="col-sm-9">
										
										<select name="satuan" class="select2 form-control custom-select" required style="width: 100%; height:36px;">
                                           			<option> </option>
													<option>Malam</option>
													<option>Hari</option>
													<option>Pulang Pergi</option>
													
                                       	  </select>
                                        </div>
                                    </div>
									 <div class="form-group row">
                                        <label for="lname" class="col-sm-3 text-right control-label col-form-label">  Harga Satuan</label>
                                        <div class="col-sm-9">
                                            <input type="text" name="harga" class="form-control" maxlength="10" id="lname" placeholder="Rp.">
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
			 <div class="card">
                            <div class="card-body">
                                <h5 class="card-title">Pengeluaran Riil Perjalanan Dinas Nomor : 090/<?php echo $no_sppd_;?>/SPD/UM/<?php echo $tahun_; ?> </h5> 
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
                                                <th width="37%">RINCIAN</th>
                                                <th width="15%">QTY</th>
                                                <th width="10%">HARGA</th>
                                                <th width="20%">JUMLAH  </th>
												<th width="5%">AKSI  </th>
                                            </tr>
                                        </thead>
                                        <tbody>
										<?
				 	$i 					= 1;
              	 	$queryku 			= "SELECT * FROM rampung where id_sppd ='$id_sppd' and keterangan='Riil' order by klasifikasi ";
					$mysql_query		= mysqli_query($conn, $queryku);
        			while($data = mysqli_fetch_array($mysql_query))
					{
					$id_rampung				= $data['id_rampung'];
					$klasifikasi			= $data['klasifikasi'];
					$rincian				= $data['rincian'];
					$qty					= $data['qty'];
					$harga					= $data['harga'];
					$satuan					= $data['satuan'];
					$tgl_rampung			= $data['tgl_rampung'];
					$jumlah					= $data['jumlah'];
					$keterangan				= $data['keterangan'];
					//$id_unit_sppd			= $data['id_unit_sppd'];
					
					
					$sql_0011	= "select * from unit_sppd where id_unit_sppd	='$id_unit_sppd'";
					$sql_kk11 	= mysqli_query($conn, $sql_0011);
					$data_kk11 	= mysqli_fetch_array($sql_kk11);
					$nama		= $data_kk11['nama'];
					
					?>
				
				 	<tr>
                                                <td><?php echo $i ?></td>
                                                <td>
												<strong><?php echo $rincian;?>												</strong></td>
												<td><?php echo $qty; ?> <?php echo $satuan; ?></td>
                                                <td><?php echo rupiah_2($harga); ?></td>
                                                <td><?php echo rupiah_2($jumlah); ?></td>
												<td>
												<? echo ( "<a class='dropdown-item' href=assets/include/Hapus-Rampung.php?id=$id_rampung title='Hapus Data'> <i class='mdi mdi-delete-empty'></i></a>")?> 

												</td>
                                          </tr>
              
										 <?php
										 $i++;
											}
										?>
                                        </tbody>
                                        <tfoot>
                                            <tr>
                                             	<th colspan="6">TOTAL 
                                           	    <?php 
												
												$sql_00001			= "select SUM(jumlah) as jumlah_total from rampung where id_sppd='$id_sppd' and keterangan='Riil' ";
												$sql_kk001 			= mysqli_query($conn, $sql_00001);
												$data_p1 			= mysqli_fetch_array($sql_kk001);
												$jumlah_total	 	= $data_p1['0'];
												
												//echo $sql_00001;
																			
												
												echo rupiah_2($jumlah_total); ?></th>
                                            </tr>
                                        </tfoot>
                                    </table>
                                </div>
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