<?PHP
include("koneksi.php");
				
				$allowed_ext	= array('doc', 'docx', 'xls', 'xlsx', 'ppt', 'pptx', 'pdf', 'rar', 'zip', 'jpg', 'jpeg', 'gif', 'png');
				$file_name		= $_FILES['file']['name'];
				$file_ext		= strtolower(end(explode('.', $file_name)));
				$file_size		= $_FILES['file']['size'];
				$file_tmp		= $_FILES['file']['tmp_name'];
				
				$id_pegawai		= $_POST['id_pegawai'];
				$sql_utama		= "select * from pegawai where id_pegawai='$id_pegawai'";
				
				$sql_2 			= mysqli_query($conn, $sql_utama);
				$data_p 		= mysqli_fetch_array($sql_2);
				$id_pegawai 	= $data_p['id_pegawai'];
				$nip 			= $data_p['nip'];
	
				$tgl			= date("d-m-Y, g:i a"); 			
				$tep			=ucfirst(strtolower($t_lahir));
				$tgll			= date("dmY"); 			
				$download 		= md5($nip);
				$na				= $tgl;
				$na				.= $download;
				
				$naaaa 		= md5($na);
	
	
				if(in_array($file_ext, $allowed_ext) === true){
					if($file_size < 3044070){
						$lokasi = 'files/'.$naaaa.'.'.$file_ext;
						move_uploaded_file($file_tmp, $lokasi); //lamp1
						
				
				$sql 	= " update pegawai set 
							lokasi='$lokasi'
							where id_pegawai='$id_pegawai'";
				$sql_u	= mysqli_query($conn, $sql);
				if ($sql_u)
{
echo $sql;
//header("location:../../Data-Pegawai.php?KODE=$id_pegawai&pesan=1&isi=Berhasil Mengedit Foto Pegawai");
}else
{
header("location:../../Data-Pegawai.php?KODE=$id_pegawai&pesan=2&isi=Gagal Mengedit Foto Pegawai   ".mysql_error());
}
}
				}
?>