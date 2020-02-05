
<?
include('koneksi.php');
if (isset($_POST['asal_surat'])){
				$allowed_ext	= array('doc', 'docx', 'xls', 'xlsx', 'ppt', 'pptx', 'pdf', 'rar', 'zip', 'jpg', 'jpeg', 'gif', 'png');
				$file_name		= $_FILES['file']['name'];
				$file_ext		= strtolower(end(explode('.', $file_name)));
				$file_size		= $_FILES['file']['size'];
				$file_tmp		= $_FILES['file']['tmp_name'];
				
				$allowed_ext1	= array('doc', 'docx', 'xls', 'xlsx', 'ppt', 'pptx', 'pdf', 'rar', 'zip', 'jpg', 'jpeg', 'gif', 'png');
				$file_name1		= $_FILES['file1']['name'];
				$file_ext1		= strtolower(end(explode('.', $file_name1)));
				$file_size1		= $_FILES['file1']['size'];
				$file_tmp1		= $_FILES['file1']['tmp_name'];
				
			
				
				
	//$status			= 1; //untuk pegawai negeri sipil		
	$no_agenda		= $_POST['no_agenda'];
	$asal_surat		= $_POST['asal_surat'];
	$tgl			= $_POST['tgl'];
	$bln			= $_POST['bln'];
	$thn			= $_POST['thn'];
	$kd_surat		= $_POST['kd_surat'];
	$no_surat		= $_POST['no_surat'];
	$sifat			= $_POST['sifat'];


	$perihal		= $_POST['perihal'];
	
	
	$name			=strtolower($perihal);
	$a1 		    = ucwords($name);

	
	$tgl_awal 				= $tgl;
	$tgl_awal 				.= ' ';
	$tgl_awal 				.= $bln;
	$tgl_awal 				.= ' ';
	$tgl_awal 				.= $thn;
	
			
				$tgl			= date("d-m-Y, g:i a"); 
				$year			= date("d-m-Y");
				$year1			= date("Y");
				$tgll			= date("dmY"); 
			
				

				$test_nip 		= md5($tgl_awal);
				$na				= $tgl;
				$na				.=$test_nip;

				$kode_xxx 		= md5($na);
				$t_now					= date("d");
				$bln_lantik				= date("m");
				$y_now					= date("Y");


					if ($bln_lantik =='01')
					{
					$bulan_lantik	='Januari';
					}
					elseif ($bln_lantik =='02')
					{
					$bulan_lantik	='Februari';
					}
					elseif ($bln_lantik =='03')
					{
					$bulan_lantik	='Maret';
					}
					elseif ($bln_lantik =='04')
					{
					$bulan_lantik	='April';
					}
					elseif ($bln_lantik =='05')
					{
					$bulan_lantik	='Mei';
					}
					elseif ($bln_lantik =='06')
					{
					$bulan_lantik	='Juni';
					}
					elseif ($bln_lantik =='07')
					{
					$bulan_lantik	='Juli';
					}
					elseif ($bln_lantik =='08')
					{
					$bulan_lantik	='Agustus';
					}
					elseif ($bln_lantik =='09')
					{
					$bulan_lantik	='September';
					}
					elseif ($bln_lantik =='10')
					{
					$bulan_lantik	='Oktober';
					}
					elseif ($bln_lantik =='11')
					{
					$bulan_lantik	='November';
					}
					else
					{
					$bulan_lantik	='Desember';
					}										
																
					$tgl_ajuan = $t_now;
					$tgl_ajuan .= " ";
					$tgl_ajuan .= $bulan_lantik;
					$tgl_ajuan .= " ";
					$tgl_ajuan .= $y_now;

				
			

					
				if(in_array($file_ext, $allowed_ext) === true){
					if($file_size < 3044070){
						$lokasi = 'files/'.$kode_xxx.'.'.$file_ext;
						move_uploaded_file($file_tmp, $lokasi); //lamp1
						
					
						
						$in_q ="INSERT INTO surat_masuk VALUES(NULL, 
						'$no_agenda', 
						'$asal_surat', 
						'$tgl_awal', 
						'$kd_surat', 
						'$no_surat',
						'$sifat',
						'$a1', 
						'$tgl_ajuan', 
						'$lokasi',
						'$admin', 
						'$y_now'
						)";
						$in = mysqli_query($conn, $in_q);
						//echo $in_q;
						if($in){
						header("location:../../Data-Surat-Masuk.php?pesan=1&isi=Berhasil Menambahkan Pegawai Baru Dengan Nama $name");
						}else{
						header("location:../../Data-Surat-Masuk.php?pesan=2&isi=Gagal Menambahkan Data Pegawai Baru Dengan Nama $name  ");

							//echo '<div class="error">ERROR: Gagal upload file!</div>';
							//echo $in_q;
						}
					}
					else{
						header("location:../../Data-Pegawai.php?pesan=2&isi=ERROR: Besar ukuran file (file size) maksimal 1 Mb ");
						//echo '<div class="error">ERROR: Besar ukuran file (file size) maksimal 1 Mb!</div>';
					}
				}else{
echo $in_q;
				}
}
?>





