<?php
$query = "select * from tbl_klasifikasi order by kode";
$hasil = mysqli_query($conn,$query);
$kategori = array();
while ($data=mysqli_fetch_array($hasil))
{
$kode[]=$data['1'];
$kategori[]=$data['2'];

$id[]=$data['0'];


}
$count=count($kategori);
?>