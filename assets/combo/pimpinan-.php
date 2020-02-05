<?php
$query0 = "select * from pimpinan order by id_pimpinan";
$hasil0 = mysqli_query($conn,$query0);
$kategori0 = array();
while ($data0=mysqli_fetch_array($hasil0))
{
$kategori0[]=$data0['1'];
$id0[]=$data0['0'];

}
$count=count($kategori0);
?>