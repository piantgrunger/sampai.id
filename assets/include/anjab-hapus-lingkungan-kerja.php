<?PHP
include("koneksi.php");
$id_lingkungan = $_GET['id'];
					
					$jml_data1 	= "SELECT * FROM lingkungan_kerja where id_lingkungan='$id_lingkungan' ";
					$query		= mysqli_query($conn, $jml_data1);
					$data = mysqli_fetch_array($query);
					
					$id_jabatan		= $data['id_jabatan'];





$sql = "delete from lingkungan_kerja where id_lingkungan='$id_lingkungan'";
$ceksql=mysqli_query($conn, $sql);
if ($ceksql){
//echo $sql;
header("location:../../anjab-lingkungan-kerja.php?id=$id_jabatan");
}else{
header("location:../../Data-Jabatan.php?pesan=2&isi=Gagal Menghapus Menghapus Admin Dengan Username $email  ".mysql_error());
}
?>