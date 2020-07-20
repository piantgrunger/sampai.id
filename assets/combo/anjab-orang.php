<?php
$query = "select * from tb_orang order by id_orang ";
$hasil = mysqli_query($conn,$query);
$jabatan = array();
while ($data=mysqli_fetch_array($hasil))
{
$orang[]=$data['1'];

}
$count=count($orang);
?>