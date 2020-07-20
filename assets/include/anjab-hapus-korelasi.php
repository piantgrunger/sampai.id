<?PHP
include("koneksi.php");
$id_korelasi = $_GET['id'];
					
					$jml_data1 	= "SELECT * FROM korelasi where id_korelasi='$id_korelasi' ";
					$query		= mysqli_query($conn, $jml_data1);
					$data = mysqli_fetch_array($query);
					
					$id_jabatan		= $data['id_jabatan'];





$sql = "delete from korelasi where id_korelasi='$id_korelasi'";
$ceksql=mysqli_query($conn, $sql);
if ($ceksql){
//echo $sql;
header("location:../../anjab-korelasi.php?id=$id_jabatan");
}else{
header("location:../../Data-Jabatan.php?pesan=2&isi=Gagal Menghapus Menghapus Admin Dengan Username $email  ".mysql_error());
}
?>