<?PHP
include("koneksi.php");
$id_fungsi = $_GET['id'];
					
					$jml_data1 	= "SELECT * FROM fungsi_pekerjaan where id_fungsi='$id_fungsi' ";
					$query		= mysqli_query($conn, $jml_data1);
					$data = mysqli_fetch_array($query);
					
					$id_jabatan		= $data['id_jabatan'];





$sql = "delete from fungsi_pekerjaan where id_fungsi='$id_fungsi'";
$ceksql=mysqli_query($conn, $sql);
if ($ceksql){
//echo $sql;
header("location:../../anjab-fungsi-pekerjaan.php?id=$id_jabatan");
}else{
header("location:../../Data-Jabatan.php?pesan=2&isi=Gagal Menghapus Menghapus Admin Dengan Username $email  ".mysql_error());
}
?>