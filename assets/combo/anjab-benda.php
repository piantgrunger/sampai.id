<?php
$query = "select * from tb_benda order by id_benda ";
$hasil = mysqli_query($conn,$query);
$jabatan = array();
while ($data=mysqli_fetch_array($hasil))
{
$benda[]=$data['1'];

}
$count=count($benda);
?>