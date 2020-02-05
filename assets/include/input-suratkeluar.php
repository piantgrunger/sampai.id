<?php
include('koneksi.php');
if (isset($_POST['no_surat'])){
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
				
			
				
				
	$status			= 1; //untuk pegawai negeri sipil		
	$no_agenda		= $_POST['no_agenda'];
	$asal_surat		= $_POST['asal_surat'];
	$tgl			= $_POST['tgl'];
	$bln			= $_POST['bln'];
	$thn			= $_POST['thn'];
	$id_klasifikasi	= $_POST['kd_surat'];
	$no_surat		= $_POST['no_surat'];
	$sifat			= $_POST['sifat'];
	$tujuan			= $_POST['tujuan'];
	$id_unitkerja	= $_POST['id_unitkerja'];
	
	
	$sql_cuti 			="select * from tbl_klasifikasi where id_klasifikasi='$kd_surat' ";
	$mysql_cuti 		= mysqli_query ($conn,$sql_cuti);
	$fetch_sql_cuti		= mysqli_fetch_array($mysql_cuti);
	
	$kode_srt			= $fetch_sql_cuti['kode'];
	$nama				= $fetch_sql_cuti['nama'];


	$perihal		= $_POST['perihal'];
	$name			=strtolower($perihal);
	$a1 		    = ucwords($name);

	
	$tgl_surat 				= $tgl;
	$tgl_surat 				.= ' ';
	$tgl_surat 				.= $bln;
	$tgl_surat 				.= ' ';
	$tgl_surat 				.= $thn;
	
	
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
																
					$tgl_input = $t_now;
					$tgl_input .= " ";
					$tgl_input .= $bulan_lantik;
					$tgl_input .= " ";
					$tgl_input .= $y_now;
				
			
	

				//$nama			= $_POST['nama'];
				//$dari			= $_POST['dari'];
				//$kepada		= $_POST['kepada'];
				//$admin		= $_POST['admin'];
				$tgl			= date("d-m-Y, g:i a"); 
				$year			= date("d-m-Y");
				$year1			= date("Y");
				$tgll			= date("dmY"); 
				//$perihal		= $_POST['perihal'];
				//$sifat			= $_POST['sifat'];
				//$lampiran		= $_POST['lampiran'];
				//$tanggalan		= $cc;
				//$jenis			= $_POST['jenis'];
				//$arsip			= $_POST['arsip'];
				//$keterangan		= $_POST['keterangan'];
				
				
			
				
				$na				= $tgl;
				$na				.=$tgl_surat;
				$na				.=$kd_surat;
				
				$kode_xxx 		= md5($na);
				
				
				$tep=ucfirst(strtolower($t_lahir));
				//$a11 = strtoupper($nama_kantor);

					
				if(in_array($file_ext, $allowed_ext) === true){
					if($file_size < 3044070){
						$lokasi = 'files/'.$kode_xxx.'.'.$file_ext;
						move_uploaded_file($file_tmp, $lokasi); //lamp1
						
					
						
						$in_q ="INSERT INTO surat_keluar VALUES(NULL, 
						'$no_agenda', 
						'$id_unitkerja', 
						'$id_klasifikasi',
						'$no_surat', 
						'$tgl_surat', 
						'$a1',
						'$tujuan',
						'$tgl_input', 
						'$admin', 
						'$y_now',
						'$sifat', 
						'$lokasi'
						)";
						$in = mysqli_query($conn, $in_q);
						//echo $in_q;
						if($in){
//echo '<META HTTP-EQUIV="Refresh" Content="0; URL=index.php">';
						header("location:../../Data-Surat-Keluar.php?pesan=1&isi=Berhasil Menambahkan Pegawai Baru Dengan Nama $name");
						//echo $in_q ;

						}else{
						
						header("location:../../Data-Surat-Keluar.php?pesan=2&isi=Gagal Menambahkan Data Pegawai Baru Dengan Nama $name  ");
						//echo $sql_00 ;

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