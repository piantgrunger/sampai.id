<?
include('koneksi.php');

	$radio			= $_POST['radio'];
	
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
			
				
				
				
			
						
						$in_q ="INSERT INTO puas VALUES(NULL,
						'$radio', 
						'$tgl',
						'$year1'
					
						)";
						$in = mysqli_query($conn, $in_q);
						//echo $in_q;
						if($in){
//echo '<META HTTP-EQUIV="Refresh" Content="0; URL=index.php">';
//echo $sql_00 ;
						header("location:../../Apakah-Anda-Puas.php");
						}else{
						
						//header("location:../../Data-KGB.php?pesan=2&isi=Gagal Menambahkan Data Pegawai Baru Dengan Nama $name  ");

							//echo '<div class="error">ERROR: Gagal upload file!</div>';
							echo $in_q;
						}
					
?>