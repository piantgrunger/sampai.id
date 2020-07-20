<?PHP
include("koneksi.php");
$id_tanggungjawab = $_GET['id'];
					
					$jml_data1 	= "SELECT * FROM tanggungjawab where id_tanggungjawab='$id_tanggungjawab' ";
					$query		= mysqli_query($conn, $jml_data1);
					$data = mysqli_fetch_array($query);
					
					$id_jabatan		= $data['id_jabatan'];





$sql = "delete from tanggungjawab where id_tanggungjawab='$id_tanggungjawab'";
$ceksql=mysqli_query($conn, $sql);
if ($ceksql){
//echo $sql;
header("location:../../anjab-tanggung-jawab.php?id=$id_jabatan");
}else{
header("location:../../Data-Jabatan.php?pesan=2&isi=Gagal Menghapus Menghapus Admin Dengan Username $email  ".mysql_error());
}
?>