<?PHP
include("koneksi.php");
$id = $_GET['KODE'];

		
				$sql_00		= "select * from users where id='$id'";
				$sql_kk 	= mysqli_query($conn, $sql_00);
				$data_kk 	= mysqli_fetch_array($sql_kk);
				$email		= $data_kk['email'];

$sql = "delete from users where id='$id'";
$ceksql=mysqli_query($conn, $sql);
if ($ceksql){
//echo $sql;
header("location:../../Data-Admin.php?pesan=1&isi=Berhasil Menghapus Admin Dengan Username $email ");
}else{
header("location:../../Data-Admin.php?pesan=2&isi=Gagal Menghapus Menghapus Admin Dengan Username $email  ".mysql_error());
}
?>