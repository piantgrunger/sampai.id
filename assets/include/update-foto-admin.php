<?PHP
include("koneksi.php");
				
				$allowed_ext	= array('doc', 'docx', 'xls', 'xlsx', 'ppt', 'pptx', 'pdf', 'rar', 'zip', 'jpg', 'jpeg', 'gif', 'png');
				$file_name		= $_FILES['file']['name'];
				$file_ext		= strtolower(end(explode('.', $file_name)));
				$file_size		= $_FILES['file']['size'];
				$file_tmp		= $_FILES['file']['tmp_name'];
				
				
				$id_user		= $_POST['id_user'];

	
				$tgl			= date("d-m-Y, g:i a"); 			
				$tep			=ucfirst(strtolower($t_lahir));
				$tgll			= date("dmY"); 			
				$download 		= md5($id_user);
				$na				= $tgl;
				$na				.= $download;
				
				$naaaa 		= md5($na);
	
	
				if(in_array($file_ext, $allowed_ext) === true){
					if($file_size < 3044070){
						$lokasi = 'files/'.$naaaa.'.'.$file_ext;
						move_uploaded_file($file_tmp, $lokasi); //lamp1
						
				
				$sql 	= " update users set 
							lokasi_ad='$lokasi'
							where id='$id_user'";
				$sql_u	= mysqli_query($conn, $sql);
				if ($sql_u)
{
//echo $sql;
header("location:../../Data-Admin.php?KODE=$id_user&pesan=1&isi=Berhasil Mengedit Foto Admin");
}else
{
header("location:../../Data-Admin.php?KODE=$id_user&pesan=2&isi=Gagal Mengedit Foto Admin   ".mysql_error());
}
}
				}
?>