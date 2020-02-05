<?php
header ("Content-Type: application/msword");
header ("Expires: 0");
header ("Cache-Control : must-revalidate, post-check=0, pre-check=0");
header("Content-Disposition: attachment; Filename=SaveAsWordDoc.doc");

  	include "assets/include/koneksi.php";
	//include "asset/include/session_admin.php";
//include("cek_session.php");
$localtime		= date("d-m-Y, g:i a"); 


?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
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
  
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->
</head>

<body>
<div class="row-fluid">
      <div class="span12">
	  <h1> LAPORAN  DATA PEGAWAI
	  <BR />
	  PADA PEMERINTAH KABUPATEN KOTABARU
	   <BR />
	   Per   <?PHP echo $localtime; ?>
	  </h1>
	
	  	<table width="100%" border="1">
   <thead>
                                            <tr>
                                                <th width="3%">NO</th>
                                                <th width="27%">NAMA PEGAWAI / PANGKAT  / NIP / NRTK</th>
                                                <th width="25%">JABATAN / ESSELON </th>
                                                <th width="25%">UNIT KERJA</th>
                                                <th width="20%">ALAMAT</th>
                                            </tr>
                                        </thead>
  <?
				 	$i 			= 1;
              	 	$jml_data1 	= "SELECT * FROM pegawai order by level,golongan,status ";
					$query		= mysqli_query($conn, $jml_data1);
		
        			while($data = mysqli_fetch_array($query))
					{
				?>
  <tr>
                                                <td><?php echo $i ?></td>
                                                <td><strong><?php echo $data['1'] ?> <?php echo $data['2'] ?> <?php echo $data['3'] ?></strong>
													<br>
													<?php
													$id_gol		= $data['golongan'];
													$sql_00		= "select * from tb_golongan where id_gol='$id_gol'";
													$sql_kk 	= mysqli_query($conn, $sql_00);
													$data_kk 	= mysqli_fetch_array($sql_kk);
													$golongan	= $data_kk['golongan'];
													?>
					 								<a href='#'><?php echo $golongan; ?> </a>
													<br>
													<?php
													$stts = $data['status'];
													
													if ($stts==1)
													{
													$nanana = 'NIP.';
													$nipp = $data['nip'];
													}
													else
													{
													$nanana = 'NRPTT/NRTK.';
													$nipp = $data['nrtk'];
													}
													?>
														<?php echo $nanana ?> <?php echo $nipp ?>
												</td>
												<td> <?php echo $data['jabatan'] ?>
													<br>
					 								<a href='#'>( <?php echo $data['eselon'] ?> )</a>
												</td>
                                                <td>
													<?php
													$id_skpd	= $data['unit_kerja'];
													$sql_000	= "select * from skpd where id_skpd='$id_skpd'";
													$sql_kk0 	= mysqli_query($conn, $sql_000);
													$data_kk0 	= mysqli_fetch_array($sql_kk0);
													$nama_skpd	= $data_kk0['nama_skpd'];
													?>
					 								<?php echo $nama_skpd; ?> 
													</td>
                                                <td><?php echo $data['alamat'] ?> <br> <a href='#'><?php echo $data['no_telp'] ?></a></td>
                                               
                  </tr>
  <?php
   }
  ?>
</table>

DICETAK PADA : <?PHP echo $localtime;?>
	  </div>
</div>





</body>
</html>
