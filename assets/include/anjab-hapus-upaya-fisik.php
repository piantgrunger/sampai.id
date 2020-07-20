<?PHP
include("koneksi.php");
$id_upaya = $_GET['id'];
					
					$jml_data1 	= "SELECT * FROM upaya_fisik where id_upaya='$id_upaya' ";
					$query		= mysqli_query($conn, $jml_data1);
					$data = mysqli_fetch_array($query);
					
					$id_jabatan		= $data['id_jabatan'];





$sql = "delete from upaya_fisik where id_upaya='$id_upaya'";
$ceksql=mysqli_query($conn, $sql);
if ($ceksql){
//echo $sql;
header("location:../../anjab-upaya-fisik.php?id=$id_jabatan");
}else{
header("location:../../Data-Jabatan.php?pesan=2&isi=Gagal Menghapus Menghapus Admin Dengan Username $email  ".mysql_error());
}
?>