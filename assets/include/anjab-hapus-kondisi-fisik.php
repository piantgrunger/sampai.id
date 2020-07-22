<?PHP
include("koneksi.php");
$id_kondisi = $_GET['id'];
					
					$jml_data1 	= "SELECT * FROM kondisi_fisik where id_kondisi='$id_kondisi' ";
					$query		= mysqli_query($conn, $jml_data1);
					$data = mysqli_fetch_array($query);
					
					$id_jabatan		= $data['id_jabatan'];





$sql = "delete from kondisi_fisik where id_kondisi='$id_kondisi'";
$ceksql=mysqli_query($conn, $sql);
if ($ceksql){
//echo $sql;
header("location:../../anjab-kondisi-fisik.php?id=$id_jabatan");
}else{
header("location:../../Data-Jabatan.php?pesan=2&isi=Gagal Menghapus Menghapus Admin Dengan Username $email  ".mysql_error());
}
?>