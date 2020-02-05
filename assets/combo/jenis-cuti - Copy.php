<?php
$query = "select * from jenis_cuti order by id_cuti";
$hasil = mysqli_query($conn,$query);
$kategori = array();
while ($data=mysqli_fetch_array($hasil))
{
$kategori[]=$data['1'];
$id_cuti[]=$data['0'];

}
$count=count($kategori);
?>