<?PHP
include("koneksi.php");
$id_diklat = $_GET['id'];
					
					$jml_data1 	= "SELECT * FROM diklat_teknis where id_diklat_='$id_diklat' ";
					$query		= mysqli_query($conn, $jml_data1);
					$data = mysqli_fetch_array($query);
					
					$id_jabatan		= $data['id_jabatan'];





$sql = "delete from diklat_teknis where id_diklat_='$id_diklat'";
$ceksql=mysqli_query($conn, $sql);
if ($ceksql){
//echo $sql;
header("location:../../anjab-diklat-teknis.php?id=$id_jabatan");
}else{
header("location:../../Data-Jabatan.php?pesan=2&isi=Gagal Menghapus Menghapus Admin Dengan Username $email  ".mysql_error());
}
?>