<?PHP
include("koneksi.php");
$id_unit = $_GET['id'];
					
					$jml_data1 	= "SELECT * FROM tb_unitkerja where id_unit='$id_unit' ";
					$query		= mysqli_query($conn, $jml_data1);
					$data = mysqli_fetch_array($query);
					
					$id_jabatan		= $data['id_jabatan'];





$sql = "delete from tb_unitkerja where id_unit='$id_unit'";
$ceksql=mysqli_query($conn, $sql);
if ($ceksql){
//echo $sql;
header("location:../../anjab-unit-kerja.php?id=$id_jabatan");
}else{
header("location:../../anjab-unit-kerja.php?id=$id_jabatan");
}
?>