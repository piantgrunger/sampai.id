<?PHP
include("koneksi.php");
$id_bakat_ = $_GET['id'];
					
					$jml_data1 	= "SELECT * FROM bakat where id_bakat_='$id_bakat_' ";
					$query		= mysqli_query($conn, $jml_data1);
					$data = mysqli_fetch_array($query);
					
					$id_jabatan		= $data['id_jabatan'];





$sql = "delete from bakat where id_bakat_='$id_bakat_'";
$ceksql=mysqli_query($conn, $sql);
if ($ceksql){
//echo $sql;
header("location:../../anjab-bakat.php?id=$id_jabatan");
}else{
header("location:../../Data-Jabatan.php?pesan=2&isi=Gagal Menghapus Menghapus Admin Dengan Username $email  ".mysql_error());
}
?>