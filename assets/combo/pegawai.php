<?php
$query = "select * from pegawai order by level";
$hasil = mysqli_query($conn,$query);
$kategori = array();
while ($data=mysqli_fetch_array($hasil))
{
$nama[]=$data['2'];
$jabatan[]=$data['11'];

$id[]=$data['0'];

}
$count=count($id);
?>