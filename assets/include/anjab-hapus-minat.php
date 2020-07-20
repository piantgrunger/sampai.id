<?PHP
include("koneksi.php");
$id_minat = $_GET['id'];
					
					$jml_data1 	= "SELECT * FROM minat where id_minat='$id_minat' ";
					$query		= mysqli_query($conn, $jml_data1);
					$data = mysqli_fetch_array($query);
					
					$id_jabatan		= $data['id_jabatan'];





$sql = "delete from minat where id_minat='$id_minat'";
$ceksql=mysqli_query($conn, $sql);
if ($ceksql){
//echo $sql;
header("location:../../anjab-minat.php?id=$id_jabatan");
}else{
header("location:../../Data-Jabatan.php?pesan=2&isi=Gagal Menghapus Menghapus Admin Dengan Username $email  ".mysql_error());
}
?>