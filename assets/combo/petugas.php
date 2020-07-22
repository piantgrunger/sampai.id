<?php
$query = "select * from petugas order by id_petugas";
$hasil = mysqli_query($conn,$query);
$kategori = array();
while ($data=mysqli_fetch_array($hasil))
{
$kategori[]=$data['1'];
$id[]=$data['0'];

}
$count=count($kategori);
?>