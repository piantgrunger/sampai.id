<?php
include('koneksi.php');

	$nama1			= $_POST['nama1'];
	$nama2			= $_POST['nama2'];
	$nama3			= $_POST['nama3'];
	$nip			= $_POST['nip'];
	$no_agenda		= $_POST['no_agenda'];
	$kd_kgb			= $_POST['kd_kgb'];
	$unit_kerja		= $_POST['unit_kerja'];
	$tmt			= $_POST['tmt'];


	$tmt_2			= $_POST['tmt_2'];
	
	
	$name			=strtoupper($nama2);
	
	$namalengkap	= $nama1;
	$namalengkap	.=' ';
	$namalengkap	.=$name;
	$namalengkap	.=' ';
	$namalengkap	.=$nama3;
	
	$tgl			= $_POST['tgl'];
	$bln			= $_POST['bln'];
	$thn			= $_POST['thn'];
	
	$tgl_surat 				= $tgl;
	$tgl_surat 				.= ' ';
	$tgl_surat 				.= $bln;
	$tgl_surat 				.= ' ';
	$tgl_surat 				.= $thn;
	
	
	
				$nip_thn		= substr($nip,0,4);
				$nip_bln		= substr($nip,4,2);
				$nip_tgl		= substr($nip,6,2);
				
				$tgl_lahir 		= $nip_tgl;
				$tgl_lahir 		.= '-';
				$tgl_lahir 		.= $nip_bln;
				$tgl_lahir 		.= '-';
				$tgl_lahir 		.= $nip_thn;
				
				$tmpt_lahir_		= strtolower($tempat_lahir);
				$tmpt_lahir__		= ucwords($tmpt_lahir_);
	
	
				
			
	

				//$nama			= $_POST['nama'];
				//$dari			= $_POST['dari'];
				//$kepada		= $_POST['kepada'];
				//$admin		= $_POST['admin'];
				$tgl			= date("d-m-Y, g:i a"); 
				$year			= date("d-m-Y");
				$year1			= date("Y");
				$tgll			= date("dmY"); 
			
				
				
				$unitkerja			=strtoupper($unit_kerja);
				$alamat_p			=ucfirst(strtolower($alamat));
			
				
				
				
				$test_nip 		= md5($nip);
				
				$na				= $tgl;
				$na				.=$test_nip;
				$na				.='PNS';
				$na				.=$namalengkap;
				
				$kode_xxx 		= md5($na);
				
				
				$tep=ucfirst(strtolower($t_lahir));
				//$a11 = strtoupper($nama_kantor);

					
		
						
						$in_q ="INSERT INTO kgb VALUES(NULL,
						'$kd_kgb',
						'$no_agenda', 
						'$tgl_surat',
						'$nama1', 
						'$name', 
						'$nama3', 
						'$nip',
						'$unitkerja',
						'$tmt', 
						'$tmt_2', 
						'$year1',
						'$admin'
						)";
						$in = mysqli_query($conn, $in_q);
						//echo $in_q;
						if($in){
//echo '<META HTTP-EQUIV="Refresh" Content="0; URL=index.php">';
//echo $sql_00 ;
						header("location:../../Data-KGB.php?pesan=1&isi=Berhasil Menambahkan Pegawai Baru Dengan Nama $name");
						}else{
						
						//header("location:../../Data-KGB.php?pesan=2&isi=Gagal Menambahkan Data Pegawai Baru Dengan Nama $name  ");

							//echo '<div class="error">ERROR: Gagal upload file!</div>';
							echo $in_q;
						}
					
?>