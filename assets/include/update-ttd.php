<?PHP
include("koneksi.php");
				
				$allowed_ext	= array('png');
				$file_name		= $_FILES['file']['name'];
				$file_ext		= strtolower(end(explode('.', $file_name)));
				$file_size		= $_FILES['file']['size'];
				$file_tmp		= $_FILES['file']['tmp_name'];
				
				
				$id_user		= $_POST['id_user'];

	
				$tgl			= date("d-m-Y, g:i a"); 			
							
				$download 		= md5($tgl);
				$na				= $tgl;
				$na				.= $download;
				
				$naaaa 		= md5($na);
	
	
				if(in_array($file_ext, $allowed_ext) === true){
					if($file_size < 3044070){
						$lokasi = 'files/'.$naaaa.'.'.$file_ext;
						move_uploaded_file($file_tmp, $lokasi); //lamp1
						
				
				$sql 	= " update ttd_bupati set 
							lokasi='$lokasi'
							where id_ttd='1'";
				$sql_u	= mysqli_query($conn, $sql);
				if ($sql_u)
{
//echo $sql;
header("location:../../admin.php");
}else
{
header("location:../../admin.php".mysql_error());
}
}
				}
?>