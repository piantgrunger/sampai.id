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
				
			
				
				
	$status			= 1; //untuk pegawai negeri sipil		
	$nama1			= $_POST['nama1'];
	$nama2			= $_POST['nama2'];
	$nama3			= $_POST['nama3'];
	$nip			= $_POST['nip'];
	$golongan		= $_POST['golongan'];
	$jabatan		= $_POST['jabatan'];
	$esselon		= $_POST['esselon'];
	$tmt			= $_POST['tmt'];


	$unitkerja		= $_POST['unitkerja'];
	$jk				= $_POST['jk'];
	$goldarah		= $_POST['goldarah'];
	$telp			= $_POST['telp'];
	$alamat			= $_POST['alamat'];
	$id_jabatan		= $_POST['id_jabatan'];
	$id_atasan		= $_POST['id_atasan'];
	$tempat_lahir	= $_POST['ttl'];
	
	$name			=strtoupper($nama2);
	
	$namalengkap	= $nama1;
	$namalengkap	.=' ';
	$namalengkap	.=$name;
	$namalengkap	.=' ';
	$namalengkap	.=$nama3;
	
	
	
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
	
	
				$sql_00a	= "select * from jabatan where id_jabatan='$id_jabatan'";
				$sql_kka 	= mysqli_query($conn, $sql_00a);
				$data_kka 	= mysqli_fetch_array($sql_kka);
				$jns_jabatan= $data_kka['jns_jabatan'];
				$id_esselon	= $data_kka['id_esselon'];
				$jabatan	= $data_kka['jabatan'];
				
	
				$sql_00		= "select * from esselon where id_esselon='$id_esselon'";
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
				
				
				$jabatan_p			=strtoupper($jabatan);
				$alamat_p			=ucfirst(strtolower($alamat));
			
				
				
				
				$test_nip 		= md5($nip);
				
				$na				= $tgl;
				$na				.=$test_nip;
				$na				.='PNS';
				$na				.=$namalengkap;
				
				$kode_xxx 		= md5($na);
				
				
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
						
						$in_q ="INSERT INTO pegawai VALUES(0, 
						'$nama1', 
						'$name', 
						'$nama3', 
						'$name', 
						'$nip',
						'$tmpt_lahir__',
						'$tgl_lahir', 
						'$golongan', 
						'$tmt',
						'$id_jabatan', 
						'$jabatan',
						'$nama_esselon', 
						'$unitkerja', 
						'$jk',
						'$goldarah',
						'$telp',
						'$alamat_p',
						
						'$admin',
						'$tgl',
						'$lokasi',
						'$id_atasan',
						'$grade',
						'$status',
						''
						)";
						$in = mysqli_query($conn, $in_q);
						//echo $in_q;
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