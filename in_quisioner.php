<!DOCTYPE html>
<html dir="ltr">

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
  	<?php include "assets/include/koneksi.php"; ?>
	 <?php
  
  				function randomPrefix($length)
				{
				$random	="";
				srand((double)microtime()*1000000);
				
				$data	=  "AbcDE123IJKLMN67QRSTUVWXYZ";
				$data	.= "aBCdefghijkmn123opq45rs67tuv89xyz";
				$data	.= "0FGH45OP89";
				for ($i = 0; $i < $length; $i++)
				{
				$random	.= substr($data,(rand()%(strlen($data))), 1);
				}
				return $random;
				}
				
				
  	$tgl_input		= date("d-m-Y"); 
	$jam			= date("g:i a"); 
	
	$code			= randomPrefix(12);

	$layanan		= $_POST['layanan'];
	$nama			= $_POST['nama'];
	$jk				= $_POST['jk'];
	$pendidikan		= $_POST['pendidikan'];
	$pekerjaan		= $_POST['pekerjaan'];
	$p1				= $_POST['p1'];
	$p2				= $_POST['p2'];
	$p3				= $_POST['p3'];
	$p4				= $_POST['p4'];
	$p5				= $_POST['p5'];
	$p6				= $_POST['p6'];
	$p7				= $_POST['p7'];
	$p8				= $_POST['p8'];
	$p9				= $_POST['p9'];
	
	
					$nama_layanan		= strtoupper($layanan);
					$nama_tamu			= strtoupper($nama);
					
					$sql = 	" INSERT INTO quisioner VALUES(NULL,
								'$tgl_input', 
								'$jam', 
								'$nama_layanan',
								'$nama_tamu',
								'$jk',
								'$pendidikan',
								'$pekerjaan',
								'$p1',
								'$p2',
								'$p3',
								'$p4',
								'$p5',
								'$p6',
								'$p7',
								'$p8',
								'$p9',
								'$code') ";
					$in3 = mysqli_query($conn, $sql);
  
  ?>

    <!-- Custom CSS -->
    <link href="dist/css/style.min.css" rel="stylesheet">
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->
</head>

<body>
    <div class="main-wrapper">
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
        <!-- Preloader - style you can find in spinners.css -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- Login box.scss -->
        <!-- ============================================================== -->
        <div class="error-box">
            <div class="error-body text-center">
                <h1 class="error-title text-danger">OKE</h1>
                <h3 class="text-uppercase error-subtitle">TERIMA KASIH</h3>
                <p class="text-muted m-t-30 m-b-30">Telah Bersedia Mengisi Survey Kami.</p>
                <a href="index.php" class="btn btn-danger btn-rounded waves-effect waves-light m-b-40">Back to home</a> </div>
				
				
				  
        </div>
        <!-- ============================================================== -->
        <!-- Login box.scss -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- Page wrapper scss in scafholding.scss -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- Page wrapper scss in scafholding.scss -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- Right Sidebar -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- Right Sidebar -->
        <!-- ============================================================== -->
    </div>
    <!-- ============================================================== -->
    <!-- All Required js -->
    <!-- ============================================================== -->
    <script src="assets/libs/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap tether Core JavaScript -->
    <script src="assets/libs/popper.js/dist/umd/popper.min.js"></script>
    <script src="assets/libs/bootstrap/dist/js/bootstrap.min.js"></script>
    <!-- ============================================================== -->
    <!-- This page plugin js -->
    <!-- ============================================================== -->
    <script>
    $('[data-toggle="tooltip"]').tooltip();
    $(".preloader").fadeOut();
    </script>
</body>

</html>
