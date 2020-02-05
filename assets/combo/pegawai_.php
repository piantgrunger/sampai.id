<?
$query = "select * from pegawai order by level";
$hasil = mysqli_query($conn,$query);
$kategori = array();
while ($data=mysqli_fetch_array($hasil))
{
$nama_[]=$data['2'];
$jabatan_[]=$data['11'];

$id_pegawai_[]=$data['0'];

}
$count=count($id_pegawai_);
?>