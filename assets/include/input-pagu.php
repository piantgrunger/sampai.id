<?
include('koneksi.php');

$id_unit_org_sppd 			= $_POST['id_unit_org_sppd'];
$rp 						= $_POST['rp'];
$tahun						= $_POST['tahun'];

$select					= "select * from pagu_sppd where id_unit_sppd='$id_unit_org_sppd' and tahun='$tahun'";
$mysql 					= mysqli_query($conn, $select);
$hit					= mysqli_num_rows($mysql);


if ($hit != 0)
{
header("location:../../Data-SPPD.php?pesan=2&isi=Gagal Menambahkan Jabatan Baru Dengan nama $a1 karena ".mysql_error());

}
else
{
$sql1					= "insert pagu_sppd  values('','$id_unit_org_sppd', '$rp','$tahun' )";
$sql 					= mysqli_query($conn, $sql1);
if ($sql){
//header("location:../../Data-SPPD.php?pesan=1&isi=Berhasil Menambahkan Jabatan Baru Dengan nama $a1");
echo "Sukses";
}else{
header("location:../../Data-SPPD.php?pesan=2&isi=Gagal Menambahkan Jabatan Baru Dengan nama $a1 karena ".mysql_error());
}
}
?>



