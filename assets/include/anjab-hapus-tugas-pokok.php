<?PHP
include("koneksi.php");
$id_tugas = $_GET['id'];
					
					$jml_data1 	= "SELECT * FROM tugas_pokok where id_tugas='$id_tugas' ";
					$query		= mysqli_query($conn, $jml_data1);
					$data = mysqli_fetch_array($query);
					
					$id_jabatan		= $data['id_jabatan'];





$sql = "delete from tugas_pokok where id_tugas='$id_tugas'";
$ceksql=mysqli_query($conn, $sql);
if ($ceksql){
//echo $sql;
header("location:../../anjab-tugas-pokok.php?id=$id_jabatan");
}else{
header("location:../../Data-Jabatan.php?pesan=2&isi=Gagal Menghapus Menghapus Admin Dengan Username $email  ".mysql_error());
}
?>