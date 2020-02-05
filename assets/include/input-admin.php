<?
include('koneksi.php');
if (isset($_POST['nama'])){ 
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
				
			
				
				$email 			= $_POST['email'];
				$nama 			= $_POST['nama'];
				$kategori 		= $_POST['kategori'];
				$id_jabatan 		= $_POST['id_jabatan'];
				
				$password 		= md5($_POST['pswd']);
	

				$tgl			= date("d-m-Y, g:i a"); 
				$year			= date("d-m-Y");
				$year1			= date("Y");
				$tgll			= date("dmY"); 
			
			
				
				$nip			= $nip1;
				$nip			.= " ";
				$nip			.= $nip2;
				$nip			.= " ";
				$nip			.= $nip3;
				$nip			.= " ";
				$nip			.= $nip4;
				
			
				
				$download 		= md5($_POST['nama']);
				$na				= $tgll;
				$na				.= $download;
				$na				.= 'Admin';
				
				$kodexxx 		= md5($na);
				
				$a11			=strtoupper($nama);

					
				if(in_array($file_ext, $allowed_ext) === true){
					if($file_size < 3044070){
						$lokasi = 'files/'.$kodexxx.'.'.$file_ext;
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
						
						$in_q ="INSERT INTO users VALUES(NULL, 
						'$a11', 
						'$password', 
						'$email', 
						'-', 
						'-', 
						'-', 
						'$lokasi', 
						'$kategori',
						'$id_jabatan',
						'$tgl'
						
						)";
						$in = mysqli_query($conn, $in_q);
						if($in){
//echo '<META HTTP-EQUIV="Refresh" Content="0; URL=index.php">';
//echo $sql_00 ;
						header("location:../../Data-Admin.php?pesan=1&isi=Berhasil Menambahkan Admin Baru Dengan nama $a11");
						}else{
						
						header("location:../../Data-Admin.php?pesan=2&isi=Gagal Menambahkan Data Admin Dengan nama $a11  ".mysql_error());

							//echo '<div class="error">ERROR: Gagal upload file!</div>';
							//echo $in_q;
						}
					}
					else{
						header("location:../admin.php?pesan=1&isi=ERROR: Besar ukuran file (file size) maksimal 1 Mb ".mysql_error());
						//echo '<div class="error">ERROR: Besar ukuran file (file size) maksimal 1 Mb!</div>';
					}
				}else{
echo $in_q;
				}
}
?>