<?php
$query = "select * from surat_rekomendasi where status ='Aktif'";
$hasil = mysqli_query($conn,$query);
$kategori = array();
while ($data=mysqli_fetch_array($hasil))
{
$kategori[]=$data['1'];
$id[]=$data['0'];
$tgl_surat[]=$data['2'];


}
$count=count($kategori);
?>