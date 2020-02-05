<?php
include('koneksi.php');
if (isset($_POST['nama2'])){
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
				
			
				
				
	$status			= 2; //untuk pegawai negeri sipil		
	$nama1			= $_POST['nama1'];
	$nama2			= $_POST['nama2'];
	$nama3			= $_POST['nama3'];
	$nip			= $_POST['nip'];
	//$golongan		= $_POST['golongan'];
	$jabatan		= $_POST['jabatan'];
	//$esselon		= $_POST['esselon'];

	$unitkerja		= $_POST['unitkerja'];
	$jk				= $_POST['jk'];
	$goldarah		= $_POST['goldarah'];
	$telp			= $_POST['telp'];
	$alamat			= $_POST['alamat'];
	$jenis_jab		= $_POST['jenis_jab'];
	
	$name			=strtoupper($nama2);
	
	$namalengkap	= $nama1;
	$namalengkap	.=' ';
	$namalengkap	.=$name;
	$namalengkap	.=' ';
	$namalengkap	.=$nama3;
	
	
				$sql_00		= "select * from esselon where id_esselon='$esselon'";
				$sql_kk 	= mysqli_query($conn, $sql_00);
				$data_kk 	= mysqli_fetch_array($sql_kk);
				$grade		= $data_kk['grade'];
				$nama_esselon	= $data_kk['esselon'];
				
			
	

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
				
				
				$name				=strtoupper($nama);
				$name_p				=strtoupper($nama_p);
				$jabatan_p			=strtoupper($jabatan);
				$alamat_p			=ucfirst(strtolower($alamat));
			
				
				
				
				$test_nip 		= md5($nip);
				
				
				$na				= $tgl;
				$na				.=$test_nip;
				$na				.='NONPNS';
				$na				.=$nama2;
				
				$kode_xxx 		= md5($na);
				
				$naa				= $tgl;
				$naa				.=$test_nip;
				
				$kode_x 		= md5($naa);
				
				
				$tep=ucfirst(strtolower($t_lahir));
				//$a11 = strtoupper($nama_kantor);

					
				if(in_array($file_ext, $allowed_ext) === true){
					if($file_size < 3044070){
						$lokasi = 'files/'.$kode_xxx.'.'.$file_ext;
						move_uploaded_file($file_tmp, $lokasi); //lamp1
						
						//$lokasi1 = 'files/'.$ni.'.'.$file_ext;
						//move_uploaded_file($file_tmp1, $lokasi1); //lamp2
						
						//$lokasi2 = 'files/'.$ne.'.'.$file_ext;
						//move_uploaded_file($file_tmp2, $lokasi2); //lamp3
						
						//$lokasi3 = 'files/'.$nu.'.'.$file_ext;
						//move_uploaded_file($file_tmp3, $lokasi3); //lamp4
						
						//$lokasi4 = 'files/'.$nu.'.'.$file_ext;
						//move_uploaded_file($file_tmp4, $lokasi4); //lamp5
											
						//$insert_history	= "insert into history values ('','$download','$dari_u','$kepada','-','Surat Diterima','N','$tgl')";
						//$insert_h = mysql_query($insert_history);
						
						$in_q ="INSERT INTO pegawai VALUES(NULL, 
						'$nama1', 
						'$name', 
						'$nama3', 
						'$name',
						'$kode_x', 
						'', 
						'$jabatan_p', 
						'', 
						'$unitkerja', 
						'$jk',
						'$goldarah',
						'$telp',
						'$alamat_p',
						
						'$admin',
						'$tgl',
						'$lokasi',
						'',
						'99',
						'$status',
						'$nip'
						)";
						$in = mysqli_query($conn, $in_q);
						if($in){
//echo '<META HTTP-EQUIV="Refresh" Content="0; URL=index.php">';
//echo $sql_00 ;
						header("location:../../Data-Pegawai.php?pesan=1&isi=Berhasil Menambahkan Pegawai Baru Dengan Nama $name");
						}else{
						
						header("location:../../Data-Pegawai.php?pesan=2&isi=Gagal Menambahkan Data Pegawai Baru Dengan Nama $name  ");

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