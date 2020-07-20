<?PHP
include("koneksi.php");
$id_keterampilan = $_GET['id'];
					
					$jml_data1 	= "SELECT * FROM keterampilan where id_keterampilan='$id_keterampilan' ";
					$query		= mysqli_query($conn, $jml_data1);
					$data = mysqli_fetch_array($query);
					
					$id_jabatan		= $data['id_jabatan'];





$sql = "delete from keterampilan where id_keterampilan='$id_keterampilan'";
$ceksql=mysqli_query($conn, $sql);
if ($ceksql){
//echo $sql;
header("location:../../anjab-ketrampilan.php?id=$id_jabatan");
}else{
header("location:../../Data-Jabatan.php?pesan=2&isi=Gagal Menghapus Menghapus Admin Dengan Username $email  ".mysql_error());
}
?>