<?php
include "assets/include/session.php";
include "assets/include/koneksi.php";
$yearsnow	= date("Y");
$yearslast	= $yearsnow - 1;
$yearslast2	= $yearsnow - 2;
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
                        <h4 class="page-title">Input Cuti </h4>
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
					<div class="col-md-4">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="card-title m-b-0">Data Pegawai </h4>
                            </div>
                            <div class="comment-widgets scrollable">
						<?php
						$KODE			= $_GET['KODE'];
						$sql			= "select * from pegawai where id_pegawai='$KODE'";
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
			
													$id_gol		= $golongan;
													$sql_00		= "select * from tb_golongan where id_gol='$id_gol'";
													$sql_kk 	= mysqli_query($conn, $sql_00);
													$data_kk 	= mysqli_fetch_array($sql_kk);
													$n_golongan	= $data_kk['golongan'];
				?>
				<?php
						  $query_ 	= "SELECT MAX(no_cuti) as max_id FROM cuti where tahun ='$yearsnow' ORDER BY no_cuti";
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
                    <!-- Column -->
                   <div class="d-flex flex-row comment-row m-t-0">
                                    <div class="p-2"><img  src="assets/include/<?php echo $lokasi; ?>" alt="<?php echo $nama_pegawai; ?>" height="150" width="150" class="rounded-circle" > </div>
                                    <div class="comment-text w-100">
                                        <h6 class="font-medium"><strong><?php echo $nama1 ?>  <?php echo $nama2 ?> <?php echo $nama3 ?> </strong></h6>
                                        <span class="m-b-15 d-block"><?php echo $nanana ?> <?php echo $nipp ?></span>
										<span class="m-b-15 d-block"><?php echo $n_golongan; ?></span>
										<span class="m-b-15 d-block"><?php echo $jabatan; ?></span>
										<span class="m-b-15 d-block"><?php echo $alamat; ?></span>
										<span class="m-b-15 d-block"><?php echo $no_telp; ?></span>
                                      
                                    </div>
                                </div>
								</div>
								</div>
								</div>
						<div class="col-md-4">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="card-title m-b-0">Data Cuti <?php echo $yearslast; ?></h4>
                            </div>
							<?php
							$sql_00001			= "select SUM(lama_cuti) as lama_cuti from cuti where id_pegawai='$KODE' and tahun='$yearslast' and id_cuti='1' and status='Setuju'";
							$sql_kk001 			= mysqli_query($conn, $sql_00001);
							$data_p1 			= mysqli_fetch_array($sql_kk001);
							$data_cuti_1_last 	= $data_p1['0'];
							?>
							<?php
							$sql_00002			= "select SUM(lama_cuti) as lama_cuti from cuti where id_pegawai='$KODE' and tahun='$yearslast' and id_cuti='2' and status='Setuju'";
							$sql_kk002 			= mysqli_query($conn, $sql_00002);
							$data_p2 			= mysqli_fetch_array($sql_kk002);
							$data_cuti_2_last 	= $data_p2['0'];
							?>
							<?php
							$sql_00003			= "select SUM(lama_cuti) as lama_cuti from cuti where id_pegawai='$KODE' and tahun='$yearslast' and id_cuti='3' and status='Setuju'";
							$sql_kk003 			= mysqli_query($conn, $sql_00003);
							$data_p3 			= mysqli_fetch_array($sql_kk003);
							$data_cuti_3_last 	= $data_p3['0'];
							?>
							<?php
							$sql_00004			= "select SUM(lama_cuti) as lama_cuti from cuti where id_pegawai='$KODE' and tahun='$yearslast' and id_cuti='4' and status='Setuju'";
							$sql_kk004 			= mysqli_query($conn, $sql_00004);
							$data_p4 			= mysqli_fetch_array($sql_kk004);
							$data_cuti_4_last 	= $data_p4['0'];
							?>
							<?php
							$sql_00005			= "select SUM(lama_cuti) as lama_cuti from cuti where id_pegawai='$KODE' and tahun='$yearslast' and id_cuti='5' and status='Setuju'";
							$sql_kk005 			= mysqli_query($conn, $sql_00005);
							$data_p5 			= mysqli_fetch_array($sql_kk005);
							$data_cuti_5_last 	= $data_p5['0'];;
							?>
							<?php
							$sql_00006			= "select SUM(lama_cuti) as lama_cuti from cuti where id_pegawai='$KODE' and tahun='$yearslast' and id_cuti='6' and status='Setuju'";
							$sql_kk006 			= mysqli_query($conn, $sql_00006);
							$data_p6 			= mysqli_fetch_array($sql_kk006);
							$data_cuti_6_last 	= $data_p6['0'];
							?>
							<?php
							
							$sql_000011			= "select SUM(lama_cuti) as lama_cuti from cuti where id_pegawai='$KODE' and tahun='$yearslast2' and id_cuti='1' and status='Setuju'";
							$sql_kk0011 		= mysqli_query($conn, $sql_000011);
							$data_p11 			= mysqli_fetch_array($sql_kk0011);
							$data_p111 			= mysqli_num_rows($sql_kk0011);
							$data_cuti_1_last1 	= $data_p11['0'];
							?>
							<?php
							$sql_000021			= "select SUM(lama_cuti) as lama_cuti from cuti where id_pegawai='$KODE' and tahun='$yearslast2' and id_cuti='2' and status='Setuju'";
							$sql_kk0021 		= mysqli_query($conn, $sql_000021);
							$data_p21 			= mysqli_fetch_array($sql_kk0021);
							$data_p211	 		= mysqli_num_rows($sql_kk0021);
							$data_cuti_2_last1 	= $data_p21['0'];
							?>
							<?php
							$sql_000031			= "select SUM(lama_cuti) as lama_cuti from cuti where id_pegawai='$KODE' and tahun='$yearslast2' and id_cuti='3' and status='Setuju'";
							$sql_kk0031 		= mysqli_query($conn, $sql_000031);
							$data_p31 			= mysqli_fetch_array($sql_kk0031);
							$data_p311 			= mysqli_num_rows($sql_kk0031);
							$data_cuti_3_last1 	= $data_p31['0'];
							?>
							<?php
							$sql_000041			= "select SUM(lama_cuti) as lama_cuti from cuti where id_pegawai='$KODE' and tahun='$yearslast2' and id_cuti='4' and status='Setuju'";
							$sql_kk0041 		= mysqli_query($conn, $sql_000041);
							$data_p41 			= mysqli_fetch_array($sql_kk0041);
							$data_p411 			= mysqli_num_rows($sql_kk0041);
							$data_cuti_4_last1 	= $data_p41['0'];
							?>
							<?php
							$sql_000051			= "select SUM(lama_cuti) as lama_cuti from cuti where id_pegawai='$KODE' and tahun='$yearslast2' and id_cuti='5' and status='Setuju'";
							$sql_kk0051 		= mysqli_query($conn, $sql_000051);
							$data_p51 			= mysqli_fetch_array($sql_kk0051);
							$data_p511 			= mysqli_num_rows($sql_kk0051);
							$data_cuti_5_last1 	= $data_p51['0'];;
							?>
							<?php
							$sql_000061			= "select SUM(lama_cuti) as lama_cuti from cuti where id_pegawai='$KODE' and tahun='$yearslast2' and id_cuti='6' and status='Setuju'";
							$sql_kk0061 		= mysqli_query($conn, $sql_000061);
							$data_p61 			= mysqli_fetch_array($sql_kk0061);
							$data_p611 			= mysqli_num_rows($sql_kk0061);
							$data_cuti_6_last1 	= $data_p61['0'];
							?>
                            <table class="table">
                               
                                <tbody>
                                    <tr>
                                        <td><a href="#" class="link">Cuti Tahunan</a></td>
                                        <td><?php echo $data_cuti_1_last; ?></td>
                                    </tr>
                                    <tr>
                                        <td><a href="#" class="link">Cuti Alasan Penting</a></td>
                                        <td><?php echo $data_cuti_2_last; ?></td>
                                    </tr>
                                    <tr>
                                        <td><a href="#" class="link">Cuti Sakit | Keguguran</a></td>
                                        <td><?php echo $data_cuti_3_last; ?> | <?php echo $data_cuti_4_last; ?></td>
                                    </tr>
                                    <tr>
                                        <td><a href="#" class="link">Cuti Melahirkan</a></td>
                                        <td><?php echo $data_cuti_5_last; ?></td>
                                    </tr>
                                    
                              </tbody>
                            </table>
							</div>
						</div>
						<div class="col-md-4">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="card-title m-b-0">Data Cuti <?php echo $yearsnow; ?></h4>
                            </div>
                           <?php
							$sql_00001n			= "select SUM(lama_cuti) as lama_cuti from cuti where id_pegawai='$KODE' and tahun='$yearsnow' and id_cuti='1' and status='Setuju'";
							$sql_kk001n 		= mysqli_query($conn, $sql_00001n);
							$data_p1n 			= mysqli_fetch_array($sql_kk001n);
							$data_cuti_1_lastn 	= $data_p1n['0'];
							?>
							<?php
							$sql_00002n			= "select SUM(lama_cuti) as lama_cuti from cuti where id_pegawai='$KODE' and tahun='$yearsnow' and id_cuti='2' and status='Setuju'";
							$sql_kk002n 		= mysqli_query($conn, $sql_00002n);
							$data_p2n 			= mysqli_fetch_array($sql_kk002n);
							$data_cuti_2_lastn 	= $data_p2n['0'];
							?>
							<?php
							$sql_00003n			= "select SUM(lama_cuti) as lama_cuti from cuti where id_pegawai='$KODE' and tahun='$yearsnow' and id_cuti='3' and status='Setuju'";
							$sql_kk003n 		= mysqli_query($conn, $sql_00003n);
							$data_p3n 			= mysqli_fetch_array($sql_kk003n);
							$data_cuti_3_lastn 	= $data_p3n['0'];
							?>
							<?php
							$sql_00004n			= "select SUM(lama_cuti) as lama_cuti from cuti where id_pegawai='$KODE' and tahun='$yearsnow' and id_cuti='4' and status='Setuju'";
							$sql_kk004n 		= mysqli_query($conn, $sql_00004n);
							$data_p4n 			= mysqli_fetch_array($sql_kk004n);
							$data_cuti_4_lastn 	= $data_p4n['0'];
							?>
							<?php
							$sql_00005n			= "select SUM(lama_cuti) as lama_cuti from cuti where id_pegawai='$KODE' and tahun='$yearsnow' and id_cuti='5' and status='Setuju'";
							$sql_kk005n 		= mysqli_query($conn, $sql_00005n);
							$data_p5n 			= mysqli_fetch_array($sql_kk005n);
							$data_cuti_5_lastn 	= $data_p5n['0'];;
							?>
							<?php
							$sql_00006n			= "select SUM(lama_cuti) as lama_cuti from cuti where id_pegawai='$KODE' and tahun='$yearsnow' and id_cuti='6' and status='Setuju'";
							$sql_kk006n 		= mysqli_query($conn, $sql_00006n);
							$data_p6n 			= mysqli_fetch_array($sql_kk006n);
							$data_cuti_6_lastn 	= $data_p6n['0'];
							?>
							
							<?php
							$cutitahunan2t1hun = 12 - $data_cuti_1_last1;
							$cutitahunan1t1hun = 12 - $data_cuti_1_last;
							if ($cutitahunan2t1hun >= 6)
							{
							$cutitahun2		= 6;
							}
							else
							{
							$cutitahun2		= $cutitahunan2t1hun;
							}
							
							if ($cutitahunan1t1hun >= 6)
							{
							$cutitahun1		= 6;
							}
							else
							{
							$cutitahun1		= $cutitahunan1t1hun;
							}
							
							
							if ($data_cuti_1_last <= 12)
							{
							$tahunan_tahunini = 12 - $data_cuti_1_lastn + $cutitahun1 + $cutitahun2 ;
							}
							else
							{
							$tahunan_tahunini = 12 - $data_cuti_1_lastn;
							}
							?>
                            <table class="table">
                               
                                <tbody>
                                    <tr>
                                        <td><a href="#" class="link">Sisa Cuti Tahunan Tahun <?php echo $yearsnow;?> sebanyak <strong><?php echo $tahunan_tahunini; ?> hari</strong></a></td>
                                        <td><?php echo $data_cuti_1_lastn; ?></td> 
                                    </tr>
                                    <tr>
                                        <td><a href="#" class="link">Cuti Alasan Penting</a></td>
                                        <td><?php echo $data_cuti_2_lastn; ?></td> 
                                    </tr>
                                    <tr>
                                        <td><a href="#" class="link">Cuti Sakit | Keguguran</a></td>
                                        <td><?php echo $data_cuti_3_lastn; ?> | <?php echo $data_cuti_4_lastn; ?></td>
                                    </tr>
                                    <tr>
                                        <td><a href="#" class="link">Cuti Melahirkan</a></td>
                                        <td><?php echo $data_cuti_5_lastn; ?></td> 
                                    </tr>
                                    
                              </tbody>
                            </table>
							</div>
						</div>
                   <div class="col-md-12">
                        <div class="card">
                            <form class="form-horizontal" action='assets/include/input-cuti.php' method='post' enctype='multipart/form-data'>
                                <div class="card-body">
                                    <h4 class="card-title">Pengajuan Cuti </h4>
                                    <div class="form-group row">
                                        <label for="lname" class="col-sm-3 text-right control-label col-form-label">Nomor Cuti</label>
                                        <div class="col-sm-9">
                                            <input type="text" name="-" class="form-control" id="lname" maxlength="2" value="<?php echo  $new_code;?>" disabled="disabled">
                                        </div>
                                    </div>
									<div class="form-group row">
                                        <label for="lname" class="col-sm-3 text-right control-label col-form-label">Cuti Yang Diambil </label>
                                        <div class="col-sm-9">
										<input type="hidden" name="id_pegawai" class="form-control" id="lname" value="<?php echo $KODE; ?>">										
										<input type="hidden" name="tahun" class="form-control" id="lname" value="<?php echo $yearsnow; ?>" >
										<input type="hidden" name="id_atasan" class="form-control" id="lname" value="<?php echo $id_atasan; ?>" >
										<input type="hidden" name="no_cuti" class="form-control" id="lname" value="<?php echo  $new_code;?>" >

										<select name="id_cuti" class="select2 form-control custom-select" required style="width: 100%; height:36px;">
                                           			<?php
													include "assets/combo/jenis-cuti.php";
													for ($i=0;$i<$count;$i++)
													{
													echo "<option value='$id_cuti[$i]'>$kategori[$i]";
													}
													?>
                                        	</select>
                                        </div>
                                    </div>
									<div class="form-group row">
                                        <label for="cono1" class="col-sm-3 text-right control-label col-form-label">Alasan Cuti</label>
                                        <div class="col-sm-9">
                                            <textarea name="alasan" class="form-control"></textarea>
                                        </div>
                                    </div>
									 <div class="form-group row">
                                        <label for="lname" class="col-sm-3 text-right control-label col-form-label">Lama Cuti</label>
                                        <div class="col-sm-9">
                                            <input type="text" name="lama_cuti" class="form-control" id="lname" maxlength="2" placeholder="Lama Cuti">
                                        </div>
                                    </div>
									 <div class="form-group row">
                                        <label for="lname" class="col-sm-3 text-right control-label col-form-label">Tanggal Mulai</label>
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
									 <div class="form-group row">
                                        <label for="lname" class="col-sm-3 text-right control-label col-form-label">Tanggal Akhir</label>
                                        <div class="col-sm-3">
                                            <select name="tgl1" class="select2 form-control custom-select" required style="width: 100%; height:36px;">
                                           		<option selected="selected">Tanggal</option>
												<?php
												for($a=1; $a<=31; $a+=1){
													echo"<option value=$a> $a </option>";
												}
												?>
                                        	</select>
                                        </div>
										<div class="col-sm-3">
                                            <select name="bln1" class="select2 form-control custom-select" required style="width: 100%; height:36px;">
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
                                            <select name="thn1" class="select2 form-control custom-select" required style="width: 100%; height:36px;">
                                           		<option selected="selected">Tahun</option>
												<?php
												for($i=$yearsnow; $i>=2000; $i-=1){
												echo"<option value=$i> $i </option>";
												}
												?>
                                        	</select>
                                        </div>
                                    </div>
									<div class="form-group row">
                                        <label for="cono1" class="col-sm-3 text-right control-label col-form-label">Alamat Cuti</label>
                                        <div class="col-sm-9">
                                            <textarea name="alamat_cuti" class="form-control"></textarea>
                                        </div>
                                    </div>
									 <div class="form-group row">
                                        <label for="lname" class="col-sm-3 text-right control-label col-form-label">No Telp </label>
                                        <div class="col-sm-9">
                                            <input type="text" name="telp" class="form-control" id="lname" maxlength="50" placeholder="No Telp">
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