<?PHP
include("koneksi.php");
$id = $_GET['id'];

		
$sql = "delete from belanja_barang where id_spk='$id'";
$ceksql=mysqli_query($conn, $sql);

$sql = "delete from spk where id_spk='$id'";
$ceksql=mysqli_query($conn, $sql);
if ($ceksql){
//echo $sql;
header("location:../../Data-SPK.php");
}else{
echo $sql;
echo "Gagal";

//header("location:../../Data-SPPD.php?pesan=2&isi=Gagal  ".mysql_error());
}
?>