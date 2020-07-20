<?PHP
include("koneksi.php");
$id_pendidikan = $_GET['id'];
					
					$jml_data1 	= "SELECT * FROM pendidikan where id_pendidikan='$id_pendidikan' ";
					$query		= mysqli_query($conn, $jml_data1);
					$data = mysqli_fetch_array($query);
					
					$id_jabatan		= $data['id_jabatan'];





$sql = "delete from pendidikan where id_pendidikan='$id_pendidikan'";
$ceksql=mysqli_query($conn, $sql);
if ($ceksql){
//echo $sql;
header("location:../../anjab-pendidikan-formal.php?id=$id_jabatan");
}else{
header("location:../../Data-Jabatan.php?pesan=2&isi=Gagal Menghapus Menghapus Admin Dengan Username $email  ".mysql_error());
}
?>