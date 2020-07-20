<?PHP
include("koneksi.php");
$id_kelas = $_GET['id'];
					
					$jml_data1 	= "SELECT * FROM kelas_jabatan where id_kelas='$id_kelas' ";
					$query		= mysqli_query($conn, $jml_data1);
					$data = mysqli_fetch_array($query);
					
					$id_jabatan		= $data['id_jabatan'];





$sql = "delete from kelas_jabatan where id_kelas='$id_kelas'";
$ceksql=mysqli_query($conn, $sql);
if ($ceksql){
//echo $sql;
header("location:../../anjab-kelas-jabatan.php?id=$id_jabatan");
}else{
header("location:../../anjab-kelas-jabatan.php?id=$id_jabatan");
}
?>