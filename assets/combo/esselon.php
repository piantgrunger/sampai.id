<?php
$query = "select * from esselon order by id_esselon";
$hasil = mysqli_query($conn,$query);
$kategori = array();
while ($data=mysqli_fetch_array($hasil))
{
$kategori[]=$data['1'];
$id_esselon[]=$data['0'];

}
$count=count($kategori);
?>